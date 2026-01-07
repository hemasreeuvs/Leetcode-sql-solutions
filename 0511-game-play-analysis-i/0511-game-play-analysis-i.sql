-- -- Write your PostgreSQL query statement below
-- select min(event_date) as fisrt_login  , player_id
-- from Activity
-- group by player_id;


-- Write your PostgreSQL query statement below
SELECT player_id,MIN(event_date) AS first_login FROM Activity GROUP BY player_id;