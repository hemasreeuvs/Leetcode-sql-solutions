-- Write your PostgreSQL query statement below
select firstName, lastName, city , state
from Person as p 
LEFT JOIN Address as a
on
p.personId = a.personId