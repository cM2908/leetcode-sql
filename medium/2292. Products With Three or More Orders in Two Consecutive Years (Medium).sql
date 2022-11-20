WITH order_counts AS (
	SELECT product_id,EXTRACT(year FROM purchase_date) AS yr,COUNT(order_id) AS order_count 
	FROM orders_2292
	GROUP BY product_id,EXTRACT(year FROM purchase_date)
	HAVING COUNT(order_id) >= 3
	ORDER BY 1,2
)
SELECT DISTINCT oc1.product_id
FROM order_counts oc1
INNER JOIN order_counts oc2 
ON oc1.product_id = oc2.product_id AND oc1.yr+1 = oc2.yr;
