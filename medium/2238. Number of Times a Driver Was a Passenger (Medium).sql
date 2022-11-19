SELECT r1.driver_id,COUNT(DISTINCT r2.ride_id) AS cnt
FROM rides_2238 r1
LEFT JOIN rides_2238 r2 ON r1.driver_id = r2.passenger_id
GROUP BY r1.driver_id;
