-- Author: Jigesh SHeoran
-- Lab 7 : Database Management Systems

USE CompanyDB;
-- Query 1: Average Salary 
SELECT AVG(Salary) AS AverageSalary
FROM Employee;

-- Query 2: No. of Employees
SELECT COUNT(*) AS TotalEmployees
FROM Employee;

-- Query 3: Retrieve distinct number of employees
SELECT COUNT(DISTINCT SSN) AS DistinctEmployees
FROM Employee;

-- Query 4: Retrieve total salary of employee group by job

SELECT Job, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Job;

-- Query 5: Display the employee information with maximum salary
SELECT *
FROM Employee
WHERE Salary = (SELECT MAX(Salary) FROM Employee);

-- Query 6: Find the highest paid employee in department 10
SELECT *
FROM Employee
WHERE Dno = 5
  AND Salary = (SELECT MAX(Salary) FROM Employee WHERE Dno = 5);

-- Query 7
SELECT *
FROM Employee
WHERE Salary = (
    (SELECT MAX(Salary) FROM Employee) +
    (SELECT MIN(Salary) FROM Employee)
) / 2;

-- Query 8
SELECT Fname, Lname, Bdate
FROM Employee
WHERE Bdate IN (
    SELECT Bdate
    FROM Employee
    GROUP BY Bdate
    HAVING COUNT(*) > 1
);

-- Query 9
SELECT Fname AS Original_First,
       Lname AS Original_Last,
       UPPER(Fname) AS First_Upper,
       LOWER(Fname) AS First_Lower,
       UPPER(Lname) AS Last_Upper,
       LOWER(Lname) AS Last_Lower
FROM Employee;

-- Query 10
SELECT 
    Fname,Lname, HireDate,
    DATE_ADD(HireDate, INTERVAL 3 DAY) AS Date_After_3_Days
FROM Employee;







