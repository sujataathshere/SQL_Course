# SQL_Course
* We use SQL to interact with DBMS to manage/change DS.

# Database
- It is a collection of data in a format that can be easily accessed
- A s/w application used to manage our DB is called DBMS

# Types of Database
1. Relational
- Data stored in tables
eg. MySQL, Oracle, PostgreSQL, Microsoft SQL Server
2. Non-relational(NoSQL)
- Data not stored in tables
eg. mongoDB

# What is SQL?
- It is a programming language used to interact with relational databases.
- It is used to perform CRUD operations: Create, Read, Update & Delete

# SQL Datatypes
- They define the type of values that can be stored in a column
- eg. char, varchar, blob, int, tinyint, bigint, float, double, boolean, date, year, etc.

# Types of SQL Commands
1. DDL(Data Definition Language) : Create, Alter, Remain, Truncate & Drop
2. DQL(Data Query Language) : Select
3. DML(Data Manipulation Language) : Insert, Update & Delete
4. DCL(Data Control Language) : Grant & Revoke permission to users
5. TCL(Transaction Control Language) : Start transaction, Commit, Rollback

# Database related Queries
- CREATE DATABASE db_name;
- DROP DATABASE db_name;
- SHOW DATABASES;
- SHOW TABLES;

# Table related Queries
1. To Create
```sql
CREATE TABLE table_name(
    col_name1 datatype contraint,
    col_name2 datatype contraint,);
```
2. To Delete
```sql
DROP TABLE table_name;
```
3. To Show
```sql
SELECT * FROM table_name;
```
4. To Add
```sql
INSERT INTO table_name VALUES(colname1_v1, colname2_v2, colname3_v3);
INSERT INTO table_name(colname1, colname2, colname3) VALUES(col1_v1, col2_v1, col3_v1),
(col1_v2, col2_v2, col3_v2);
```
# Keys
1. Primary key
- It is a column or set of columns in a table that uniquely identifies each row.
- There is only 1 PK & it should be NOT null.
2. Foreign key
- It is a column or set of columns in a table that refers to the primary key
- There can be multiple FKs.
- FKs can have duplicate & null values.

# Constraints
- SQL constraints are used to specify rules for data in a table.
1. NOT NULL
- columns can not have a null value
- eg. col1 int NOT NULL
2. UNIQUE
- All values in column are different
- eg. col2 int UNIQUE
3. PRIMARY KEY
- It makes a column unique & not null but used only for one
- eg. id int PRIMARY KEY
4. FOREIGN KEY
- It prevent actions that would destroy links between tables
5. DEFAULT
- It sets the default value of a column
- eg. salary INT DEFAULT 25000
6. CHECK
- It can limit the values allowed in a column
- eg. age INT CHECK (age >= 18)

# Select in Detail
- used to select any data from the database.
```sql
SELECT column_name 
FROM table_name;
```
# Distinct statement
- Used to return only distinct (different) values.
```sql
SELECT DISTINCT column_name 
FROM table_name;
```
# Where Clause
- To define some conditions
```sql
SELECT * FROM table_name 
WHERE condition;
```
# Operators in WHERE
1. Arithmetic Operators : +(add), -(sub), *(mul), /(div), %(mod)

2. Comparison Operators : = (equal to), != (not equal to), >, >=, <, <=

3. Logical Operators : AND, OR, NOT, IN, BETWEEN, ALL, LIKE, ANY
- AND : To check for both conditions to be true
- OR : TO check for one of the conditions to be true
- BETWEEN : Selects for a given range
- IN : Matches any value in the list
- NOT : To negate the given condition
 
4. Bitwise Operators : &(Bitwise AND), |(Bitwise OR)

