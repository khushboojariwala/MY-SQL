/*CREATE DATABASE shop;
USE shop;

CREATE TABLE Salesman (
salesman_id INT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
city VARCHAR(255),
commission DECIMAL(10, 2)
);

CREATE TABLE Customer (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(255) NOT NULL,
city VARCHAR(255),
grade INT,
salesman_id INT,
FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id)
);

INSERT INTO Salesman (salesman_id, name, city, commission)
VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12);
    
INSERT INTO Customer (customer_id, customer_name, city, grade, salesman_id)
VALUES
(3002, 'Nick Rimando', 'New York', 100,5001),
(3007, 'Brad Davis', 'New York', 200,5001),
(3005, 'Graham Zusi', 'California',200,5002),
(3008, 'Julian Green', 'London', 300,5002),
(3004, 'Fabian Johnson', 'Paris', 300,5006),
(3009, 'Geoff Cameron', 'Berlin', 100,5003),
(3003, 'Jozy Altidor', 'Moscow', 200,5007),
(3001, 'Brad Guzan', 'London',0,5005);
    
SELECT
C.customer_name AS Customer_Name,
C.city AS Customer_City,
S.name AS Salesman_Name,
S.commission AS Salesman_Commission
FROM
    Customer AS C
JOIN
    Salesman AS S
ON
    C.salesman_id = S.salesman_id;*/
    
CREATE DATABASE School;
USE School;

CREATE TABLE Student(
Rollno INT PRIMARY KEY,
Name VARCHAR(255) NOT NULL,
Branch VARCHAR(255)
);

CREATE TABLE Exam(
Rollno INT,
S_code VARCHAR(100),
Marks INT,
P_code VARCHAR(100),
FOREIGN KEY (Rollno) REFERENCES Student(Rollno)
);

INSERT INTO Student (Rollno, name, Branch)
VALUES
(1, 'Jay', 'Computer Science'),
(2, 'Suhani', 'Electronic and Com'),
(3, 'Kriti', 'Electronic and Com');
    
INSERT INTO Exam(Rollno,S_code,Marks,P_code)
VALUES
(1, 'CS11',50,'CS'),
(1, 'CS12',60,'CS'),
(2, 'EC101',66,'EC'),
(2, 'EC102',70,'EC'),
(3, 'EC101',45,'EC'),
(3, 'EC102',50,'EC');
