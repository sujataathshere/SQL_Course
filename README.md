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
-Data not stored in tables
eg. mongoDB

# What is SQL?
- It is a programming language used to interact with relational databases.
- It is used to perform CRUD operations: Create, Read, Update & Delete

# Create/Drop Database
* CREATE DATABASE db_name;
* DROP DATABASE db_name;

# Create Table
* CREATE TABLE table_name(
    col_name1 datatype contraint,
    col_name2 datatype contraint,
    col_name3 datatype contraint,
);

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
1. Create
- CREATE TABLE table_name(
    col_name1 datatype contraint,
    col_name2 datatype contraint,
);
2. To delete
- DROP TABLE table_name;
3. To show
- SELECT * FROM table_name;
4. To add
- INSERT INTO table_name VALUES(colname1_v1, colname2_v2, colname3_v3);
- INSERT INTO table_name(colname1, colname2, colname3) VALUES(col1_v1, col2_v1, col3_v1)
(col1_v2, col2_v2, col3_v2);

# Keys
1. Primary key
- It is a column or set of columns in a table that uniquely identifies each row.
- There is only 1 PK & it should be NOT null.
2. Foreign key