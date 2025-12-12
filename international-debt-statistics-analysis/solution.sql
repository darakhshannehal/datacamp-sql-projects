/* 
Question 1: Number of distinct countries
Output: single row, column aliased as total_distinct_countries
Save as: num_distinct_countries
*/
SELECT COUNT(DISTINCT country_name) AS total_distinct_countries
FROM international_debt;


/* 
Question 2: Country with the highest amount of debt
Output: country_name, total_debt (one row)
Save as: highest_debt_country
*/
SELECT country_name, SUM(debt) AS total_debt
FROM international_debt
GROUP BY country_name
ORDER BY total_debt DESC
LIMIT 1;


/* 
Question 3: Country with the lowest amount of principal repayments
Indicator code: DT.AMT.DLXF.CD
Output: country_name, indicator_name, lowest_repayment (one row)
Save as: lowest_principal_repayment
*/
SELECT country_name, indicator_name, MIN(debt) AS lowest_repayment
FROM international_debt
WHERE indicator_code = 'DT.AMT.DLXF.CD'
GROUP BY country_name, indicator_name
ORDER BY lowest_repayment
LIMIT 1;
