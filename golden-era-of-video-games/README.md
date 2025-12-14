# When was the golden era of video games?

This project analyzes video game critic and user scores as well as sales data for the top 400 video games released since 1977. We'll search for a golden age of video games by identifying release years that users and critics liked best, and explore the business side of gaming by looking at game sales data.

------------------------------------------------------------------------

## Datasets

### game_sales

| Column     | Definition                       | Data Type |
|------------|----------------------------------|-----------|
| name       | Name of the video game           | VARCHAR   |
| platform   | Gaming platform                  | VARCHAR   |
| publisher  | Game publisher                   | VARCHAR   |
| developer  | Game developer                   | VARCHAR   |
| games_sold | Number of copies sold (millions) | FLOAT     |
| year       | Release year                     | INT       |

### reviews

| Column       | Definition                           | Data Type |
|--------------|--------------------------------------|-----------|
| name         | Name of the video game               | VARCHAR   |
| critic_score | Critic score according to Metacritic | FLOAT     |
| user_score   | User score according to Metacritic   | FLOAT     |

### users_avg_year_rating

| Column         | Definition                         | Data Type |
|----------------|------------------------------------|-----------|
| year           | Release year of the games reviewed | INT       |
| num_games      | Number of games released that year | INT       |
| avg_user_score | Average user score for the year    | FLOAT     |

### critics_avg_year_rating

| Column           | Definition                         | Data Type |
|------------------|------------------------------------|-----------|
| year             | Release year of the games reviewed | INT       |
| num_games        | Number of games released that year | INT       |
| avg_critic_score | Average critic score for the year  | FLOAT     |

------------------------------------------------------------------------

## Analysis Objectives

-   Find the **ten best-selling games**.
-   Find the **ten years with the highest average critic score**, where at least four games were released (to ensure a good sample size).
-   Find the **years where critics and users broadly agreed** that the games released were highly rated. Specifically, return the years where the average critic score was over 9 OR the average user score was over 9.