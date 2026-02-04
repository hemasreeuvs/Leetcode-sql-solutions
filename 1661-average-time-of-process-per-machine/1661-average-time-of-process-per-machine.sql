# Write your MySQL query statement below
WITH ProcessTimes AS (
    SELECT 
        machine_id,
        process_id,
        MAX(CASE WHEN activity_type = 'start' THEN timestamp END) as start_time,
        MAX(CASE WHEN activity_type = 'end' THEN timestamp END) as end_time
    FROM Activity
    GROUP BY machine_id, process_id
)
SELECT 
    machine_id,
    ROUND(AVG(end_time - start_time), 3) AS processing_time
FROM ProcessTimes
GROUP BY machine_id;