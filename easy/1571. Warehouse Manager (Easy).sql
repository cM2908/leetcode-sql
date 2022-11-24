SELECT w.name AS warehouse_name,SUM(p.width*p.height*p.length*w.units) AS volume
FROM warehouse_1571 w
INNER JOIN products_1571 p ON w.product_id = p.product_id
GROUP BY w.name;
