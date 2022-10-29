WITH cte AS(
	SELECT *,
		AVG(occurences) OVER(PARTITION BY event_type) AS avg
	FROM events_1126
)

SELECT business_id 
FROM cte
WHERE occurences > avg
GROUP BY business_id
HAVING COUNT(business_id) > 1;
