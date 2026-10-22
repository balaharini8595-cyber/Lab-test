CREATE DATABASE DBMSDB;
USE DBMSDB;
CREATE TABLE Students (
StudentID INT PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
Email VARCHAR(100) UNIQUE,
Age INT,
City VARCHAR(50)
);
DESC Students;
USE DBMSDB;
INSERT INTO Students (StudentID, Name, Email, Age, City) VALUES
(1, 'Aparna', 'aparna@gmail.com', 20, 'Chennai'),
(2, 'Rahul', 'rahul@gmail.com', 21, 'Delhi'),
(3, 'Priya', 'priya@gmail.com', 22, 'Mumbai');
SELECT * FROM Students;
USE CollegeDB;
-- Create View
CREATE VIEW StudentView AS
SELECT Name, City FROM Students;
-- Retrieve data from View
SELECT * FROM StudentView;
-- Update View
CREATE OR REPLACE VIEW StudentView AS
SELECT Name, Age FROM Students;
-- Retrieve updated View
SELECT * FROM StudentView;
-- Drop View
DROP VIEW StudentView;