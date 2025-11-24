
-- Author: Jigesh SHeoran
-- Lab 6 : Database Management Systems

-- Query 1
SELECT E.FNAME, E.LNAME
FROM EMPLOYEE E
JOIN WORKS_ON W ON E.SSN = W.ESSN
JOIN PROJECT P ON W.PNO = P.PNUMBER
WHERE E.DNO = 5 
  AND W.HOURS > 10 
  AND P.PNAME = 'ProjectAlpha'; 

-- Query 2
SELECT E.FNAME, E.LNAME
FROM EMPLOYEE E
JOIN DEPENDENT D ON E.SSN = D.ESSN
WHERE E.FNAME = D.DEPENDENT_NAME;

-- Query 3
SELECT e.Fname, e.Lname
FROM EMPLOYEE e
WHERE e.Super_ssn = (
    SELECT Ssn FROM EMPLOYEE WHERE Fname='Rohit' AND Lname='Bose'
);

-- Query 4
SELECT e.Fname, e.Lname
FROM Employee e
JOIN Works_On w ON e.Ssn = w.Essn
GROUP BY e.Ssn, e.Fname, e.Lname
HAVING COUNT(DISTINCT w.Pno) = (SELECT COUNT(*) FROM Project);

-- Query 5
SELECT Fname, Lname
FROM Employee
WHERE Ssn NOT IN (SELECT Essn FROM Works_On);

-- Query 6
SELECT DISTINCT E.Fname, E.Lname, E.Address
FROM Employee E
JOIN Works_On W ON E.Ssn = W.Essn
JOIN Project P ON W.Pno = P.Pnumber
WHERE P.Plocation = 'Houston'
  AND E.Dno NOT IN (
        SELECT Dnumber
        FROM DEPT_LOCATIONS
        WHERE Dlocation = 'Houston'
  );

-- Query 7
SELECT E.Lname
FROM Employee E
WHERE E.Ssn IN (SELECT Mgr_ssn FROM Department)
  AND E.Ssn NOT IN (SELECT Essn FROM Dependent);
