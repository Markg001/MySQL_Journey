SELECT*
FROM parks_and_recreation.employee_demographics;

SELECT*
FROM employee_salary;

SELECT dem.employee_id, age, occupation
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
-- OUTER JOINS

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
-- SELF JOIN
SELECT emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.first_name as first_name_santa,
emp2.last_name as last_name_santa
FROM employee_salary as emp1
JOIN employee_salary as emp2
	ON emp1.employee_id + 1 = emp2.employee_id;
    
-- Joining multiple tables Together

SELECT*
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	on sal.dept_id = pd.department_id;
    
SELECT *
FROM parks_departments;