-- Write your PostgreSQL query statement below

with cte as (
    select 
	    student_id, subject,
	    first_value(score) over(partition by student_id, subject order by exam_date asc) as first_score,
	    last_value(score) over (partition by student_id, subject order by exam_date desc) as latest_score,
	    row_number() over (partition by student_id, subject order by exam_date desc) as rank
	from scores
)
select student_id, subject, first_score, latest_score
from cte
where latest_score > first_score and rank = 1;
