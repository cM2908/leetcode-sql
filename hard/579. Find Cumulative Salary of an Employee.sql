WITH cte AS(
	SELECT id,month,	
		SUM(salary) OVER w AS salary,
		ROW_NUMBER() OVER w AS row_num,
		COUNT(*) OVER w1 AS count
	FROM employee_579
	WINDOW w AS (PARTITION BY id ORDER BY month),
		w1 AS (PARTITION BY id)
)

SELECT id,month,salary
FROM cte
WHERE row_num<count
ORDER BY id,month DESC;
