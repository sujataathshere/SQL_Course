/* Limit Clause*/
SELECT * FROM student LIMIT 3;

/* Order By Clause*/
SELECT * 
FROM student
ORDER BY city ASC;

SELECT * 
FROM student
ORDER BY marks DESC;

/* Top 3 students marks */
SELECT * 
FROM student
ORDER BY marks desc
limit 3;

/* Aggregate Function */
SELECT max(marks) FROM student;
SELECT min(marks) FROM student;
SELECT sum(marks) FROM student;
SELECT avg(marks) FROM student;

/* Group By Clause*/
/* Ques: Count number of students in each city */
SELECT city, count(name)
FROM student
GROUP BY city;

/* Ques: Average marks of students in each city */
SELECT city, avg(marks)
FROM student
GROUP BY city;

SELECT city, AVG(marks)
FROM student
GROUP BY city
ORDER BY AVG(marks);

/* Ques: Count the number of students in grade wise */
SELECT grade, COUNT(name)
FROM student
GROUP BY grade
ORDER BY grade;

/* Having Clause*/
/* Ques: Count number of students in each city where max marks cross 90. */
SELECT city, COUNT(name)
FROM student
GROUP BY city
HAVING MAX(marks)>90;