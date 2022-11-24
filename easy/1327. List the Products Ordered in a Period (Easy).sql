SELECT p.product_name,SUM(o.unit)
FROM orders_1327 o
INNER JOIN products_1327 p ON o.product_id = p.product_id
WHERE DATE_TRUNC('MONTH',o.order_date)::DATE = '2020-02-01'
GROUP BY p.product_name
HAVING SUM(o.unit) >= 100;

