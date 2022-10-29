SELECT DISTINCT p.product_id,p.product_name
FROM product_1082 p
INNER JOIN sales_1082 s ON p.product_id = s.product_id AND (s.sale_date BETWEEN '2019-01-01' AND '2019-03-31')
EXCEPT
SELECT DISTINCT p.product_id,p.product_name
FROM product_1082 p
INNER JOIN sales_1082 s ON p.product_id = s.product_id AND (s.sale_date < '2019-01-01' OR s.sale_date > '2019-03-31');
