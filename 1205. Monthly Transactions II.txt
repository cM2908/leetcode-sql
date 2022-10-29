WITH cte1 AS (
	SELECT TO_CHAR(c.charge_date,'YYYY-MM') AS month,t.country,
		COUNT(c.trans_id) AS chargeback_count,
		SUM(t.amount) AS chargeback_amount
	FROM chargebacks_1205 c
	JOIN transactions_1205 t ON t.id = c.trans_id
	GROUP BY TO_CHAR(charge_date,'YYYY-MM'),t.country
),

cte2 AS (
	SELECT TO_CHAR(trans_date,'YYYY-MM') AS month,country,
		COUNT(CASE WHEN state='approved' THEN 1 ELSE NULL END) AS approved_count,
		SUM(CASE WHEN state='approved' THEN amount ELSE NULL END) AS approved_amount
	FROM transactions_1205
	GROUP BY TO_CHAR(trans_date,'YYYY-MM'),country
)

SELECT c1.month,c1.country,
	COALESCE(c2.approved_count,0) AS approved_count,
	COALESCE(c2.approved_amount,0) AS approved_amount,
	COALESCE(c1.chargeback_count,0) AS chargeback_count,
	COALESCE(c1.chargeback_amount,0) AS chargeback_amount
FROM cte1 c1 
FULL OUTER JOIN cte2 c2 ON c1.month = c2.month
ORDER BY c1.month;
