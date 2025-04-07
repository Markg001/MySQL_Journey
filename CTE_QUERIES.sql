-- CTEs

WITH CTE_Example AS (
	SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) Count_sal
	FROM parks_and_recreation.employee_demographics dem
    JOIN parks_and_recreation.employee_salary sal
        ON dem.employee_id = sal.employee_id
    GROUP BY gender
)
SELECT *
FROM CTE_Example;

SELECT AVG(avg_sal)
FROM CTE_Example; 

WITH CTE_Example2 as (
SELECT employee_id, gender, birth_date
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
),
CTE_Example3 AS (
SELECT employee_id, salary
FROM parks_and_recreation.employee_salary
WHERE salary > 5000
)
SELECT*
FROM CTE_Example2
JOIN CTE_Example3
	ON CTE_Example2.employee_id = CTE_Example3.employee_id;


