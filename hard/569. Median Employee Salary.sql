WITH sorted AS(
	SELECT *,
		ROW_NUMBER() OVER w1 AS row_num,
		COUNT(*) OVER w2 AS count
	FROM employee_569
	WINDOW w1 AS (PARTITION BY company ORDER BY salary),
		w2 AS (PARTITION BY company)
)

SELECT company,ROUND(AVG(salary),2)
FROM sorted
WHERE row_num BETWEEN count::NUMERIC/2 AND count::NUMERIC/2 + 1
GROUP BY company;
