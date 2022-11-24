SELECT u.name,COALESCE(SUM(r.distance),0) AS travelled_distance
FROM users_1407 u
LEFT JOIN rides_1407 r ON u.id = r.user_id
GROUP BY u.name
ORDER BY travelled_distance DESC,u.name;
