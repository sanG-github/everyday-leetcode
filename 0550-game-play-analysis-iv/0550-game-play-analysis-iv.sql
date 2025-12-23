# Write your MySQL query statement below
SELECT
  ROUND(
    COUNT(next_login.player_id) / COUNT(first_login.player_id),
    2
  ) AS fraction
FROM (
  SELECT player_id, MIN(event_date) AS first_login_date
  FROM Activity
  GROUP BY player_id
) first_login
LEFT JOIN Activity next_login
ON first_login.first_login_date + INTERVAL 1 DAY = next_login.event_date 
AND first_login.player_id = next_login.player_id