-- SUB QUERIES

SELECT employee_id
FROM employee_demographics
WHERE employee_id IN 
			(SELECT employee_id
            FROM employee_salary
            WHERE dept_id = 1);
-- Another Method

SELECT first_name, salary, AVG(salary)
FROM employee_salary
GROUP BY first_name, salary;

SELECT first_name, salary,
(SELECT AVG(salary)
FROM employee_salary)
FROM employee_salary;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
group by gender;

SELECT gender, AVG(`MAX(age)`)-- back tick you can name tham usinga alias
FROM
(SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
group by gender) AS agg_table
GROUP BY gender;



