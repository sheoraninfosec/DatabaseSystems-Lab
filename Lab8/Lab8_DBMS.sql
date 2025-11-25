-- Lab 8 : Database Management Systems
-- Author : Jigesh Sheoran

-- Query 1
CREATE DATABASE Lab8DB;
USE Lab8DB;

CREATE TABLE Student (
    sid INT PRIMARY KEY,
    sname VARCHAR(30),
    age INT
);

CREATE TABLE MatchTable (
    mid VARCHAR(10) PRIMARY KEY,
    mname VARCHAR(30),
    venue VARCHAR(30)
);

CREATE TABLE Play (
    sid INT,
    mid VARCHAR(10),
    day DATE,
    FOREIGN KEY (sid) REFERENCES Student(sid),
    FOREIGN KEY (mid) REFERENCES MatchTable(mid)
);

-- Query 2
INSERT INTO Student VALUES
(1, 'Amit', 20),
(2, 'Rohit', 22),
(3, 'Neha', 19),
(4, 'Karan', 21),
(5, 'Priya', 23);

INSERT INTO MatchTable VALUES
('B10', 'Cricket Finals', 'Delhi'),
('B11', 'Football League', 'Mumbai'),
('B12', 'Badminton Open', 'Chennai'),
('B13', 'Hockey Cup', 'Delhi');

INSERT INTO Play VALUES
(1, 'B10', '2024-01-05'),
(2, 'B11', '2024-02-10'),
(1, 'B11', '2024-02-10'),
(3, 'B10', '2024-01-05'),
(4, 'B12', '2024-03-06'),
(1, 'B13', '2024-01-05'),
(5, 'B11', '2024-02-10'),
(2, 'B13', '2024-01-05');

SELECT * FROM Student, MatchTable, Play;

-- Querty 3
SELECT s.*
FROM Student s
JOIN Play p ON s.sid = p.sid
WHERE p.mid = 'B10';

-- Query 4
SELECT m.mname
FROM Student s
JOIN Play p ON s.sid = p.sid
JOIN MatchTable m ON p.mid = m.mid
WHERE s.sname = 'Amit';

-- Query 5
SELECT DISTINCT s.sname
FROM Student s
JOIN Play p ON s.sid = p.sid
JOIN MatchTable m ON p.mid = m.mid
WHERE m.venue = 'Delhi';

-- Query 6
SELECT DISTINCT s.sname
FROM Student s
JOIN Play p ON s.sid = p.sid;

-- Query 7
SELECT s.sid, s.sname
FROM Student s
JOIN Play p ON s.sid = p.sid
GROUP BY s.sid, s.sname, p.day
HAVING COUNT(DISTINCT p.mid) >= 2;

-- Query 8
SELECT DISTINCT s.sid
FROM Student s
JOIN Play p ON s.sid = p.sid
JOIN MatchTable m ON p.mid = m.mid
WHERE m.venue IN ('Delhi', 'Mumbai');

-- Query 9
SELECT AVG(age) AS average_age
FROM Student;




