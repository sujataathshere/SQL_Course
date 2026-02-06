CREATE DATABASE IF NOT EXISTS college;

DROP DATABASE IF EXISTS temp;

USE college;

CREATE TABLE student (
	id INT PRIMARY KEY,
	name VARCHAR(50),
	age INT NOT NULL
);

INSERT INTO student VALUES(1, "AMAN", 26);
INSERT INTO student VALUES(2, "Shradha", 24);
INSERT INTO student VALUES(3, "Rohit", 25);

SELECT * FROM student;

/* Constraints */
CREATE TABLE temp (
	id INT,
	name VARCHAR(50),
	age INT,
	city VARCHAR(20),
	PRIMARY KEY (id, name)
);

CREATE TABLE customer (
	id INT,
	name VARCHAR(50),
	age INT,
	mobile_no INT,
	PRIMARY KEY (id)
);
CREATE TABLE address (
	cust_id INT,
	city VARCHAR(20),
	state VARCHAR(50),
	country VARCHAR(50),
	FOREIGN KEY (cust_id) references customer (id)
);

CREATE TABLE employee (
	id INT,
	salary INT DEFAULT 25000
);

INSERT INTO employee (id) VALUES(101);
INSERT INTO employee (id) VALUES(102);

SELECT * FROM employee;

CREATE TABLE voter (
	id INT PRIMARY KEY,
	name VARCHAR(30),
	age INT,
	city VARCHAR(50),
	CONSTRAINT age_check CHECK (age >= 18 AND city="Pune")
);