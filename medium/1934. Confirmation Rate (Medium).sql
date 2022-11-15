WITH users AS (
	SELECT user_id,
		ROUND(COUNT(CASE WHEN action = 'confirmed' THEN 1 ELSE NULL END)::NUMERIC/
		COUNT(1),2) AS confirmation_rate
	FROM confirmations_1934
	GROUP BY user_id
)
SELECT s.user_id,COALESCE(u.confirmation_rate,0.00)
FROM signups_1934 s
LEFT JOIN users u ON s.user_id = u.user_id;
