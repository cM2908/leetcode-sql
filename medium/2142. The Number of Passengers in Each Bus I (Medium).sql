WITH running_total_passengers AS (
	SELECT *,
			COUNT(passenger_id) OVER (PARTITION BY bus_id ORDER BY b.arrival_time) AS passengers
	FROM buses_2142 b
	LEFT JOIN passengers_2142 p ON p.arrival_time <= b.arrival_time
)
SELECT r1.bus_id,r1.passengers-COALESCE(r2.passengers,0) AS passengers_cnt
FROM running_total_passengers r1
LEFT JOIN running_total_passengers r2 ON r1.bus_id=r2.bus_id+1
ORDER BY r1.passengers,r1.bus_id;

--(Here we have made an assumption that smaller bus_id arrived first which will not be the case always)
-- Better Query

WITH running_total_passengers AS (
	SELECT b.bus_id,b.arrival_time AS bus_arrival_time,
			p.passenger_id,p.arrival_time AS passenger_arrival_time,
			COUNT(passenger_id) OVER (PARTITION BY bus_id ORDER BY b.arrival_time) AS passengers
	FROM buses_2142 b
	LEFT JOIN passengers_2142 p ON p.arrival_time <= b.arrival_time
)
SELECT DISTINCT r1.bus_id,r1.passengers-COALESCE(r2.passengers,0) AS passengers_cnt
FROM running_total_passengers r1
LEFT JOIN running_total_passengers r2 ON r1.bus_arrival_time > r2.bus_arrival_time AND r1.bus_id=r2.bus_id+1
