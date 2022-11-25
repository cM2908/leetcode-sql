SELECT seller_name
FROM seller_1607 
WHERE seller_id NOT IN 
(SELECT DISTINCT seller_id
FROM orders_1607
WHERE EXTRACT(YEAR FROM sale_date) = 2020);
