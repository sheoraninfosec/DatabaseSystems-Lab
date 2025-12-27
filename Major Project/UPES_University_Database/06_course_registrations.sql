USE upes_university;

-- ============================================================
-- REGISTER ALL STUDENTS INTO ALL CORE COURSES OF THEIR PROGRAM
-- REGISTER STUDENTS WITH SPECIALIZATION INTO ALL SPECIALIZATION COURSES
-- NO ELECTIVES OUTSIDE SPECIALIZATION
-- Randomized dates (2024–2025)
-- ============================================================


-- 1️⃣ Register into all CORE Program Courses
INSERT INTO CourseRegistration (student_id, course_id, reg_date)
SELECT 
    s.student_id,
    pc.course_id,
    DATE_ADD('2024-01-01', INTERVAL FLOOR(RAND()*550) DAY) AS reg_date
FROM Student s
JOIN ProgramCourse pc 
      ON s.program_id = pc.program_id;


-- 2️⃣ Register into SPECIALIZATION Courses (Only for students who chose one)
INSERT INTO CourseRegistration (student_id, course_id, reg_date)
SELECT
    s.student_id,
    sc.course_id,
    DATE_ADD('2024-01-01', INTERVAL FLOOR(RAND()*550) DAY)
FROM Student s
JOIN SpecializationCourse sc 
      ON s.specialization_id = sc.specialization_id
WHERE s.specialization_id IS NOT NULL;


-- END OF FILE
