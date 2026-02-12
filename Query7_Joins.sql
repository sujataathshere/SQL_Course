USE college;

DROP TABLE student;

CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student VALUES 
(101, "Adam"),
(102, "Bob"),
(103, "Casey");

CREATE TABLE course(
    id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO course VALUES
(102, "English"),
(105, "MAth"),
(103, "Science"),
(107, "Computer Science");

/* Inner Join*/
SELECT * FROM student
INNER JOIN course
ON student.id = course.id;

/* Left Join*/
SELECT * FROM student s
LEFT JOIN course c
ON s.id = c.id;

/* Right Join*/
SELECT * FROM student s
RIGHT JOIN course c
ON s.id = c.id;
