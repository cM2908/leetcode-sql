SELECT DISTINCT p1.user_id
FROM purchases_2228 p1
INNER JOIN purchases_2228 p2 
ON p1.purchase_id <> p2.purchase_id AND 
   p1.user_id = p2.user_id AND
   ABS(EXTRACT(DAY FROM p1.purchase_date)-EXTRACT(DAY FROM p2.purchase_date))<=7
