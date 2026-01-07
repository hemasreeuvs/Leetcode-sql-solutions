-- Write your PostgreSQL query statement below

WITH Duplicates AS (
    SELECT 
        email,
        ROW_NUMBER() OVER(ORDER BY id) as rn
    FROM Person
)

DELETE FROM Duplicates WHERE rn > 1;
