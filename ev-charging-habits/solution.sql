
/* 
Task 1: Find the number of unique individuals that use each garage’s shared charging stations.
Output: garage_id, num_unique_users
Sort: Highest to lowest number of unique users
Save as: unique_users_per_garage
*/
SELECT garage_id, COUNT(DISTINCT user_id) AS num_unique_users
FROM charging_sessions
WHERE user_type = 'Shared'
GROUP BY garage_id
ORDER BY num_unique_users DESC;


/* 
Task 2: Find the top 10 most popular charging start times (by weekday and start hour) 
for sessions that use shared charging stations.
Output: weekdays_plugin, start_plugin_hour, num_charging_sessions
Sort: Most to least number of sessions
Save as: most_popular_shared_start_times
*/
SELECT weekdays_plugin, start_plugin_hour,
       COUNT(*) AS num_charging_sessions
FROM charging_sessions
WHERE user_type = 'Shared'
GROUP BY weekdays_plugin, start_plugin_hour
ORDER BY num_charging_sessions DESC
LIMIT 10;


/* 
Task 3: Find the users whose average charging duration lasts longer than 10 hours 
when using shared charging stations.
Output: user_id, avg_charging_duration
Sort: Highest to lowest average charging duration
Save as: long_duration_shared_users
*/
SELECT user_id, AVG(duration_hours) AS avg_charging_duration
FROM charging_sessions
WHERE user_type = 'Shared'
GROUP BY user_id
HAVING AVG(duration_hours) > 10
ORDER BY avg_charging_duration DESC;
