from flask import Flask, render_template, request, redirect, session, send_file
import mysql.connector
import csv
import io
from config import db_config

app = Flask(__name__)
app.secret_key = "supersecretkey"

# -------------------------------------------------------
# HARDCODED USERS
# -------------------------------------------------------
users = {
    "admin": {"password": "admin123", "role": "admin"},
    "faculty": {"password": "faculty123", "role": "faculty"},
    "student": {"password": "student123", "role": "student"},
}

# -------------------------------------------------------
# CONNECT TO DATABASE
# -------------------------------------------------------
def get_db():
    return mysql.connector.connect(**db_config)

# -------------------------------------------------------
# LOGIN SYSTEM
# -------------------------------------------------------
@app.route("/", methods=["GET", "POST"])
def login():
    if request.method == "POST":
        username = request.form["username"]
        password = request.form["password"]

        if username in users and users[username]["password"] == password:
            session["username"] = username
            session["role"] = users[username]["role"]

            if session["role"] == "admin":
                return redirect("/admin")
            elif session["role"] == "faculty":
                return redirect("/faculty")
            else:
                return redirect("/select_student_id")

        return render_template("login.html", error="Invalid credentials")

    return render_template("login.html")

# -------------------------------------------------------
# LOGOUT
# -------------------------------------------------------
@app.route("/logout")
def logout():
    session.clear()
    return redirect("/")

# -------------------------------------------------------
# ADMIN DASHBOARD
# -------------------------------------------------------
@app.route("/admin")
def admin_dashboard():
    if session.get("role") != "admin":
        return redirect("/")
    return render_template("admin_dashboard.html")

# -------------------------------------------------------
# STUDENT LIST + SEARCH
# -------------------------------------------------------
@app.route("/students")
def students():
    if session.get("role") not in ["admin", "faculty"]:
        return redirect("/")

    search = request.args.get("search", "")
    db = get_db()
    cursor = db.cursor(dictionary=True)

    if search:
        cursor.execute("""
            SELECT s.student_id, s.name, p.program_name, sp.specialization_name
            FROM Student s
            LEFT JOIN Program p ON s.program_id = p.program_id
            LEFT JOIN Specialization sp ON s.specialization_id = sp.specialization_id
            WHERE s.name LIKE %s
        """, (f"%{search}%",))
    else:
        cursor.execute("""
            SELECT s.student_id, s.name, p.program_name, sp.specialization_name
            FROM Student s
            LEFT JOIN Program p ON s.program_id = p.program_id
            LEFT JOIN Specialization sp ON s.specialization_id = sp.specialization_id
        """)

    students = cursor.fetchall()
    return render_template("students.html", students=students, search=search)

