-- Exploratory Data Analysis

SELECT *
FROM layoffs_staging2;
-- Basically we will be analyzing the data  we will focus on toatl laid off and percentage laif off but since we dont 
-- have the total number off employee we will  just analyze
-- most of the time some has a rough idea of what you want but in our case we will be analyzing and get to build an Understanding
-- 1 represents 100 

SELECT MAX(total_laid_off), MAX(percentage_laid_off) 
FROM layoffs_staging2;


SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY total_laid_off DESC;

SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;
-- Here we can see the company that laid off the total number of employees 
SELECT company, SUM(total_laid_off), date
FROM layoffs_staging2
GROUP BY company, date
ORDER BY 2 DESC;

SELECT MAX(`date`), MIN(`date`)
FROM layoffs_staging2;
-- here we will look at the industry that got affected
SELECT industry, SUM(total_laid_off), date
FROM layoffs_staging2
GROUP BY industry, date
ORDER BY 2 DESC;

SELECT country, SUM(total_laid_off), date
FROM layoffs_staging2
GROUP BY country, date
ORDER BY 2 DESC;

SELECT YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY YEAR(`date`)
ORDER BY 1 DESC;

SELECT stage, SUM(total_laid_off), date
FROM layoffs_staging2
GROUP BY stage, date
ORDER BY 2 DESC;

SELECT country, SUM(total_laid_off), date
FROM layoffs_staging2
GROUP BY country, date
ORDER BY 2 DESC;

SELECT SUBSTRING(`date`,1,7) AS MONTH, SUM(total_laid_off)
FROM layoffs_staging2
WHERE SUBSTRING(`date`,1,7) IS NOT NULL
GROUP BY `MONTH`
ORDER BY 1 ASC;

WITH Rolling_Total AS
(
SELECT SUBSTRING(`date`,1,7) AS MONTH, SUM(total_laid_off) AS total_off
FROM layoffs_staging2
WHERE SUBSTRING(`date`,1,7) IS NOT NULL
GROUP BY `MONTH`
ORDER BY 1 ASC
)
SELECT `MONTH`, total_off,
SUM(total_off) OVER(ORDER BY `MONTH`) AS rolling_total
FROM Rolling_Total;


SELECT company, SUM(total_laid_off), date
FROM layoffs_staging2
GROUP BY company, date
ORDER BY 2 DESC;

SELECT company, SUM(total_laid_off), YEAR(`date`)
FROM layoffs_staging2
GROUP BY company, YEAR(`date`)
ORDER BY 3 DESC;

WITH  company_year (company, years, total_laid_off) AS
(
SELECT company,  YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company, YEAR(`date`)
), Company_Year_Rank AS
(SELECT *, 
DENSE_RANK() OVER (PARTITION BY years ORDER BY total_laid_off DESC) AS Ranking
FROM Company_year
WHERE years IS NOT NULL
)
SELECT *
FROM Company_Year_Rank
WHERE Ranking <= 5;