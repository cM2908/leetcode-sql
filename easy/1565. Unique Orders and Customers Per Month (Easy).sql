SELECT TO_CHAR(order_date,'YYYY-MM') AS month,
	COUNT(order_id) AS order_count,
	COUNT(DISTINCT customer_id) AS customer_count
FROM orders_1565
WHERE invoice > 20
GROUP BY TO_CHAR(order_date,'YYYY-MM');
