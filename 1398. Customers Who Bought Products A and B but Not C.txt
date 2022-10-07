SELECT DISTINCT o1.customer_id,c.customer_name
FROM orders_1398 o1
LEFT JOIN orders_1398 o2 ON o1.product_name = 'A' AND o2.product_name = 'B' AND o1.customer_id = o2.customer_id
LEFT JOIN orders_1398 o3 ON o1.product_name = 'A' AND o3.product_name = 'C' AND o1.customer_id = o3.customer_id
INNER JOIN customers_1398 c ON o1.customer_id = c.customer_id
WHERE o1.product_name IS NOT NULL AND o2.product_name IS NOT NULL AND o3.product_name IS NULL;
