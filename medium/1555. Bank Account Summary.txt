WITH trans AS (
	SELECT paid_by AS usr,amount*-1 AS amount
	FROM transactions_1555
	UNION ALL
	SELECT paid_to AS usr,amount
	FROM transactions_1555	
),
agg_trans AS (
	SELECT usr,SUM(amount) AS cr
	FROM trans
	GROUP BY usr
)

SELECT u.user_id,u.user_name,(COALESCE(t.cr,0)+u.credit) AS credit,
	CASE WHEN (COALESCE(t.cr,0)+u.credit) < 0 THEN 'Yes'
	     ELSE 'No'
	END AS credit_limit_breached
FROM users_1555 u
LEFT JOIN agg_trans t ON t.usr = u.user_id;
