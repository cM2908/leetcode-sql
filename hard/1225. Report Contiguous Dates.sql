WITH cte1 AS(
	SELECT fail_date AS dt,'failed' AS status
	FROM failed_1225
	WHERE EXTRACT(YEAR from fail_date) = 2019
	UNION
	SELECT success_date AS dt,'succeeded' AS status
	FROM succeeded_1225
	WHERE EXTRACT(YEAR from success_date) = 2019
),
cte2 AS (
	SELECT *,
		LAG(status) OVER (ORDER BY dt) AS lagged_status
	FROM cte1
),
cte3 AS (
	SELECT *,
		(CASE WHEN status = lagged_status THEN 0 ELSE 1 END) AS marker
	FROM cte2
),
cte4 AS (
	SELECT *,
		SUM(marker) OVER (ORDER BY dt) AS rolling_sum
	FROM cte3
)
SELECT MAX(status) AS period_state, MIN(dt) AS start_date, MAX(dt) AS end_date
FROM cte4
GROUP BY rolling_sum;

---------------------------------------------------------------------------------------------------------------------------------------------
--Simplified Query
---------------------------------------------------------------------------------------------------------------------------------------------

WITH tasks AS (
	SELECT fail_date AS dt,'failed' AS status
	FROM failed_1225
	UNION
	SELECT success_date AS dt,'succeeded' AS status
	FROM succeeded_1225
),
ranked AS (
	SELECT *,
		ROW_NUMBER() OVER (ORDER BY dt)-ROW_NUMBER() OVER (PARTITION BY status ORDER BY dt) AS diff
	FROM tasks
	WHERE dt BETWEEN '01-01-2019' AND '31-12-2019'
	ORDER BY dt
)
SELECT status,
	MIN(dt) AS start_date,MAX(dt) AS end_date
FROM ranked
GROUP BY status,diff
ORDER BY start_date;
