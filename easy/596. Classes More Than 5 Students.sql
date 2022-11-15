SELECT class
FROM courses_596
GROUP BY class
HAVING COUNT(DISTINCT student) >=5;
