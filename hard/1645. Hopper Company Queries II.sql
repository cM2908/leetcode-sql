WITH RECURSIVE months AS (
	SELECT 1 AS m
	UNION
	SELECT m+1 AS m
	FROM months
	WHERE m <= 11 
),
accepted_rides_2020 AS (
	SELECT mn.m,COUNT(ar.ride_id) AS accepted_rides
	FROM accepted_rides_1645 ar 
	INNER JOIN rides_1645 r ON ar.ride_id = r.ride_id AND EXTRACT(year FROM r.requested_at)=2020
	RIGHT JOIN months mn ON mn.m = EXTRACT(month FROM r.requested_at)
	GROUP BY m
),
running_drivers AS (
	SELECT *,
		COUNT(driver_id) OVER (ORDER BY join_date) AS drivers_cnt 
	FROM drivers_1645
),
drivers AS (
	SELECT mn.m,ar.accepted_rides,MAX(d.drivers_cnt) AS drivers
	FROM running_drivers d
	RIGHT JOIN months mn ON mn.m >= EXTRACT(month FROM d.join_date) AND EXTRACT(year FROM d.join_date)=2020
	INNER JOIN accepted_rides_2020 ar ON ar.m=mn.m
	GROUP BY mn.m,ar.accepted_rides
)
SELECT m AS month,ROUND(accepted_rides*100.0/drivers,2) AS working_percentage
FROM drivers
ORDER BY month;
