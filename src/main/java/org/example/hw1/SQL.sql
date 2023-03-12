CREATE DATABASE skypro;
CREATE TABLE employee (
id         BIGSERIAL   NOT NULL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name  VARCHAR(50) NOT NULL,
gender     VARCHAR(6)  NOT NULL,
age        INT         NOT NULL
);
SELECT * FROM employee;
INSERT INTO employee (
first_name, last_name, gender, age)
VALUES ('Sergey', 'Golubtsov', 'Male', 20);
INSERT INTO employee(
first_name, last_name, gender, age)
VALUES ('Sergey', 'Golubtsov', 'Male', 21);
INSERT INTO employee(
first_name, last_name, gender, age)
VALUES ('Sergey', 'Golubtsov', 'Male', 22);
SELECT * FROM employee;
UPDATE employee
SET first_name = 'Dmitriy', last_name = 'Mitai',gender = 'male',age = '24'
WHERE last_name = 'zhykovich';
SELECT * FROM employee;
DELETE FROM employee WHERE last_name = 'Sergey';
SELECT * FROM employee;
