USE upes_university;

-- ============================================
-- COURSE MASTER TABLE INSERTS
-- ============================================
-- NOTE: Each course gets a unique entry here.
-- ProgramCourse table will map courses → programs → semesters.
-- ============================================

INSERT INTO Course (course_code, course_name, credit) VALUES
-- ================= B.Tech Computer Science =================
('CSE101', 'Programming in C', 4),
('CSE102', 'Mathematics I', 4),
('CSE103', 'Physics for Engineers', 3),
('CSE104', 'Engineering Graphics', 2),
('CSE105', 'Communication Skills', 2),

('CSE201', 'Data Structures', 4),
('CSE202', 'Mathematics II', 4),
('CSE203', 'Operating Systems', 4),
('CSE204', 'Digital Logic Design', 3),
('CSE205', 'Object Oriented Programming in Java', 4),

('CSE301', 'Computer Networks', 4),
('CSE302', 'Database Management Systems', 4),
('CSE303', 'Discrete Mathematics', 4),
('CSE304', 'Microprocessor Architecture', 3),
('CSE305', 'Web Technologies', 3),

('CSE401', 'Algorithms', 4),
('CSE402', 'Software Engineering', 3),
('CSE403', 'Probability & Statistics', 4),
('CSE404', 'Computer Organization', 4),
('CSE405', 'Introduction to Artificial Intelligence', 3),

('CSE501', 'Distributed Systems', 4),
('CSE502', 'Compiler Design', 4),
('CSE503', 'Cloud Computing', 3),
('CSE504', 'Information Security', 3),
('CSE505', 'Technical Elective I', 3),

('CSE601', 'Mobile Application Development', 3),
('CSE602', 'Big Data Analytics', 4),
('CSE603', 'Machine Learning', 4),
('CSE604', 'Technical Elective II', 3),
('CSE605', 'Minor Project', 2),

('CSE701', 'Blockchain Technology', 3),
('CSE702', 'Advanced Databases', 4),
('CSE703', 'Technical Elective III', 3),
('CSE704', 'Capstone Project Phase I', 3),
('CSE705', 'Research Methodology', 2),

('CSE801', 'Cybersecurity Fundamentals', 3),
('CSE802', 'Deep Learning Applications', 4),
('CSE803', 'Industrial Internship', 6),
('CSE804', 'Capstone Project Phase II', 6),

-- ================= BCA =================
('BCA101', 'Fundamentals of IT', 3),
('BCA102', 'Programming in Python', 4),
('BCA103', 'Computer Architecture', 4),
('BCA104', 'Mathematics for IT', 4),
('BCA105', 'Web Development Basics', 3),

('BCA201', 'Operating Systems', 4),
('BCA202', 'Data Structures', 4),
('BCA203', 'Database Management Systems', 4),
('BCA204', 'Computer Networks', 4),
('BCA205', 'Software Engineering', 3),

('BCA301', 'Cloud Computing', 3),
('BCA302', 'Cybersecurity Basics', 3),
('BCA303', 'Mobile App Development', 3),
('BCA304', 'Data Analytics', 4),
('BCA305', 'Major Project', 4),

-- ================= M.Tech Computer Science CORE =================
('MTCS101', 'Database Systems', 4),
('MTCS102', 'Distributed Systems', 4),
('MTCS103', 'Topics in Mathematics', 4),
('MTCS104', 'Design and Analysis of Algorithms', 4),

-- ================= M.Tech CS Specialization: Cyber Security =================
('CSF201', 'Penetration Testing and Ethical Hacking', 4),
('CSF202', 'Cyber Threat Intelligence', 4),

-- ================= M.Tech CS Specialization: AI & ML =================
('AIML201', 'Deep Learning', 4),
('AIML202', 'Natural Language Processing', 4),

-- ================= MSc Cybersecurity =================
('MSC201', 'Cyber Laws and Compliance', 3),
('MSC202', 'Network Security Architecture', 4),
('MSC203', 'Digital Forensics', 4),
('MSC204', 'Malware Analysis and Reverse Engineering', 4),

