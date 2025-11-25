-- Lab 9 Database Management Systems
-- Autor: Jigesh Sheoran 

CREATE DATABASE Lab9DB;
USE Lab9DB;

CREATE TABLE EMPLOYEES (
    Employee_id INT PRIMARY KEY,
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20),
    Salary DECIMAL(10,2),
    Department_id INT
);

INSERT INTO EMPLOYEES VALUES
(101, 'Amit',   'Sharma',   45000, 10),
(102, 'Priya',  'Verma',    50000, 20),
(103, 'Rohit',  'Singh',    55000, 20),
(104, 'Neha',   'Patel',    60000, 30),
(105, 'Karan',  'Iyer',     65000, 20),
(106, 'Meera',  'Joshi',    70000, 10);

— Query 1
CREATE VIEW emp_view AS
SELECT Employee_id, Last_Name, Salary, Department_id
FROM EMPLOYEES;

SELECT * FROM emp_view;

-- Query 2
INSERT INTO emp_view (Employee_id, Last_Name, Salary, Department_id)
VALUES (107, 'Khan', 52000, 30);

SELECT * FROM emp_view;

-- Query 3 / Update
UPDATE emp_view
SET Salary = 90000
WHERE Employee_id = 103;

SELECT * FROM emp_view WHERE Employee_id = 103;

-- Query 3 / Delete
DELETE FROM emp_view
WHERE Employee_id = 102;

SELECT * FROM emp_view WHERE Employee_id = 102;

-- Query 3 / DROP
DROP VIEW emp_view;
SELECT * FROM emp_view;

-- Query 4
CREATE VIEW salary_view AS
SELECT 
    Employee_id,
    First_Name,
    Last_Name,
    Salary,
    (Salary * 12) AS Annual_Salary
FROM EMPLOYEES
WHERE Department_id = 20;

SELECT * FROM salary_view;

