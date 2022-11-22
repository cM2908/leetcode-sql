WITH grouped_sales AS (
	SELECT product_id,user_id,SUM(quantity) AS quantity
	FROM sales_2324
	GROUP BY product_id,user_id
),
ranked_sales AS (
	SELECT s.product_id,s.user_id,s.quantity*p.price AS spent,
		RANK() OVER (PARTITION BY s.user_id ORDER BY s.quantity*p.price DESC) AS rnk
	FROM grouped_sales s
	INNER JOIN product_2324 p ON s.product_id = p.product_id
)
SELECT user_id,product_id
FROM ranked_sales
WHERE rnk = 1;
