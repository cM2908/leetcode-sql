WITH cte AS (
	SELECT customer_id,product_id,COUNT(1) AS cnt
	FROM orders_1596
	GROUP BY customer_id,product_id
	ORDER BY 1,3 DESC
),
mx AS (
	SELECT *,
		MAX(cnt) OVER (PARTITION BY customer_id) AS maximum
	FROM cte
)

SELECT m.customer_id,m.product_id,p.product_name
FROM mx m
INNER JOIN products_1596 p ON m.product_id = p.product_id AND m.cnt = m.maximum
ORDER BY 1;