# Limit Clause
- Sets an upper limit on number of (tuples) rows to be retuned
```sql
SELECT col1, col2 
FROM table_name 
LIMIT number; 
```
# Order By Clause
- To sort in ascending(ASC) or descending order(DESC)
```sql
SELECT col1, col2 
FROM table_name 
ORDER BY col_names ASC;
```
# Aggregate Functions
- It perform a calculation on a set values, and return a single value.
1. COUNT()
2. MAX()
3. MIN()
4. SUM()
5. AVG()
```sql
SELECT fun_name(col_name) 
FROM table_name;
```
# Group By Clause
- Groups rows that have tghe same values into summary rows.
- It collects data from multiple records & groups the result by one or more column.
- Genarally we use group by with some aggregation function.
```sql
SELECT col1_name, fun_name(col2_name) 
FROM table_name 
GROUP BY col1_name;
```
# Having Clause
- Similar to Where i.e applies some condition on rows.
- Used when we want to apply any condition after grouping.
```sql
SELECT col1_name, AG_FUN(col2_name) 
FROM table_name 
GROUP BY col1_name 
HAVING condition;
```
# General Order
SELECT column(s)
FROM table_name
WHERE condition
GROUP BY column(s)
HAVING condition
ORDER BY column(s) ASC/DESC;

# Table related Queries
1. UPDATE 
- To update existing rows
```sql
 UPDATE table_name SET col1 = val1, col2 = val2 WHERE condition;
```
2. DELETE
- To delete existing rows
```sql
DELETE FROM table_name WHERE condition;
```
# Cascasding for FK
* On Delete Cascade
- When we create a foreign key using this option, it deletes the referencing rows in the child table when the referenced row is deleted in the parent table which has a primary key.

* On Update Cascade
- When we create a foreign key using UPDATE CASCADE the referencing rows are updated in the child table when the referenced row is updated in the parent table which has a primary key.

```sql
CREATE TABLE student (
    id INT PRIMARY KEY,
    courseID INT,
    FOREIGN KEY(courseID) REFERENCES course(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
```
# Table Related Queries
* Alter - to change the schema

1. ADD Column
```sql
ALTER TABLE table_name
ADD COLUMN column_name datatype constraint;
```
2. DROP Column
```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```
3. RENAME Table
```sql
ALTER TABLE table_name
RENAME TO new_table_name;
```
4. Change Column (rename)
```sql
ALTER TABLE table_name
CHANGE COLUMN old_name new_name new_datatype new_constraint;
```
5. Modify Column (modify datatype/ constraint)
```sql
ALTER TABLE table_name
MODIFY col_name new_datatype new_constraint;
```
6. Truncate (to delete table's data)
```sql
TRUNCATE TABLE table_name;
```
# JOINs
- It is used to combine rows from two or more tables, based on a related column between them.

1. Inner Join
- It returns records that have matching values in both tables
```sql
SELECT column(s)
FROM tableA
INNER JOIN tableB
ON tableA.col_name = tableB.col_name;
```
# Alias - alternative name
```sql
SELECT full_name as f_name, marks 
FROM table_name;

SELECT city, AVG(marks) as avg_marks 
FROM table_name
GROUP BY city;

SELECT column(s)
FROM tableA as A
INNER JOIN tableB as B
ON A.col_name = B.col_name;
```
2. Left Join
- It returns all records from the left table, and the matched records from the right table.
```sql
SELECT column(s)
FROM tableA A
LEFT JOIN tableB B
ON A.col_name = B.col_name;
```

3. Right Join
- It returns all records from the right table, & the matched records from the left table.
```sql
SELECT column(s)
FROM tableA A
RIGHT JOIN tableB B
ON A.col_name = B.col_name;
```
4. Full Join
- It returns all records when there is a match in either left or right table.
- Full Join keyword dose not exist in mysql to perfom full join we use UNION keyword.
- In oracal & postgre sql FULL JOIN & FULL OUTER JOIN keyword is there through this keyword it is possible.
```sql
LEFT JOIN
UNION 
RIGHT JOIN
```
* UNION - It returns all unique values

* UNION ALL - It returns all repeated values

# Left Exclusive Join
- It returns all records from the left table, & not a matched records from the left table. 
```sql
SELECT column(s)
FROM tableA A
LEFT JOIN tableB B
ON A.col_name = B.col_name
WHERE B.col_name IS NULL;
```
# Self Join
- It is a regular join but the table is joined with itself.
```sql
SELECT column(s)
FROM tableA as a
JOIN tableA as b
ON a.col_name = b.col_name;
```