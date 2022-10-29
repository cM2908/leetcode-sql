SELECT TO_CHAR(trans_date,'YYYY-MM') AS month,country,
	COUNT(id) AS trans_count,
	COUNT(CASE WHEN state = 'approved' THEN 1 ELSE NULL END) AS approved_count,
	SUM(amount) AS trans_total_amount
FROM transactions_1193
GROUP BY month,country
ORDER BY month;
