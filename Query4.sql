/* Table Queries */

/* Set all grade 'A' into grade 'O' */
UPDATE student
SET grade = "O"
WHERE grade = "A";

/* Change the marks of roll no 105 from 12 to 82   n also grade */
UPDATE student
SET marks = 82
WHERE rollno = 105;