-- ================= BUSINESS PROGRAMS =================
-- BBA
('BBA101', 'Principles of Management', 3),
('BBA102', 'Financial Accounting', 3),
('BBA103', 'Business Economics', 3),
('BBA104', 'Marketing Management', 3),

-- B.Com
('BCOM101', 'Corporate Accounting', 3),
('BCOM102', 'Cost Accounting', 3),
('BCOM103', 'Business Law', 3),
('BCOM104', 'Income Tax Fundamentals', 3),

-- MBA
('MBA201', 'Organizational Behaviour', 3),
('MBA202', 'Strategic Management', 3),
('MBA203', 'Financial Management', 3),
('MBA204', 'Operations Research', 3),

-- ================= LAW PROGRAMS =================
('LAW101', 'Legal Method', 3),
('LAW102', 'Contract Law', 4),
('LAW103', 'Constitutional Law', 4),
('LAW104', 'Criminal Law', 4),

('LAW201', 'Corporate Law', 4),
('LAW202', 'Environmental Law', 3),
('LAW203', 'Labour and Industrial Law', 3),
('LAW204', 'Intellectual Property Rights', 3),

-- ================= ENGINEERING PROGRAMS =================
-- Mechanical
('ME101', 'Engineering Mechanics', 4),
('ME102', 'Thermodynamics', 4),
('ME103', 'Manufacturing Processes', 3),
('ME104', 'Fluid Mechanics', 4),

-- Electrical
('EE101', 'Circuit Theory', 4),
('EE102', 'Electrical Machines', 4),
('EE103', 'Power Systems', 4),
('EE104', 'Control Systems', 4),

-- Aerospace
('AE101', 'Flight Mechanics', 4),
('AE102', 'Aerodynamics', 4),
('AE103', 'Aircraft Structures', 4),
('AE104', 'Propulsion Systems', 4),

-- M.Tech Mechanical
('MTME101', 'Advanced Thermodynamics', 4),
('MTME102', 'Finite Element Methods', 4),
('MTME103', 'Robotics and Automation', 4),
('MTME104', 'Advanced Manufacturing', 4),

-- ================= DESIGN PROGRAMS =================
('DES101', 'Design Fundamentals', 3),
('DES102', 'Color Theory', 2),
('DES103', 'Typography', 2),
('DES104', '3D Modeling & Rendering', 3),

('DES201', 'Human-Centered Design', 3),
('DES202', 'UX/UI Design', 3),
('DES203', 'Interaction Design', 3),
('DES204', 'Portfolio Development', 2),

-- ================= HEALTH SCIENCE =================
('BPH101', 'Human Anatomy', 4),
('BPH102', 'Pharmaceutical Chemistry', 4),
('BPH103', 'Pharmacology', 4),
('BPH104', 'Pharmaceutics', 4);

-- ============================================================
-- PROGRAM COURSE MAPPING (SEMESTER-WISE)
-- ============================================================
-- Program ID Reference from File 02:
-- 1 = B.Tech CSE
-- 2 = BCA
-- 3 = M.Tech CS
-- 4 = MSc Cybersecurity
-- 5 = BBA
-- 6 = B.Com
-- 7 = MBA
-- 8 = BA LL.B
-- 9 = BBA LL.B
-- 10 = LL.M
-- 11 = B.Tech Mechanical
-- 12 = B.Tech Electrical
-- 13 = B.Tech Aerospace
-- 14 = M.Tech Mechanical
-- 15 = Bachelor of Design
-- 16 = Master of Design
-- 17 = B.Pharm
-- ============================================================

-- ===============================
-- B.Tech Computer Science (Program 1)
-- ===============================

-- Semester 1
INSERT INTO ProgramCourse (program_id, course_id, semester) VALUES
(1, (SELECT course_id FROM Course WHERE course_code='CSE101'), 1),
(1, (SELECT course_id FROM Course WHERE course_code='CSE102'), 1),
(1, (SELECT course_id FROM Course WHERE course_code='CSE103'), 1),
(1, (SELECT course_id FROM Course WHERE course_code='CSE104'), 1),
(1, (SELECT course_id FROM Course WHERE course_code='CSE105'), 1);

