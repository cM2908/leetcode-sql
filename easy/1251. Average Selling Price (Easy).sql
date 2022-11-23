SELECT u.product_id,ROUND(SUM(u.units*p.price)::NUMERIC/SUM(u.units),2)
FROM unit_sold_1251 u
INNER JOIN prices_1251 p 
ON u.purchase_date BETWEEN p.start_date AND p.end_date AND 
	u.product_id = p.product_id
GROUP BY u.product_id;
