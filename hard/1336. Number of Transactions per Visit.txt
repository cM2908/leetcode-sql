WITH RECURSIVE cte AS(
	SELECT v.user_id,v.visit_date,t.amount
	FROM visits_1336 v
	LEFT JOIN transactions_1336 t ON v.user_id=t.user_id AND v.visit_date=t.transaction_date
),
cte1 AS (
	SELECT user_id,visit_date,COUNT(1) AS transactions_count
	FROM cte
	WHERE amount IS NOT NULL
	GROUP BY user_id,visit_date
),
cte2 AS (
	SELECT 0 AS transactions_count,COUNT(1) AS visits_count
	FROM cte
	WHERE amount IS NULL
	GROUP BY transactions_count
),
cte3 AS (
	SELECT transactions_count,COUNT(transactions_count) AS visit_count
	FROM cte1
	GROUP BY transactions_count
	UNION
	SELECT *
	FROM cte2
),
nums AS (
	SELECT 0 AS n
	UNION
	SELECT n+1 AS n
	FROM nums
	WHERE n < (SELECT MAX(transactions_count) FROM cte3)
)

SELECT n.n AS transactions_count,COALESCE(visit_count,0) AS visit_count
FROM nums n
LEFT JOIN cte3 c ON n.n=c.transactions_count
ORDER BY 1;
