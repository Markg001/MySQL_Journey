-- Case STATEMENT

SELECT *, 
CASE 
	WHEN age >= 40 THEN 'Old'
    WHEN age <= 40 THEN 'Young'
    WHEN age = 40 THEN 'AVERAGE'
END AS AgeCategory
FROM employee_demographics;

-- QUESTION
-- The council sent a memo and we need to follow it and determine peoples end year salary 
-- and there bonuses 
-- < 50000 = 5% Raise
-- > 50000 = 7% Raise
-- Finances = 10% Raise
SELECT first_name, last_name, salary,dept_id,
CASE 
	WHEN salary > 50000 THEN salary + (salary * 1.05)
    WHEN salary < 50000 THEN salary + (salary * 1.07)
END AS New_Salary,
-- FOR FINANCE  6 is the finace departement
CASE
	WHEN dept_id = 6 THEN salary + (salary * 1.10)
FROM employee_salary;
SELECT first_name, last_name, salary,
CASE 
	WHEN salary > 50000 THEN salary + (salary * 1.07) 
	WHEN salary < 50000 THEN salary + (salary * 1.05) 
END AS New_Salary,
-- FOR FINANCE  6 is the finace departement
CASE 
	WHEN dept_id = 6 THEN salary + (salary * 0.10) 
END AS Finance_Adjusted_Salary

FROM employee_salary;
