WITH ranked AS (
	SELECT *,
		RANK() OVER (PARTITION BY city_id ORDER BY degree DESC,day) AS rnk
	FROM weather_2314
)
SELECT city_id,day,degree
FROM ranked
WHERE rnk = 1
ORDER BY city_id;
