
WITH highestsalary AS (
    SELECT 
        salary,
        DENSE_RANK() OVER(ORDER BY salary DESC) as rn
    FROM Employee
)

SELECT MAX(salary) AS SecondHighestSalary
FROM highestsalary
WHERE rn = 2;