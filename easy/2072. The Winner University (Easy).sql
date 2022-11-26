WITH ny AS (
	SELECT COUNT(student_id) AS ny_cnt
	FROM newyork_2072
	WHERE score >= 90
),
cf AS (
	SELECT COUNT(student_id) AS cf_cnt
	FROM california_2072
	WHERE score >= 90
)
SELECT
	CASE WHEN ny_cnt > cf_cnt THEN 'New York University'
		 WHEN ny_cnt < cf_cnt THEN 'California University'
		 ELSE 'No Winner'
	END AS winner
FROM ny
INNER JOIN cf ON true;
