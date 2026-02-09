/* Table Queries */

/* UPDATE QUERY*/
/* Set all grade 'A' into grade 'O' */
UPDATE student
SET grade = "O"
WHERE grade = "A";

/* Change the marks of roll no 105 from 12 to 82   n also grade */
UPDATE student
SET marks = 82
WHERE rollno = 105;

/* Set the students grade to B those who have marks between 80 to 90; */
UPDATE student
SET grade = "B"
WHERE marks BETWEEN 80 AND 90;

/* Change every students marks by +1 */
UPDATE student
SET marks = marks + 1;

/* DELETE QUERY*/
/* Delete the fail students*/
DELETE FROM student
WHERE marks < 35;

/* Delete all the rows*/
DELETE FROM student;