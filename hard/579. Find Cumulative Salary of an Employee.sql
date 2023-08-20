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

----------------------------- OR -----------------------------

SELECT e1.id,e1.month,SUM(e2.salary)
FROM employee_579 e1
JOIN employee_579 e2 ON e1.id = e2.id AND e1.month - e2.month BETWEEN 0 AND 2
WHERE (e1.id,e1.month) NOT IN (SELECT id,MAX(MONTH) FROM employee_579 GROUP BY id)
GROUP BY e1.id,e1.month
ORDER BY e1.id,e1.month DESC;
