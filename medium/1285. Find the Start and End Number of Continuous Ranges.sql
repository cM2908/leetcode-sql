WITH ranked AS (
	SELECT log_id,
		log_id-ROW_NUMBER() OVER (ORDER BY log_id) AS diff
	FROM logs_1285
)

SELECT MIN(log_id) AS start_id,MAX(log_id) AS end_id
FROM ranked
GROUP BY diff
ORDER BY start_id;
