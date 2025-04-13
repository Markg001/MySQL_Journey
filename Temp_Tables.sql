-- Temporary Tables
USE parks_and_recreation;

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
); 

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES
    ('Mark', 'Gitonga', 'Prison Break'),
    ('Gladys', 'Wamuyu', 'Originals'),
    ('Jaba', 'Kimotho', 'The Gorge'),
    ('Pesh', 'Muthaiga', 'Tiktok'),
    ('Mzae', 'Allan', 'Shameless'),
    ('Betty', 'Karis', 'From');


SELECT *
FROM temp_table;

-- OTHER WAY

SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k;
-- Only last ony when within the seession TEMP TABLE is for more advance thins CTE is simple things 

