SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT first_name, 
last_name, 
birth_date,
age,
(age + 10) *10+10
FROM parks_and_recreation.employee_demographics;
#NB: FOLLOWS THIS ORDER
# PEMDAS PARENTHESES EXPONENT MULTIPLICATION DIVISION ADDITION AND SUBTRUCTION 

SELECT DISTINCT first_name, gender
FROM parks_and_recreation.employee_demographics;
