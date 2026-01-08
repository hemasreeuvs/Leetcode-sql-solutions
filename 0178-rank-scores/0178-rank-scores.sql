-- Write your PostgreSQL query statement below
with rank as
(
    select 
        id,
        score,
        dense_rank() over( order by score desc) as rank
    from Scores
)

Select score , rank
from rank
