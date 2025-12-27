USE upes_university;

-- ============================================
-- INSERT SCHOOLS
-- ============================================

INSERT INTO School (school_name) VALUES
('School of Computer Science'),
('School of Business'),
('School of Law'),
('School of Advanced Engineering'),
('School of Design'),
('School of Health Sciences');

-- ============================================
-- INSERT PROGRAMS
-- ============================================

-- School of Computer Science (1)
INSERT INTO Program (school_id, program_name, program_level, duration_years) VALUES
(1, 'B.Tech Computer Science', 'UG', 4),
(1, 'BCA', 'UG', 3),
(1, 'M.Tech Computer Science', 'PG', 2),
(1, 'MSc Cybersecurity', 'PG', 2);

-- School of Business (2)
INSERT INTO Program (school_id, program_name, program_level, duration_years) VALUES
(2, 'BBA', 'UG', 3),
(2, 'Bachelor of Commerce', 'UG', 3),
(2, 'MBA', 'PG', 2);

-- School of Law (3)
INSERT INTO Program (school_id, program_name, program_level, duration_years) VALUES
(3, 'BA LL.B', 'UG', 5),
(3, 'BBA LL.B', 'UG', 5),
(3, 'LL.M', 'PG', 2);

-- School of Advanced Engineering (4)
INSERT INTO Program (school_id, program_name, program_level, duration_years) VALUES
(4, 'B.Tech Mechanical Engineering', 'UG', 4),
(4, 'B.Tech Electrical Engineering', 'UG', 4),
(4, 'B.Tech Aerospace Engineering', 'UG', 4),
(4, 'M.Tech Mechanical Engineering', 'PG', 2);

-- School of Design (5)
INSERT INTO Program (school_id, program_name, program_level, duration_years) VALUES
(5, 'Bachelor of Design', 'UG', 4),
(5, 'Master of Design', 'PG', 2);

-- School of Health Sciences (6)
INSERT INTO Program (school_id, program_name, program_level, duration_years) VALUES
(6, 'B.Pharm', 'UG', 4);

-- ============================================
-- SPECIALIZATIONS (For M.Tech Computer Science Only)
-- ============================================

-- M.Tech CS Program ID = 3 (from earlier inserts)
INSERT INTO Specialization (program_id, specialization_name) VALUES
(3, 'Cyber Security and Forensics'),
(3, 'Artificial Intelligence and Machine Learning');
