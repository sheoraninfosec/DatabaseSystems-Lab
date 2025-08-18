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
('CSF201', 'Network Security', 'Principles of cybersecurity and networking', 3, 'Undergraduate', 'CSF'),
('MATH301', 'Linear Algebra', 'Matrix theory and linear algebra', 4, 'Undergraduate', 'MATH');

-- Insert Sections
INSERT INTO Section (CourseNumber, Semester, Year, SectionNumber, InstructorID) VALUES
('CS101', 'Fall', 2023, 1, 2),   -- Raghav teaches CS
('CSF201', 'Fall', 2023, 1, 1),  -- Jigesh teaches CSF
('MATH301', 'Fall', 2023, 1, 3); -- William teaches Math

-- Insert Grade Reports
INSERT INTO GradeReport (StudentNumber, SectionID, LetterGrade, NumericGrade) VALUES
(1001, 2, 'A', 4),  -- Jigesh (student) in Cyber Security
(1002, 1, 'B', 3),  -- Raghav (student) in CS
(1003, 3, 'A', 4);  -- William (student) in Math
