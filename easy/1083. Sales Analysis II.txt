SELECT DISTINCT s.buyer_id
FROM sales_1082 s
LEFT JOIN product_1082 p ON s.product_id = p.product_id
WHERE p.product_name = 'S8' AND
	s.buyer_id NOT IN (SELECT s.buyer_id
			    FROM sales_1082 s LEFT JOIN product_1082 p ON
			    s.product_id = p.product_id
			    WHERE p.product_name = 'iPhone');
