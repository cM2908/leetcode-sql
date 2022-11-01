WITH cte AS(
	SELECT product_id,MAX(change_date) AS max_date
	FROM products_1164
	WHERE change_date <= '2019-08-16'
	GROUP BY product_id
)

SELECT p.product_id,
	MAX(CASE WHEN c.product_id IS NULL THEN 10
	     WHEN p.change_date = c.max_date THEN p.new_price
	END) AS price
FROM products_1164 p
LEFT JOIN cte c ON p.product_id = c.product_id
GROUP BY p.product_id
ORDER BY p.product_id;
