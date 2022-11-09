WITH orders_stat AS (
	SELECT 	order_id,
			AVG(quantity) AS avg_quantity,
			MAX(quantity) AS max_quantity
	FROM orders_details_1867
	GROUP BY order_id
)
SELECT order_id
FROM orders_stat
WHERE max_quantity > ALL( SELECT avg_quantity
			 FROM orders_stat);
