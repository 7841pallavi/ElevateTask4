CREATE DATABASE class;

USE class;

CREATE TABLE students(
     name VARCHAR(50),
     age INT,
     city VARCHAR(50),
     grade VARCHAR(2),
     marks INT
);

INSERT INTO students
(name, age, city, grade, marks)
VALUES
("aastha", 20, "delhi", "B", 89),
("varsha", 23, "pune", "A", 92),
("prerna", 22, "aurangabad", "B", 85),
("suverna", 21, "nagpur", "C", 75),
("pallavi", 21, "pune", "A", 95);

SELECT * FROM students;
SELECT name, age FROM students;

SELECT AVG(marks) FROM students;

SELECT city, AVG(marks)
FROM students
GROUP BY city;

SELECT city, COUNT(*)
FROM students
GROUP BY city
HAVING COUNT(*) > 3;

show tables;