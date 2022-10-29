SELECT product_id,SUM(quantity) AS total_quantity
FROM sales_1068
GROUP BY product_id;
