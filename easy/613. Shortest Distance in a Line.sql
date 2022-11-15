SELECT MIN(ABS(ABS(a.x)-ABS(b.x))) AS shortest
FROM point_613 a
JOIN point_613 b ON a.x <> b.x;
