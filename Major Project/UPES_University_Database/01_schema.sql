-- ============================================
-- UPES UNIVERSITY ERP DATABASE SCHEMA
-- ============================================
-- Author : Jigesh Sheoran

CREATE DATABASE IF NOT EXISTS upes_university;
USE upes_university;

-- ============================================
-- 1. SCHOOL TABLE
-- ============================================
CREATE TABLE School (
    school_id INT PRIMARY KEY AUTO_INCREMENT,
    school_name VARCHAR(150) NOT NULL UNIQUE
);

-- ============================================
-- 2. PROGRAM TABLE
-- ============================================
CREATE TABLE Program (
    program_id INT PRIMARY KEY AUTO_INCREMENT,
    school_id INT NOT NULL,
    program_name VARCHAR(150) NOT NULL,
    program_level ENUM('UG','PG','PhD') NOT NULL,
    duration_years INT NOT NULL,
    FOREIGN KEY (school_id) REFERENCES School(school_id)
);

-- ============================================
-- 3. SPECIALIZATION TABLE (Only for programs that support it)
-- ============================================
CREATE TABLE Specialization (
    specialization_id INT PRIMARY KEY AUTO_INCREMENT,
    program_id INT NOT NULL,
    specialization_name VARCHAR(150) NOT NULL,
    FOREIGN KEY (program_id) REFERENCES Program(program_id)
);

-- ============================================
-- 4. STUDENT TABLE
-- ============================================
CREATE TABLE Student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    phone VARCHAR(20),
    address VARCHAR(255),
    admission_year INT NOT NULL,
    program_id INT NOT NULL,
    specialization_id INT DEFAULT NULL,
    FOREIGN KEY (program_id) REFERENCES Program(program_id),
    FOREIGN KEY (specialization_id) REFERENCES Specialization(specialization_id)
);

-- ============================================
-- 5. FACULTY TABLE
-- ============================================
CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    email VARCHAR(200) UNIQUE,
    phone VARCHAR(20),
    address VARCHAR(255),
    school_id INT NOT NULL,
    designation VARCHAR(100),
    FOREIGN KEY (school_id) REFERENCES School(school_id)
);

-- ============================================
-- 6. COURSE TABLE (Subjects)
-- ============================================
CREATE TABLE Course (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_code VARCHAR(20) UNIQUE,
    course_name VARCHAR(200) NOT NULL,
    credit INT NOT NULL
);

-- ============================================
-- 7. PROGRAM-COURSE MAPPING (Core Subjects)
-- ============================================
CREATE TABLE ProgramCourse (
    id INT PRIMARY KEY AUTO_INCREMENT,
    program_id INT NOT NULL,
    course_id INT NOT NULL,
    semester INT NOT NULL,
    FOREIGN KEY (program_id) REFERENCES Program(program_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

-- ============================================
-- 8. SPECIALIZATION ELECTIVES MAPPING
-- ============================================
CREATE TABLE SpecializationCourse (
    id INT PRIMARY KEY AUTO_INCREMENT,
    specialization_id INT NOT NULL,
    course_id INT NOT NULL,
    FOREIGN KEY (specialization_id) REFERENCES Specialization(specialization_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

-- ============================================
-- 9. COURSE-FACULTY MAPPING
-- ============================================
CREATE TABLE CourseFaculty (
    id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT NOT NULL,
    faculty_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES Course(course_id),
    FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id)
);

-- ============================================
-- 10. COURSE REGISTRATION (Student enrolls into a course)
-- ============================================
CREATE TABLE CourseRegistration (
    reg_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    reg_date DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

-- ============================================
-- 11. ATTENDANCE TABLE
-- ============================================
CREATE TABLE Attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    reg_id INT NOT NULL,
    date DATE NOT NULL,
    status ENUM('Present','Absent') NOT NULL,
    FOREIGN KEY (reg_id) REFERENCES CourseRegistration(reg_id)
);

-- ============================================
-- 12. GRADE TABLE
-- ============================================
CREATE TABLE Grade (
    grade_id INT AUTO_INCREMENT PRIMARY KEY,
    reg_id INT NOT NULL,
    exam_type ENUM('Midterm','Endsem','Quiz','Assignment') NOT NULL,
    marks_obtained INT NOT NULL,
    max_marks INT NOT NULL,
    FOREIGN KEY (reg_id) REFERENCES CourseRegistration(reg_id)
);

-- ============================================
-- SCHEMA COMPLETE
-- ============================================

