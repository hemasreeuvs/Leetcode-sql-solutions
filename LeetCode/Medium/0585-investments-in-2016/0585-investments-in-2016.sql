-- Write your PostgreSQL query statement below
with cte as(
    select tiv_2016,
    count (*) over (partition by tiv_2015) as tiv_2015_count,
    count(*) over (partition by lat, lon) as loc_count
    from 
    insurance
)

SELECT
    ROUND(SUM(tiv_2016)::numeric, 2) AS tiv_2016
FROM
    cte
WHERE
    tiv_2015_count > 1
    AND loc_count = 1