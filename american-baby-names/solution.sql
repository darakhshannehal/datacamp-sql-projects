/* 
Task 1: List the first five names in alphabetical order and classify each as "Classic" or "Trendy".
Definition: Classic if name appears in 50 or more years, otherwise Trendy.
Output: first_name, sum, popularity_type
Sort: Alphabetical order of first_name
*/

SELECT first_name, 
       SUM(num) AS sum,
       CASE
           WHEN (2025 - MAX(year)) >= 50 THEN 'Classic'
           ELSE 'Trendy'
       END AS popularity_type
FROM baby_names
GROUP BY first_name
ORDER BY first_name ASC 
LIMIT 5;

/* 
Task 2: Find the top 20 male names overall and include the rank of "Paul".
Output: name_rank, first_name, sum
Sort: Rank from most to least popular
*/

SELECT
    RANK() OVER (ORDER BY SUM(num) DESC) AS name_rank,
    first_name,
    SUM(num) AS sum
FROM baby_names
WHERE sex = 'M'
GROUP BY first_name
ORDER BY name_rank
LIMIT 20;

/* 
Task 3: Find female names that appeared in both 1920 and 2020.
Output: first_name, total_occurrences
Sort: Alphabetical order of first_name
*/

SELECT first_name,
       SUM(num) AS total_occurrences
FROM baby_names
WHERE sex = 'F' AND year IN (1920, 2020)
GROUP BY first_name
HAVING COUNT(DISTINCT year) = 2;
