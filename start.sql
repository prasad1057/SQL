CREATE DATABASE college1;
USE college1;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(10),
    city VARCHAR(20)
);


INSERT INTO student(rollno, name, marks, grade, city)
VALUES
(101,"Durvesh", 78,"C", "Alibag"),
(102, "prasad", 93, "A", "Panvel"),
(103, "Nikhil", 85, "B", "Panvel"),
(104,"Sujata", 96, "A", "Thane"),
(105, "Diva", 12, "F", "Thane"),
(106, "Pranav", 82, "B", "Thane");

SELECT * FROM student;
SELECT rollno, name FROM student;
SELECT DISTINCT city FROM student;

SELECT * FROM student WHERE marks > 80 AND city = "Thane";
SELECT * FROM student WHERE marks+10 > 100;

SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city IN ("Panvel","Thane");
SELECT * FROM student WHERE city NOT IN ("Panvel","Thane");

SELECT * FROM student 
WHERE marks > 75
LIMIT 3; 

SELECT * FROM student
ORDER BY marks DESC
LIMIT 3;

SELECT AVG(marks)
FROM student;

SELECT MAX(city)
FROM student;

SELECT COUNT(rollno)
FROM student;

SELECT MIN(marks)
FROM student;

SELECT SUM(marks)
FROM student;

SELECT city, AVG(marks)
FROM student
GROUP BY city
ORDER BY city ASC;

SELECT grade, COUNT(rollno)
FROM student
GROUP BY grade
ORDER BY grade;

SELECT city, COUNT(rollno)
FROM student
GROUP BY city
HAVING MAX(marks) > 90;

SELECT city 
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) > 90
ORDER BY city DESC;

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = "O"
WHERE grade = "A";

UPDATE student
SET marks = marks + 1;

SELECT * FROM student;

UPDATE student
SET marks = 15
WHERE rollno = 105;

DELETE FROM student
WHERE marks < 33;



CREATE TABLE dept(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO dept
VALUES
(101, "shakuntala"),
(102, "shanatbai");

UPDATE dept
SET id = 103
WHERE id = 102;

SELECT * FROM dept;

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO teacher
VALUES 
(101, "jadhav", 101),
(102, "mohite", 102);

SELECT * FROM teacher;



INSERT INTO student(rollno, name, marks, grade, city)
VALUES
(101,"Durvesh", 78,"C", "Alibag"),
(102, "prasad", 93, "A", "Panvel"),
(103, "Nikhil", 85, "B", "Panvel"),
(104,"Sujata", 96, "A", "Thane"),
(105, "Diva", 12, "F", "Thane"),
(106, "Pranav", 82, "B", "Thane");

SELECT * FROM student;


ALTER TABLE student
ADD COLUMN age INT;

ALTER TABLE student
DROP COLUMN age;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student
MODIFY age VARCHAR(2);

ALTER TABLE student
CHANGE age stu_age INT;

TRUNCATE TABLE STUDENT;