# -------------------------------------------------------
# ADD STUDENT
# -------------------------------------------------------
@app.route("/add_student", methods=["GET", "POST"])
def add_student():
    if session.get("role") != "admin":
        return redirect("/")

    db = get_db()
    cursor = db.cursor(dictionary=True)

    # Load all programs
    cursor.execute("SELECT program_id, program_name FROM Program")
    programs = cursor.fetchall()

    # Load all specializations
    cursor.execute("SELECT specialization_id, specialization_name, program_id FROM Specialization")
    specializations = cursor.fetchall()

    if request.method == "POST":
        name = request.form["name"]
        email = request.form["email"]
        phone = request.form["phone"]
        address = request.form["address"]
        admission_year = request.form["admission_year"]

        # ------------------------------
        # Validate Program ID
        # ------------------------------
        program_id = request.form.get("program_id")
        if not program_id or program_id.strip() == "":
            return render_template(
                "add_student.html",
                programs=programs,
                specializations=specializations,
                error="Please select a program."
            )

        program_id = int(program_id)

        # ------------------------------
        # Validate Specialization (optional)
        # ------------------------------
        specialization_id = request.form.get("specialization_id")
        if specialization_id and specialization_id.strip() != "":
            specialization_id = int(specialization_id)
        else:
            specialization_id = None

        # ------------------------------
        # INSERT STUDENT
        # ------------------------------
        cursor.execute("""
            INSERT INTO Student (name, email, phone, address, admission_year, program_id, specialization_id)
            VALUES (%s, %s, %s, %s, %s, %s, %s)
        """, (name, email, phone, address, admission_year, program_id, specialization_id))

        db.commit()

        # Get student_id
        student_id = cursor.lastrowid

        # ------------------------------
        # AUTO-REGISTER CORE COURSES
        # ------------------------------
        cursor.execute("""
            SELECT course_id FROM ProgramCourse WHERE program_id = %s
        """, (program_id,))
        core_courses = cursor.fetchall()

        for c in core_courses:
            cursor.execute("""
                INSERT INTO CourseRegistration (student_id, course_id)
                VALUES (%s, %s)
            """, (student_id, c["course_id"]))

        # ------------------------------
        # AUTO-REGISTER SPECIALIZATION COURSES
        # ------------------------------
        if specialization_id:
            cursor.execute("""
                SELECT course_id FROM SpecializationCourse WHERE specialization_id = %s
            """, (specialization_id,))
            spec_courses = cursor.fetchall()

            for sc in spec_courses:
                cursor.execute("""
                    INSERT INTO CourseRegistration (student_id, course_id)
                    VALUES (%s, %s)
                """, (student_id, sc["course_id"]))

        db.commit()

        return render_template(
            "add_student.html",
            success=True,
            programs=programs,
            specializations=specializations
        )

    return render_template("add_student.html", programs=programs, specializations=specializations)

# -------------------------------------------------------
# EDIT STUDENT
# -------------------------------------------------------
@app.route("/edit_student", methods=["GET", "POST"])
def edit_student():
    if session.get("role") != "admin":
        return redirect("/")

    student_id = request.args.get("id")
    db = get_db()
    cursor = db.cursor(dictionary=True)

    cursor.execute("SELECT * FROM Student WHERE student_id=%s", (student_id,))
    student = cursor.fetchone()

    cursor.execute("SELECT program_id, program_name FROM Program")
    programs = cursor.fetchall()

    cursor.execute("SELECT specialization_id, specialization_name FROM Specialization")
    specializations = cursor.fetchall()

    if request.method == "POST":
        name = request.form["name"]
        email = request.form["email"]
        phone = request.form["phone"]
        address = request.form["address"]
        admission_year = request.form["admission_year"]
        program_id = request.form["program_id"]
        specialization_id = request.form.get("specialization_id") or None

        cursor.execute("""
            UPDATE Student 
            SET name=%s, email=%s, phone=%s, address=%s, admission_year=%s, program_id=%s, specialization_id=%s
            WHERE student_id=%s
        """, (name, email, phone, address, admission_year, program_id, specialization_id, student_id))

        db.commit()
        return redirect("/students")

    return render_template("edit_student.html", student=student, programs=programs, specializations=specializations)

# -------------------------------------------------------
# DELETE STUDENT
# -------------------------------------------------------
@app.route("/delete_student")
def delete_student():
    if session.get("role") != "admin":
        return redirect("/")

    student_id = request.args.get("id")

    db = get_db()
    cursor = db.cursor()
    cursor.execute("DELETE FROM Student WHERE student_id=%s", (student_id,))
    db.commit()

    return redirect("/students")

# -------------------------------------------------------
# VIEW STUDENT DETAILS
# -------------------------------------------------------
@app.route("/view_student")
def view_student():
    if session.get("role") not in ["admin", "faculty"]:
        return redirect("/")

    student_id = request.args.get("id")
    db = get_db()
    cursor = db.cursor(dictionary=True)

    cursor.execute("""
        SELECT s.*, p.program_name, sp.specialization_name
        FROM Student s
        LEFT JOIN Program p ON s.program_id = p.program_id
        LEFT JOIN Specialization sp ON s.specialization_id = sp.specialization_id
        WHERE s.student_id=%s
    """, (student_id,))
    
    student = cursor.fetchone()
    return render_template("view_student.html", student=student)

