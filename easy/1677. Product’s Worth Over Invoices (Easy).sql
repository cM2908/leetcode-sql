SELECT p.name,SUM(i.rest) AS rest,SUM(i.paid) AS paid,SUM(i.canceled) AS canceled,SUM(i.refunded) AS refunded
FROM invoice_1677 i
INNER JOIN product_1677 p ON i.product_id = p.product_id
GROUP BY p.name
ORDER BY p.name;
