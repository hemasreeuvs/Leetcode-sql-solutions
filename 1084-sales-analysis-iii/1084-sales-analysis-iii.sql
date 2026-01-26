-- Write your PostgreSQL query statement below
select p.product_id,p.product_name
from
product as p
JOIN
sales as s
on
p.product_id = s.product_id
group by p.product_id,p.product_name
HAVING MIN(s.sale_date) >= '2019-01-01' AND MAX(s.sale_date) <= '2019-03-31';