# -------------------------------------------------------
# SELECT STUDENT ID (Student Login)
# -------------------------------------------------------
@app.route("/select_student_id", methods=["GET", "POST"])
def select_student_id():
    if session.get("role") != "student":
        return redirect("/")

    db = get_db()
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT student_id, name FROM Student ORDER BY student_id")
    students = cursor.fetchall()

    if request.method == "POST":
        session["student_id"] = request.form["student_id"]
        return redirect("/student_dashboard")

    return render_template("select_student_id.html", students=students)

# -------------------------------------------------------
# STUDENT DASHBOARD
# -------------------------------------------------------
@app.route("/student_dashboard")
def student_dashboard():
    if session.get("role") != "student":
        return redirect("/")

    if not session.get("student_id"):
        return redirect("/select_student_id")

    student_id = session["student_id"]

    db = get_db()
    cursor = db.cursor(dictionary=True)

    cursor.execute("""
        SELECT s.name, p.program_name, sp.specialization_name
        FROM Student s
        LEFT JOIN Program p ON s.program_id = p.program_id
        LEFT JOIN Specialization sp ON s.specialization_id = sp.specialization_id
        WHERE s.student_id=%s
    """, (student_id,))

    student = cursor.fetchone()
    return render_template("student_dashboard.html", student=student, student_id=student_id)

# -------------------------------------------------------
# FACULTY DASHBOARD (Courses they teach)
# -------------------------------------------------------
@app.route("/faculty")
def faculty_dashboard():
    if session.get("role") != "faculty":
        return redirect("/")

    # 🔥 Map demo login user → actual faculty_id = 1
    session["faculty_id"] = 1

    db = get_db()
    cursor = db.cursor(dictionary=True)

    cursor.execute("""
        SELECT c.course_id, c.course_code, c.course_name
        FROM CourseFaculty cf
        JOIN Course c ON c.course_id = cf.course_id
        WHERE cf.faculty_id = %s
    """, (session["faculty_id"],))

    courses = cursor.fetchall()

    return render_template("faculty_dashboard.html", courses=courses)

# -------------------------------------------------------
# 1. Route: View Students in a Selected Course
# -------------------------------------------------------
@app.route("/faculty/course/<int:course_id>")
def faculty_course_details(course_id):
    if session.get("role") != "faculty":
        return redirect("/")

    db = get_db()
    cursor = db.cursor(dictionary=True)

    # Fetch students registered in that course
    cursor.execute("""
        SELECT s.student_id, s.name, s.email, s.admission_year
        FROM CourseRegistration cr
        JOIN Student s ON s.student_id = cr.student_id
        WHERE cr.course_id = %s
    """, (course_id,))

    students = cursor.fetchall()

    # Fetch course name
    cursor.execute("SELECT course_name FROM Course WHERE course_id = %s", (course_id,))
    course = cursor.fetchone()

    return render_template("faculty_course_details.html", students=students, course=course, course_id=course_id)


# -------------------------------------------------------
# 2. Route: Mark Attendance Page
# -------------------------------------------------------
@app.route("/faculty/attendance/<int:course_id>", methods=["GET", "POST"])
def faculty_mark_attendance(course_id):
    if session.get("role") != "faculty":
        return redirect("/")

    db = get_db()
    cursor = db.cursor(dictionary=True)

    # Fetch students
    cursor.execute("""
        SELECT cr.reg_id, s.student_id, s.name
        FROM CourseRegistration cr
        JOIN Student s ON s.student_id = cr.student_id
        WHERE cr.course_id = %s
    """, (course_id,))
    students = cursor.fetchall()

    if request.method == "POST":
        date = request.form["date"]
        status_data = request.form

        for stu in students:
            reg_id = stu["reg_id"]
            status = status_data.get(f"status_{reg_id}", "Absent")

            cursor.execute("""
                INSERT INTO Attendance (reg_id, date, status)
                VALUES (%s, %s, %s)
            """, (reg_id, date, status))

        db.commit()
        return render_template("attendance_marked.html")

    cursor.execute("SELECT course_name FROM Course WHERE course_id = %s", (course_id,))
    course = cursor.fetchone()

    return render_template("faculty_mark_attendance.html", students=students, course=course)

