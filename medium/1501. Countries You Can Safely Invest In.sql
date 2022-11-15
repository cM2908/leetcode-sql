WITH cte AS (
	SELECT caller_id AS person_id,duration
	FROM calls_1501
	UNION
	SELECT callee_id AS person_id,duration
	FROM calls_1501
),
avg_duration AS(
	SELECT cn.name AS country_name,c.duration AS duration,
		AVG(duration) OVER () avg_global_duration,
		AVG(duration) OVER (PARTITION BY cn.name) avg_country_duration
	FROM cte c
	INNER JOIN person_1501 p ON c.person_id=p.id
	INNER JOIN country_1501 cn ON cn.country_code=SUBSTR(p.phone_number,1,3)
)
SELECT DISTINCT country_name
FROM avg_duration
WHERE avg_country_duration>avg_global_duration;
