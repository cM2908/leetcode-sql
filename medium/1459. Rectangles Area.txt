SELECT p1.id AS p1,p2.id AS p2,ABS(p1.x_value-p2.x_value)*ABS(p1.y_value-p2.y_value) AS area
FROM points_1459 p1
INNER JOIN points_1459 p2 ON p1.id < p2.id AND ABS(p1.x_value-p2.x_value)*ABS(p1.y_value-p2.y_value)<>0
ORDER BY area DESC;
