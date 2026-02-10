USE college;

CREATE TABLE dept (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO dept VALUES 
(101, "English"),
(102, "IT");

SELECT * FROM dept;

CREATE TABLE teacher (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id);
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO teacher VALUES
(101, "Adam", 101),
(102, "Eve", 102);

SELECT * FROM teacher;

/* Update */
/* Set IT dept id from 102 to 103*/
UPDATE dept
SET id = 103
WHERE id = 102;

/* Set English dept id from 101 to 111*/
UPDATE dept
SET id = 111
WHERE id = 101;