CREATE DATABASE IF NOT EXISTS XYZ;

USE XYZ;

CREATE TABLE employee(id INT PRIMARY KEY, name varchar(100), salary INT);

INSERT INTO employee(id, name, salary) 
VALUES(
    1, "adam", 25000
    2, "bob", 30000
    3, "casey", 40000);

SELECT * FROM employee;