# -------------------------------------------------------
# 3. Route: Enter Grades Page
# -------------------------------------------------------
@app.route("/faculty/grades/<int:course_id>", methods=["GET", "POST"])
def faculty_enter_grades(course_id):
    if session.get("role") != "faculty":
        return redirect("/")

    db = get_db()
    cursor = db.cursor(dictionary=True)

    cursor.execute("""
        SELECT cr.reg_id, s.student_id, s.name
        FROM CourseRegistration cr
        JOIN Student s ON s.student_id = cr.student_id
        WHERE cr.course_id = %s
    """, (course_id,))
    students = cursor.fetchall()

    if request.method == "POST":
        exam_type = request.form["exam_type"]
        max_marks = request.form["max_marks"]

        for stu in students:
            reg_id = stu["reg_id"]
            marks = request.form.get(f"marks_{reg_id}", None)

            if marks:
                cursor.execute("""
                    INSERT INTO Grade (reg_id, exam_type, marks_obtained, max_marks)
                    VALUES (%s, %s, %s, %s)
                """, (reg_id, exam_type, marks, max_marks))

        db.commit()
        return render_template("grades_saved.html")

    cursor.execute("SELECT course_name FROM Course WHERE course_id = %s", (course_id,))
    course = cursor.fetchone()

    return render_template("faculty_enter_grades.html", students=students, course=course)

# -------------------------------------------------------
# 4. Route: Course Analytics (Attendance % + Grades)
# -------------------------------------------------------
@app.route("/faculty/analytics/<int:course_id>")
def faculty_course_analytics(course_id):
    if session.get("role") != "faculty":
        return redirect("/")

    db = get_db()
    cursor = db.cursor(dictionary=True)

    # Attendance %
    cursor.execute("""
        SELECT s.name,
        SUM(a.status = 'Present') AS present_days,
        COUNT(*) AS total_days
        FROM Attendance a
        JOIN CourseRegistration cr ON cr.reg_id = a.reg_id
        JOIN Student s ON s.student_id = cr.student_id
        WHERE cr.course_id = %s
        GROUP BY s.student_id
    """, (course_id,))
    attendance = cursor.fetchall()

    # Grade Distribution
    cursor.execute("""
        SELECT s.name, g.exam_type, g.marks_obtained, g.max_marks
        FROM Grade g
        JOIN CourseRegistration cr ON cr.reg_id = g.reg_id
        JOIN Student s ON s.student_id = cr.student_id
        WHERE cr.course_id = %s
    """, (course_id,))
    grades = cursor.fetchall()

    cursor.execute("SELECT course_name FROM Course WHERE course_id = %s", (course_id,))
    course = cursor.fetchone()

    return render_template("faculty_analytics.html", attendance=attendance, grades=grades, course=course)

# -------------------------------------------------------
# 5. Export Course Data as CSV
# -------------------------------------------------------
@app.route("/faculty/export/<int:course_id>")
def faculty_export(course_id):
    if session.get("role") != "faculty":
        return redirect("/")

    db = get_db()
    cursor = db.cursor(dictionary=True)

    cursor.execute("""
        SELECT s.student_id, s.name, a.date, a.status
        FROM Attendance a
        JOIN CourseRegistration cr ON cr.reg_id = a.reg_id
        JOIN Student s ON s.student_id = cr.student_id
        WHERE cr.course_id = %s
    """, (course_id,))

    rows = cursor.fetchall()

    csv_data = "Student ID,Name,Date,Status\n"
    for r in rows:
        csv_data += f"{r['student_id']},{r['name']},{r['date']},{r['status']}\n"

    return csv_data, 200, {"Content-Type": "text/csv"}