-- Semester 2
INSERT INTO ProgramCourse (program_id, course_id, semester) VALUES
(1, (SELECT course_id FROM Course WHERE course_code='CSE201'), 2),
(1, (SELECT course_id FROM Course WHERE course_code='CSE202'), 2),
(1, (SELECT course_id FROM Course WHERE course_code='CSE203'), 2),
(1, (SELECT course_id FROM Course WHERE course_code='CSE204'), 2),
(1, (SELECT course_id FROM Course WHERE course_code='CSE205'), 2);

-- Semester 3
INSERT INTO ProgramCourse (program_id, course_id, semester) VALUES
(1, (SELECT course_id FROM Course WHERE course_code='CSE301'), 3),
(1, (SELECT course_id FROM Course WHERE course_code='CSE302'), 3),
(1, (SELECT course_id FROM Course WHERE course_code='CSE303'), 3),
(1, (SELECT course_id FROM Course WHERE course_code='CSE304'), 3),
(1, (SELECT course_id FROM Course WHERE course_code='CSE305'), 3);

-- Semester 4
INSERT INTO ProgramCourse (program_id, course_id, semester) VALUES
(1, (SELECT course_id FROM Course WHERE course_code='CSE401'), 4),
(1, (SELECT course_id FROM Course WHERE course_code='CSE402'), 4),
(1, (SELECT course_id FROM Course WHERE course_code='CSE403'), 4),
(1, (SELECT course_id FROM Course WHERE course_code='CSE404'), 4),
(1, (SELECT course_id FROM Course WHERE course_code='CSE405'), 4);

-- Semester 5
INSERT INTO ProgramCourse (program_id, course_id, semester) VALUES
(1, (SELECT course_id FROM Course WHERE course_code='CSE501'), 5),
(1, (SELECT course_id FROM Course WHERE course_code='CSE502'), 5),
(1, (SELECT course_id FROM Course WHERE course_code='CSE503'), 5),
(1, (SELECT course_id FROM Course WHERE course_code='CSE504'), 5),
(1, (SELECT course_id FROM Course WHERE course_code='CSE505'), 5);

-- Semester 6
INSERT INTO ProgramCourse (program_id, course_id, semester) VALUES
(1, (SELECT course_id FROM Course WHERE course_code='CSE601'), 6),
(1, (SELECT course_id FROM Course WHERE course_code='CSE602'), 6),
(1, (SELECT course_id FROM Course WHERE course_code='CSE603'), 6),
(1, (SELECT course_id FROM Course WHERE course_code='CSE604'), 6),
(1, (SELECT course_id FROM Course WHERE course_code='CSE605'), 6);

-- Semester 7
INSERT INTO ProgramCourse (program_id, course_id, semester) VALUES
(1, (SELECT course_id FROM Course WHERE course_code='CSE701'), 7),
(1, (SELECT course_id FROM Course WHERE course_code='CSE702'), 7),
(1, (SELECT course_id FROM Course WHERE course_code='CSE703'), 7),
(1, (SELECT course_id FROM Course WHERE course_code='CSE704'), 7),
(1, (SELECT course_id FROM Course WHERE course_code='CSE705'), 7);

-- Semester 8
INSERT INTO ProgramCourse (program_id, course_id, semester) VALUES
(1, (SELECT course_id FROM Course WHERE course_code='CSE801'), 8),
(1, (SELECT course_id FROM Course WHERE course_code='CSE802'), 8),
(1, (SELECT course_id FROM Course WHERE course_code='CSE803'), 8),
(1, (SELECT course_id FROM Course WHERE course_code='CSE804'), 8);

-- ===============================
-- BCA (Program 2)
-- ===============================

