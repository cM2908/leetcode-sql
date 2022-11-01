SELECT customer_id
FROM customer_1045
GROUP BY customer_id
HAVING COUNT(customer_id) = (SELECT COUNT(product_key) FROM product_1045)
ORDER BY customer_id;
