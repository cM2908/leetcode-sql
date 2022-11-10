WITH cnts AS (
	SELECT *,
	COUNT(salary) OVER (PARTITION BY salary) AS c
	FROM employees_1875
)
SELECT employee_id,name,salary,
	DENSE_RANK() OVER (ORDER BY salary) AS team_id
FROM cnts
WHERE c <> 1;
