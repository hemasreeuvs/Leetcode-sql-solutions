-- Write your PostgreSQL query statement below
with previous as (
Select 
       id, temperature, recordDate,
       LAG(temperature) OVER (ORDER BY recordDate) AS ps_temp,
       LAG(recordDate) OVER (ORDER BY recordDate) AS ps_date
from Weather
)

select id
from previous
where temperature > ps_temp
AND datediff(recordDate, ps_date) = 1;
