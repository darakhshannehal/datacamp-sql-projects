/*
Task 1: Find the ten best-selling games
Table: game_sales
Save as: top_10_best_selling_games
*/

SELECT name, platform, publisher, developer, games_sold, year
FROM game_sales
ORDER BY games_sold DESC
LIMIT 10;


------------------------------------------------------------

/*
Task 2: Find the ten years with the highest average critic score
Condition: At least 4 games released that year
Tables: game_sales, reviews
Save as: top_10_years_highest_avg_critic_score
*/

SELECT g.year, COUNT(g.name) AS num_games, ROUND(AVG(r.critic_score),2) AS avg_critic_score
FROM game_sales AS g
INNER JOIN reviews AS r
    ON g.name = r.name
GROUP BY g.year
HAVING COUNT(g.name) >= 4
ORDER BY avg_critic_score DESC
LIMIT 10;


------------------------------------------------------------

/*
Task 3: Find years where critics and users broadly agreed
Condition: avg critic score > 9 OR avg user score > 9
Tables: users_avg_year_rating, critics_avg_year_rating
Save as: critics_users_highly_rated_years
*/

SELECT ur.year, ur.num_games, cr.avg_critic_score, ur.avg_user_score,
       cr.avg_critic_score - ur.avg_user_score AS diff
FROM users_avg_year_rating AS ur
INNER JOIN critics_avg_year_rating AS cr
    ON ur.year = cr.year
    AND ur.num_games = cr.num_games
WHERE ur.avg_user_score > 9 OR cr.avg_critic_score > 9
ORDER BY ur.year ASC;
