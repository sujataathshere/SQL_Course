USE college;

DROP TABLE student;

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

/* Example with WHERE*/
/*
Get names of all students who scored more than class average.
Step 1. Find the avg of class
Step 2. Find the names of students with marks>avg.
*/

SELECT AVG(marks) FROM student;

SELECT name, marks
FROM student
WHERE marks>(SELECT AVG(marks) FROM student);

/*
Find the names of all students with even roll numbers.
Step 1. Find the even roll numbers.
Step 2. Find the names of students with even roll no
*/

SELECT rollno 
FROM student 
WHERE rollno%2 = 0;

SELECT rollno, name 
FROM student
WHERE rollno IN(SELECT rollno FROM student WHERE rollno%2 = 0);

/* Example with FROM*/
/*
Find the max marks from the students of Delhi
Step 1. Find the students of Delhi
Step 2. Find their max marks using the sublist in step1
*/

SELECT marks 
FROM student 
WHERE city = "Delhi";

SELECT MAX(marks)
FROM (SELECT * FROM student WHERE CITY = "Delhi") As temp;

SELECT MAX(marks)
FROM student
WHERE city = "Delhi";

/* Example with SELECT*/
/* */
SELECT name,
       marks,
       city,
       (SELECT AVG(marks)
        FROM student s2
        WHERE s2.city = s1.city) AS city_avg_marks
FROM student s1;


