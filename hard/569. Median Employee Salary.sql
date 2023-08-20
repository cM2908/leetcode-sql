WITH cte AS (
	SELECT id,company,salary,
		ABS(ROW_NUMBER() OVER (PARTITION BY company ORDER BY salary,id) - ROW_NUMBER() OVER (PARTITION BY company ORDER BY salary DESC,id DESC)) AS diff
	FROM employee_569
)
SELECT id,company,salary
FROM cte 
WHERE diff = 0 OR diff = 1;
