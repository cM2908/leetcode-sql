WITH RECURSIVE months AS (
	select 1 as m
	union
	select m+1 as m
	from months
	where m<=11
),
cte AS (
	SELECT mn.m,SUM(COALESCE(ar.ride_distance,0)) AS ride_distance,SUM(COALESCE(ar.ride_duration,0)) AS ride_duration,
		CASE WHEN m BETWEEN 1 AND 3 THEN 'q1'
		     WHEN m BETWEEN 4 AND 6 THEN 'q2'
		     WHEN m BETWEEN 7 AND 9 THEN 'q3'
		     ELSE 'q4'
		END AS quater
	FROM accepted_rides_1651 ar
	INNER JOIN rides_1651 r ON ar.ride_id = r.ride_id AND EXTRACT(year FROM requested_at) = 2020
	RIGHT JOIN months mn ON mn.m = EXTRACT(month FROM requested_at)
	GROUP BY mn.m
)
SELECT m,
	ROUND(AVG(ride_distance) OVER (ORDER BY m ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING),2) AS average_ride_distance,
	ROUND(AVG(ride_duration) OVER (ORDER BY m ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING),2) AS average_ride_duration
FROM cte;
