WITH cancelled AS(
SELECT t.request_at,COUNT(*) AS cancelled_count
FROM trips_262 t
JOIN users_262 c ON t.client_id = c.user_id AND c.banned like 'No'
JOIN users_262 d ON t.driver_id = d.user_id AND d.banned like 'No'
WHERE t.status LIKE 'cancelled_by_client' OR t.status LIKE 'cancelled_by_driver'
GROUP BY t.request_at),

total AS(
SELECT t.request_at,COUNT(*) AS total_count
FROM trips_262 t
JOIN users_262 c ON t.client_id = c.user_id AND c.banned like 'No'
JOIN users_262 d ON t.driver_id = d.user_id AND d.banned like 'No'
GROUP BY t.request_at)

SELECT t.request_at,(COALESCE(c.cancelled_count::FLOAT,0.0)/t.total_count::FLOAT)
FROM cancelled c
RIGHT JOIN total t ON c.request_at = t.request_at;

(OR)

SELECT request_at,ROUND(COUNT(CASE WHEN status <> 'completed' THEN 1 ELSE NULL END)::NUMERIC/COUNT(*),2) AS cancellation_rate
FROM trips_262
WHERE request_at BETWEEN '2013-10-01' AND '2013-10-03' AND
	client_id NOT IN (SELECT user_id FROM users_262 WHERE banned LIKE 'Yes' AND role LIKE 'client') AND
	driver_id NOT IN (SELECT user_id FROM users_262 WHERE banned LIKE 'Yes' AND role LIKE 'driver')
GROUP BY request_at;
