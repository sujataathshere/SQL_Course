USE college;

SELECT * FROM student;

/* A */
ALTER TABLE student
CHANGE COLUMN name full_name VARCHAR(50);

/* B */
DELETE FROM student
WHERE marks < 80;

/* C */
ALTER TABLE student
DROP COLUMN grade;