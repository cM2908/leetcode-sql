SELECT p.product_name,s.year,s.price
FROM sales_1068 s
JOIN product_1068 p ON s.product_id = p.product_id;
