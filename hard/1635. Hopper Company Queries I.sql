WITH RECURSIVE ac_rides AS (
	SELECT ar.ride_id,r.requested_at
	FROM accepted_rides_1635 ar
	INNER JOIN rides_1635 r ON ar.ride_id = r.ride_id AND EXTRACT(YEAR FROM r.requested_at)<=2020
),
months AS (
	SELECT 1 AS num
	UNION 
	SELECT num+1 AS num
	FROM months
	WHERE num<=11
),
ride_details AS (
	SELECT *
	FROM months m
	LEFT JOIN ac_rides ar ON EXTRACT(MONTH FROM ar.requested_at)=m.num
),
aggr_details AS (
	SELECT num,COUNT(DISTINCT ride_id) AS rides
	FROM ride_details
	GROUP BY num
),
avail_drivers AS (
	SELECT *,
		ROW_NUMBER() OVER (ORDER BY join_date) AS drivers
	FROM drivers_1635
),
drivers_2020 AS (
	SELECT *
	FROM months m
	LEFT JOIN avail_drivers a ON EXTRACT(YEAR FROM a.join_date)=2020 AND m.num>=EXTRACT(MONTH FROM a.join_date)
),
driver_count AS (
	SELECT num,MAX(drivers) AS drivers
	FROM drivers_2020
	GROUP BY num
)
SELECT a.num AS month,a.rides,d.drivers
FROM aggr_details a
INNER JOIN driver_count d ON a.num=d.num;
