-- Write your PostgreSQL query statement below
select coalesce(e.employee_id, s.employee_id) employee_id from employees e
full join Salaries s
on e.employee_id = s.employee_id
where salary is null or name is null;
