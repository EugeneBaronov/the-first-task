-- Задание №1. Создание базы данных для хранения информации о сотрудниках.

-- Создаем БД "Компания"
-- CREATE DATABASE IF NOT EXISTS company;

-- Начинаем работать с БД
-- USE company;

-- Создаем таблицу "Сотрудники"
/*
CREATE TABLE IF NOT EXISTS workers(
id INT UNSIGNED NOT NULL AUTO_INCREMENT primary key,
first_name VARCHAR(15) NOT NULL,
last_name VARCHAR(15) NOT NULL,
post VARCHAR(25) NOT NULL
);
*/
-- Создаем таблицу "Зарплата"
/*
CREATE TABLE IF NOT EXISTS salary(
id INT UNSIGNED NOT NULL AUTO_INCREMENT primary key,
post VARCHAR(25) NOT NULL,
salary INT
);
*/
-- Добавляем информацию в таблицу "Сотрудники"
/*
INSERT INTO workers (id, first_name, last_name, post) VALUES (null, 'Marya', 'Zakharova', 'Director');
INSERT INTO workers (id, first_name, last_name, post) VALUES (null, 'Ivan', 'Petrov', 'Head of department');
INSERT INTO workers (id, first_name, last_name, post) VALUES (null, 'Dmitry', 'Morozov', 'leading specialist');
INSERT INTO workers (id, first_name, last_name, post) VALUES (null, 'Ekaterina', 'Makarova', 'leading specialist');
INSERT INTO workers (id, first_name, last_name, post) VALUES (null, 'Igor', 'Ivanov', 'junior specialist');
INSERT INTO workers (id, first_name, last_name, post) VALUES (null, 'Sergey', 'Makhalov', 'junior specialist');
INSERT INTO workers (id, first_name, last_name, post) VALUES (null, 'Egor', 'Polyakov', 'junior specialist');

*/
-- Добавляем информацию в таблицу "Зарплата"
/*
INSERT INTO salary (id, post, salary) VALUES (null, 'Director', '50000');
INSERT INTO salary (id, post, salary) VALUES (null, 'Head of department', '40000');
INSERT INTO salary (id, post, salary) VALUES (null, 'leading specialist', '25000');
INSERT INTO salary (id, post, salary) VALUES (null, 'junior specialist', '20000');
*/

-- ***************************************************************************************************************************

-- Задание №2. Составить запросы на выборку данных.

-- Добавляем в таблицу "Сотрудники" столбец "salary_id"
-- ALTER TABLE workers ADD salary_id INTEGER NOT NULL;

-- Устанавливаем значения salary_id для таблицы "Сотрудники"
/*
update workers set salary_id=1 where id IN (1);
update workers set salary_id=2 where id IN (2);
update workers set salary_id=3 where id IN (3,4);
update workers set salary_id=4 where id IN (5,6,7);
*/

-- Запрос на выборку всех сотрудников с зарплатой менее 30000 рублей
/*
SELECT workers.first_name, workers.last_name, salary.salary
FROM workers INNER JOIN
salary ON workers.salary_id = salary.id
WHERE salary<30000;
*/

-- Запрос на выборку всех сотрудников с определенной должностью и зарплатой менее 30000 рублей
/*
SELECT workers.first_name, workers.last_name, workers.post, salary.salary
FROM workers INNER JOIN
salary ON workers.salary_id = salary.id
WHERE (workers.post='junior specialist' and salary<30000);
*/

-- ***************************************************************************************************************************