-- Year 1
INSERT INTO ProgramCourse (program_id, course_id, semester) VALUES
(2, (SELECT course_id FROM Course WHERE course_code='BCA101'), 1),
(2, (SELECT course_id FROM Course WHERE course_code='BCA102'), 1),
(2, (SELECT course_id FROM Course WHERE course_code='BCA103'), 1),
(2, (SELECT course_id FROM Course WHERE course_code='BCA104'), 1),
(2, (SELECT course_id FROM Course WHERE course_code='BCA105'), 1);

-- Year 2
INSERT INTO ProgramCourse (program_id, course_id, semester) VALUES
(2, (SELECT course_id FROM Course WHERE course_code='BCA201'), 2),
(2, (SELECT course_id FROM Course WHERE course_code='BCA202'), 2),
(2, (SELECT course_id FROM Course WHERE course_code='BCA203'), 2),
(2, (SELECT course_id FROM Course WHERE course_code='BCA204'), 2),
(2, (SELECT course_id FROM Course WHERE course_code='BCA205'), 2);

-- Year 3
INSERT INTO ProgramCourse (program_id, course_id, semester) VALUES
(2, (SELECT course_id FROM Course WHERE course_code='BCA301'), 3),
(2, (SELECT course_id FROM Course WHERE course_code='BCA302'), 3),
(2, (SELECT course_id FROM Course WHERE course_code='BCA303'), 3),
(2, (SELECT course_id FROM Course WHERE course_code='BCA304'), 3),
(2, (SELECT course_id FROM Course WHERE course_code='BCA305'), 3);

-- ===============================
-- M.Tech Computer Science (Program 3)
-- ===============================

INSERT INTO ProgramCourse (program_id, course_id, semester) VALUES
(3, (SELECT course_id FROM Course WHERE course_code='MTCS101'), 1),
(3, (SELECT course_id FROM Course WHERE course_code='MTCS102'), 1),
(3, (SELECT course_id FROM Course WHERE course_code='MTCS103'), 1),
(3, (SELECT course_id FROM Course WHERE course_code='MTCS104'), 1);

-- ===============================
-- MSc Cybersecurity (Program 4)
-- ===============================

INSERT INTO ProgramCourse (program_id, course_id, semester) VALUES
(4, (SELECT course_id FROM Course WHERE course_code='MSC201'), 1),
(4, (SELECT course_id FROM Course WHERE course_code='MSC202'), 1),
(4, (SELECT course_id FROM Course WHERE course_code='MSC203'), 2),
(4, (SELECT course_id FROM Course WHERE course_code='MSC204'), 2);

-- ===============================
-- BUSINESS PROGRAMS
-- ===============================

-- BBA (Program 5)
INSERT INTO ProgramCourse (program_id, course_id, semester) VALUES
(5, (SELECT course_id FROM Course WHERE course_code='BBA101'), 1),
(5, (SELECT course_id FROM Course WHERE course_code='BBA102'), 1),
(5, (SELECT course_id FROM Course WHERE course_code='BBA103'), 2),
(5, (SELECT course_id FROM Course WHERE course_code='BBA104'), 2);

-- B.Com (Program 6)
INSERT INTO ProgramCourse (program_id, course_id, semester) VALUES
(6, (SELECT course_id FROM Course WHERE course_code='BCOM101'), 1),
(6, (SELECT course_id FROM Course WHERE course_code='BCOM102'), 1),
(6, (SELECT course_id FROM Course WHERE course_code='BCOM103'), 2),
(6, (SELECT course_id FROM Course WHERE course_code='BCOM104'), 2);

-- MBA (Program 7)
-- MBA (Program 7)
INSERT INTO ProgramCourse (program_id, course_id, semester) VALUES
(7, (SELECT course_id FROM Course WHERE course_code='MBA201'), 1),
(7, (SELECT course_id FROM Course WHERE course_code='MBA202'), 1),
(7, (SELECT course_id FROM Course WHERE course_code='MBA203'), 2),
(7, (SELECT course_id FROM Course WHERE course_code='MBA204'), 2);
