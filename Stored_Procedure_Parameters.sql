-- Stored Procedures

SELECT *
FROM employee_salary;

CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries();

-- DELIMITER (;) Used to tell mysql that this is a different query so that it doesnt run any errrors
DELIMiTER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;
-- //////////////////////////////////////////////////////////////////////////////////
-- PARAMETER

DELIMiTER $$
CREATE PROCEDURE large_salaries4(Test INT)
BEGIN
	SELECT salary
	FROM employee_salary
	WHERE employee_id = Test;

END $$
DELIMITER ;

CALL large_salaries4(4);
