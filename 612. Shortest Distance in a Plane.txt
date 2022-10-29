SELECT ROUND(MIN(SQRT(POWER(a.x-b.x,2)+POWER(a.y-b.y,2)))::NUMERIC,2) AS shortest
FROM point_2d_612 a
JOIN point_2d_612 b ON (a.x,a.y) <> (b.x,b.y);
