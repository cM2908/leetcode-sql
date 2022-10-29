SELECT player_id,MIN(event_date) AS first_login
FROM activity_511
GROUP BY player_id
ORDER BY player_id;

(OR)

WITH ranked AS(
	SELECT *,DENSE_RANK() OVER w AS rnk
	FROM activity_511
	WINDOW w AS (PARTITION BY player_id ORDER BY event_date)
)

SELECT player_id,event_date
FROM ranked
WHERE rnk = 1
ORDER BY player_id;
