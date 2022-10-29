WITH cte AS(
	SELECT *,
		SUM(weight) OVER (ORDER BY turn) AS wsum
	FROM queue_1204
)

SELECT person_name
FROM cte 
WHERE turn = (SELECT MAX(turn) FROM cte WHERE wsum<=1000);
