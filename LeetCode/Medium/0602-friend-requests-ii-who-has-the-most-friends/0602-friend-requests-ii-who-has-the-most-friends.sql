-- Write your PostgreSQL query statement below
select id , count(*) as num
from
(
    select requester_id as id
    from RequestAccepted
    Union All
    select accepter_id as id
    from RequestAccepted
) as total
group by id
order by num desc
limit 1;