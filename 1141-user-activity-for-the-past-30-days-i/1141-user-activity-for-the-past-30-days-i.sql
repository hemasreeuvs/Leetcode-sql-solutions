-- Write your PostgreSQL query statement below



select count(distinct user_id) as active_users , activity_date as day
from Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
Group by activity_date
