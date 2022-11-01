WITH install_dates AS(
	SELECT player_id,MIN(event_date) AS install_date
	FROM activity_1097
	GROUP BY player_id
),
new AS(
	SELECT i.player_id,i.install_date,a.event_date
	FROM install_dates i
	LEFT JOIN activity_1097 a ON i.player_id = a.player_id AND i.install_date + 1 = a.event_date
)

SELECT install_date,COUNT(player_id),ROUND(COUNT(event_date)::NUMERIC/COUNT(player_id),2)
FROM new
GROUP BY install_date;
