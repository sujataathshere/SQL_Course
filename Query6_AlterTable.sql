/* Alter Table */

USE college;

SELECT * FROM student;

/* ADD Column */
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

/* Modify Column */
ALTER TABLE student
MODIFY age VARCHAR(2);

INSERT INTO student
(rollno, name, marks, age)
VALUES (107, "gargi", 68, 100);

/* Change Column */
ALTER TABLE student
CHANGE age stud_age INT;

INSERT INTO student
(rollno, name, marks, stud_age)
VALUES (107, "gargi", 68, 100);

/* Drop Table */
ALTER TABLE student
DROP COLUMN stud_age;

/* Rename Column */
ALTER TABLE student
RENAME TO stud;

SELECT * FROM stud;

/* Truncate Table */
TRUNCATE TABLE student;