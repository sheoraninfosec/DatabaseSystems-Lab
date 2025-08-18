USE UniversityDB;

-- Insert Departments
INSERT INTO Department (DeptCode, DeptName, OfficeNumber, OfficePhone, College) VALUES
('CS', 'Computer Science', 'CSEG1401', '111-111-1111', 'Engineering'),
('MATH', 'Mathematics', 'MATH201', '222-222-2222', 'Mathematics'),
('CSF', 'Cyber Security', 'CSF3011', '333-333-3333', 'Engineering');

-- Insert Instructors
INSERT INTO Instructor (FirstName, LastName, DeptCode, Email, Phone) VALUES
('Jigesh', 'Sheoran', 'CSF', 'Jigesh.25428@stu.upes.ac.in', '111-222-3333'),
('Raghav', 'Rajput', 'CS', 'Raghav.25429@stu.upes.ac.in', '222-333-4444'),
('William', 'Shakespeare', 'MATH', 'wilian.25430@stu.upes.ac.in', '333-444-5555');

-- Insert Students
INSERT INTO Student (StudentNumber, SSN, FirstName, LastName, CurrentStreet, CurrentCity, CurrentState, CurrentZipCode,
CurrentPhone, PermanentStreet, PermanentCity, PermanentState, PermanentZipCode, PermanentPhone, BirthDate, Sex, Class, DegreeProgram, MajorDeptCode, MinorDeptCode) VALUES
(1001, '123456789', 'Jigesh', 'Sheoran', 'Plot 180 P&B Society', 'Dehradun', 'UK', '248007', '111-111-0000',
'Plot 180, P&B Society', 'Dehradun', 'UK', '248007', '111-111-0000', '2000-01-01', 'M', 'Freshman', 'MTECH', 'CSF', 'MATH'),
(1002, '987654321', 'Raghav', 'Rajput', 'Plot 180, P&B Society', 'Dehradun', 'UK', '248007', '222-222-0000',
'Plot 180, P&B Society', 'Dehradun', 'UK', '248007', '222-222-0000', '2001-01-01', 'M', 'Freshman', 'MTECH', 'CS', NULL),
(1003, '555667777', 'William', 'Shakespeare', 'Plot 181 P&B Society', 'Dehradun', 'UK', '248007', '333-333-0000',
'11 Rajpur Road', 'Dehradun', 'UK', '248001', '333-333-0001', '2002-01-01', 'M', 'Senior', 'BTECH', 'MATH', 'CSF');

-- Insert Courses
INSERT INTO Course (CourseNumber, CourseName, Description, SemesterHours, Level, DeptCode) VALUES
('CS101', 'Intro to Programming', 'Basics of programming in Python', 3, 'Undergraduate', 'CS'),
('MATH201', 'Calculus I', 'Differential and Integral Calculus', 4, 'Undergraduate', 'MATH'),
('ENG301', 'English Literature', 'Survey of classic English texts', 3, 'Undergraduate', 'ENG');

-- Insert Sections
INSERT INTO Section (CourseNumber, Semester, Year, SectionNumber, InstructorID) VALUES
('CS101', 'Fall', 2023, 1, 1),
('MATH201', 'Fall', 2023, 1, 2),
('ENG301', 'Fall', 2023, 1, 3);

-- Insert Grade Reports
INSERT INTO GradeReport (StudentNumber, SectionID, LetterGrade, NumericGrade) VALUES
(1001, 1, 'A', 4),
(1002, 3, 'B', 3),
(1003, 2, 'A', 4);
