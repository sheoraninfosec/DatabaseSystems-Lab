USE upes_university;

-- ============================================================
-- ATTENDANCE + UPDATED GRADING STRUCTURE
-- Midterm = 20
-- Endterm = 30
-- Internals = 50
-- ============================================================


-- ============================================================
-- 1. ATTENDANCE (10 entries per registration)
-- ============================================================

INSERT INTO Attendance (reg_id, date, status)
SELECT 
    cr.reg_id,
    DATE_ADD('2024-02-01', INTERVAL (a.n + (RAND() * 60)) DAY) AS date,
    CASE 
        WHEN RAND() < 0.85 THEN 'Present'
        ELSE 'Absent'
    END AS status
FROM CourseRegistration cr
JOIN (
    SELECT 0 AS n UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4
    UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9
) a;


-- ============================================================
-- 2. MIDTERM (out of 20)
-- ============================================================

INSERT INTO Grade (reg_id, exam_type, marks_obtained, max_marks)
SELECT 
    cr.reg_id,
    'Midterm',
    FLOOR(8 + RAND() * 12),   -- realistic range: 8–20
    20
FROM CourseRegistration cr;


-- ============================================================
-- 3. END TERM (out of 30)
-- ============================================================

INSERT INTO Grade (reg_id, exam_type, marks_obtained, max_marks)
SELECT 
    cr.reg_id,
    'Endterm',
    FLOOR(12 + RAND() * 18),  -- realistic: 12–30
    30
FROM CourseRegistration cr;


-- ============================================================
-- 4. INTERNALS (out of 50)
-- Components: Assignments, class tests, attendance, etc.
-- ============================================================

INSERT INTO Grade (reg_id, exam_type, marks_obtained, max_marks)
SELECT 
    cr.reg_id,
    'Internals',
    FLOOR(25 + RAND() * 25),  -- realistic: 25–50
    50
FROM CourseRegistration cr;


-- END OF FILE