# -------------------------------------------------------
# ATTENDANCE VIEW
# -------------------------------------------------------
@app.route("/attendance")
def attendance():
    student_id = request.args.get("id")
    db = get_db()
    cursor = db.cursor(dictionary=True)

    cursor.execute("""
        SELECT c.course_name, a.date, a.status
        FROM Attendance a
        JOIN CourseRegistration cr ON cr.reg_id = a.reg_id
        JOIN Course c ON c.course_id = cr.course_id
        WHERE cr.student_id=%s
    """, (student_id,))

    attendance = cursor.fetchall()
    return render_template("view_attendance.html", attendance=attendance)

# -------------------------------------------------------
# GRADES VIEW
# -------------------------------------------------------
@app.route("/grades")
def grades():
    student_id = request.args.get("id")
    db = get_db()
    cursor = db.cursor(dictionary=True)

    cursor.execute("""
        SELECT c.course_name, g.exam_type, g.marks_obtained, g.max_marks
        FROM Grade g
        JOIN CourseRegistration cr ON cr.reg_id = g.reg_id
        JOIN Course c ON c.course_id = cr.course_id
        WHERE cr.student_id=%s
    """, (student_id,))

    grades = cursor.fetchall()
    return render_template("view_grades.html", grades=grades)

# -------------------------------------------------------
# EXPORT STUDENTS CSV
# -------------------------------------------------------
@app.route("/export_students")
def export_students():
    if session.get("role") != "admin":
        return redirect("/")

    db = get_db()
    cursor = db.cursor()
    cursor.execute("SELECT * FROM Student")
    rows = cursor.fetchall()

    output = io.StringIO()
    writer = csv.writer(output)
    writer.writerow([i[0] for i in cursor.description])
    writer.writerows(rows)

    output.seek(0)
    return send_file(io.BytesIO(output.getvalue().encode()), 
                     mimetype="text/csv", 
                     as_attachment=True, 
                     download_name="students.csv")

# -------------------------------------------------------
# ANALYTICS DASHBOARD
# -------------------------------------------------------
@app.route("/analytics")
def analytics():
    if session.get("role") != "admin":
        return redirect("/")

    db = get_db()
    cursor = db.cursor(dictionary=True)

    # Total students
    cursor.execute("SELECT COUNT(*) AS total FROM Student")
    total_students = cursor.fetchone()["total"]

    # Students per program
    cursor.execute("""
        SELECT p.program_name, COUNT(*) AS count 
        FROM Student s
        JOIN Program p ON p.program_id = s.program_id
        GROUP BY p.program_name
    """)
    program_data = cursor.fetchall()

    labels = [d["program_name"] for d in program_data]
    values = [d["count"] for d in program_data]

    return render_template("analytics.html", total_students=total_students,
                           labels=labels, values=values)

# -------------------------------------------------------
# SQL CONSOLE
# -------------------------------------------------------
@app.route("/sql_console", methods=["GET", "POST"])
def sql_console():
    if session.get("role") != "admin":
        return redirect("/")

    output = None
    error = None

    if request.method == "POST":
        query = request.form["query"]

        try:
            db = get_db()
            cursor = db.cursor()
            cursor.execute(query)

            if query.lower().startswith("select"):
                output = cursor.fetchall()
            else:
                db.commit()
                output = "Query executed successfully."

        except Exception as e:
            error = str(e)

    return render_template("sql_console.html", output=output, error=error)

# -------------------------------------------------------
# RUN SERVER
# -------------------------------------------------------
if __name__ == "__main__":
    app.run(debug=True)
