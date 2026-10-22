CREATE DATABASE StudentDB;
USE StudentDB;
CREATE TABLE Students (
StudentID INT PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
Email VARCHAR(100) UNIQUE,
Age INT,
City VARCHAR(50)
);
DESC Students;
USE StudentDB;
INSERT INTO Students (StudentID, Name, Email, Age, City) VALUES
(1, 'Aparna', 'aparna@gmail.com', 20, 'Chennai'),
(2, 'Rahul', 'rahul@gmail.com', 21, 'Delhi'),
(3, 'Priya', 'priya@gmail.com', 22, 'Mumbai');
SELECT * FROM Students;
USE CollegeDB;
UPDATE Students
SET Email= 'datascience23@gmail.com'
WHERE StudentID = 1;
SELECT * FROM Students;
DELETE FROM Students
WHERE StudentID = 3;
SELECT * FROM Students;