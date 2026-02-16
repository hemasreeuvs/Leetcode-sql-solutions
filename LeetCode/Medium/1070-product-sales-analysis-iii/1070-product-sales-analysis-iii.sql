-- Write your PostgreSQL query statement below
with cte as
(
    select product_id, min(year) as min_year
    from sales
    group by product_id
)

select s.product_id , s.year as first_year , s.quantity , s.price
from sales as s
inner join
cte as c
on
s.product_id = c.product_id and s.year = c.min_year