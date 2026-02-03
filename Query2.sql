CREATE DATABASE college;

USE college;

CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city) 
VALUES
(101, "Anil", 78, "C", "Pune"),
(102, "Bhumika", 93, "A", "Mumbai"),
(103, "Chetan", 85, "B", "Mumbai"),
(104, "Dhruv", 96, "A", "Delhi"),
(105, "Emanuel", 12, "F", "Delhi"),
(106, "Farah", 82, "B", "Delhi");

SELECT * FROM student;

/* Distinct Statement*/
SELECT DISTINCT city FROM student;

/* Where Clause*/
SELECT * FROM student WHERE marks>80;
SELECT* FROM student WHERE city="Mumbai";
