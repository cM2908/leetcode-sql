SELECT country_name,
	CASE WHEN AVG(weather_state) <= 15 THEN 'Cold'
		 WHEN AVG(weather_state) >= 25 THEN 'Hot'
		 ELSE 'Warm'
	END AS weather_type
FROM weather_1294 w
INNER JOIN countries_1294 c ON w.country_id = c.country_id
WHERE EXTRACT(month FROM day) = 11
GROUP BY country_name;

