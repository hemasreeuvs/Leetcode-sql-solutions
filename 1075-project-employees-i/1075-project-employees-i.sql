-- Write your PostgreSQL query statement below
select project_id,round(avg(experience_years)::numeric,2) as average_years
from project as p
inner join
employee as e
on
p.employee_id =e.employee_id 
group by p.project_id
order by p.project_id


