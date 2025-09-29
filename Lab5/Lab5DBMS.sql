-- EXPERIMENT-5: SQL SUB-QUERY IMPLEMENTATION
-- Author: Jigesh Sheoran

DROP DATABASE IF EXISTS Lab5DB;
CREATE DATABASE Lab5DB;
USE Lab5DB;
SHOW DATABASES;

CREATE TABLE Supplier (
    scode VARCHAR(10) PRIMARY KEY,
    sname VARCHAR(30) NOT NULL,
    scity VARCHAR(30),
    turnover INT
);

CREATE TABLE Part (
    pcode VARCHAR(10) PRIMARY KEY,
    weigh INT,
    color VARCHAR(10),
    cost DECIMAL(10,2),
    sellingprice DECIMAL(10,2)
);

CREATE TABLE Supplier_Part (
    scode VARCHAR(10),
    pcode VARCHAR(10),
    qty INT,
    PRIMARY KEY (scode,pcode),
    FOREIGN KEY (scode) REFERENCES Supplier(scode),
    FOREIGN KEY (pcode) REFERENCES Part(pcode)
);

INSERT INTO Supplier VALUES
('S101', 'Sheoran & Sons', 'Bombay', '10000000'),
('S102', 'Hindustan Motors', 'Ahemdabad', '5000000'),
('S103', 'KPMG', 'Abu Dhabi', '7500000'),
('S104', 'Deloitte', 'London', '15000000'),
('S105', 'Oracle', 'New Jersey', '700000000');

INSERT INTO Part VALUES
('P101', '25', 'Green', '75', '999'),
('P102', '32', 'Blue', '20', '2199'),
('P103', '78', 'Yellow', '49', '1199'),
('P104', '55', 'Pink', '61', '599'),
('P105', '60', 'White', '80', '1499');


INSERT INTO Supplier_Part VALUES
('S101', 'P101', '145'),
('S102', 'P102', '89'),
('S103', 'P103', '602'),
('S104', 'P104', '321'),
('S105', 'P105', '11'),
('S103', 'P105', '91');


-- Q1
SELECT scode, pcode
FROM Supplier_Part
ORDER BY scode ASC;

-- Q2
SELECT *
FROM Supplier
WHERE scity = 'Bombay' AND turnover = 50;

-- Q3
SELECT COUNT(*) AS total
FROM Supplier;

-- Q4
SELECT pcode
FROM Part
WHERE weigh BETWEEN 25 AND 35;

-- Q5
SELECT scode
FROM Supplier
WHERE turnover IS NULL;

-- Q6
SELECT pcode
FROM Part
WHERE cost IN (20, 30, 40);

-- Q7
SELECT SUM(qty) 
FROM Supplier_Part
WHERE pcode = 'P102';

-- Q8
SELECT sname
FROM Supplier
WHERE scode IN (SELECT scode FROM Supplier_Part WHERE pcode = 'P102');

-- Q9
SELECT pcode
FROM Part
WHERE cost > (SELECT AVG(cost) FROM Part);

-- Q10
SELECT scode, turnover
FROM Supplier
ORDER BY turnover DESC;




