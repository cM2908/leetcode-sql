WITH airports AS (
	SELECT departure_airport AS airport,flights_count
	FROM flights_2112
	UNION ALL
	SELECT arrival_airport AS airport,flights_count
	FROM flights_2112
),
grouped_airport AS (
	SELECT airport,SUM(flights_count) AS flights_count
	FROM airports
	GROUP BY airport
)
SELECT airport
FROM grouped_airport
WHERE flights_count = (SELECT MAX(flights_count) FROM grouped_airport);
