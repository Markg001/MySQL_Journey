-- STRING FUNCTIONS
-- LENGTH
SELECT first_name, LENGTH(first_name)
FROM employee_demographics
order by 1;

-- UPPER LOWER
SELECT first_name, UPPER(first_name)
FROM employee_demographics;
SELECT last_name, LOWER(last_name)
FROM employee_demographics;

-- TRIM LTRIM, RTRIM
SELECT first_name, TRIM(    first_name)
FROM employee_demographics;
SELECT first_name, LTRIM(    first_name)
FROM employee_demographics;
SELECT first_name, RTRIM(    first_name         )
FROM employee_demographics;

-- LEFT RIGHT
SELECT first_name, LEFT(first_name, 3)
FROM employee_demographics;
SELECT first_name, RIGHT(first_name, 4)
FROM employee_demographics;


-- SUBSTRING
SELECT first_name, SUBSTRING(first_name,3,3)
FROM employee_demographics;

-- REPLACE Note Must be enclosed, LOCATE CONCAT(COMBINE )
SELECT first_name, REPLACE(first_name,'a','z')
FROM employee_demographics;
SELECT first_name, LOCATE('A',first_name)
FROM employee_demographics;
SELECT first_name, last_name, CONCAT(first_name, ' ', last_name) as Fullname
FROM employee_demographics;


