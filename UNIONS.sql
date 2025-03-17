-- UNIONS

SELECT first_name, last_name, 'Old' AS Lable
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION 
SELECT first_name, last_name, 'Old' AS Lable
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'High Salary' AS Lable
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name;
