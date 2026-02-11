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

SELECT * FROM student
INNER JOIN course
ON student.id = course.id;

