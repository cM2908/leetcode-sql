WITH ranked AS(
	SELECT *,DENSE_RANK() OVER w AS rnk
	FROM activity_511
	WINDOW w AS (PARTITION BY player_id ORDER BY event_date)
)

SELECT player_id,device_id
FROM ranked
WHERE rnk = 1
ORDER BY player_id;


(OR)


WITH cte AS(
	SELECT player_id,MIN(event_date) AS first_login
	FROM activity_511
	GROUP BY player_id
)

SELECT player_id,device_id
FROM activity_511
WHERE (player_id,event_date) IN (SELECT * FROM cte);
