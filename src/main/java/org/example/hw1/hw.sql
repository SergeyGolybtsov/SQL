CREATE DATABASE skypro;
CREATE TABLE employee (
        id         BIGSERIAL   NOT NULL PRIMARY KEY,
        first_name VARCHAR(50) NOT NULL,
        last_name  VARCHAR(50) NOT NULL,
        gender     VARCHAR(6)  NOT NULL,
        age        INT         NOT NULL
        );

        INSERT INTO employee (first_name, last_name, gender, age)
        VALUES ('Сергей', 'Голубцов', 'Муж', 20);

        INSERT INTO employee (first_name, last_name, gender, age)
        VALUES ('Дмитрий', 'Мисюрев', 'Муж', 19);

        INSERT INTO employee (first_name, last_name, gender, age)
        VALUES ('Евгений', 'Квасов', 'Муж', 27);

        INSERT INTO employee (first_name, last_name, gender, age)
        VALUES ('Михаил', 'Рыбаков', 'Mуж', 36);

        INSERT INTO employee (first_name, last_name, gender, age)
        VALUES ('Роман', 'Игнатов', 'Муж', 22);

        SELECT first_name AS Имя,
        last_name  AS Фамилия
        FROM employee;

        SELECT *
        FROM employee
        WHERE age < 30
        OR age > 50;

        SELECT *
        FROM employee
        WHERE age BETWEEN 30 AND 50;

        SELECT *
        FROM employee
        ORDER BY last_name DESC;

        SELECT *
        FROM employee
        WHERE length(first_name) > 4;

        UPDATE employee
        SET first_name = 'Андрей'
        WHERE last_name = 'Ворчунов';
        UPDATE employee
        SET first_name = 'Федерико'
        WHERE last_name = 'Фелени';

        SELECT first_name AS Имя,
        SUM(age) AS "Суммарный возраст"
        FROM employee
        GROUP BY Имя;

        SELECT first_name AS Имя,
        MIN(age) AS "Минимальный возраст"
        FROM employee
        GROUP BY Имя;

        SELECT first_name AS Имя,
        MAX(age)   AS "Максимальный возраст"
        FROM employee
        GROUP BY Имя
        HAVING COUNT(first_name) > 1
        ORDER BY "Максимальный возраст";