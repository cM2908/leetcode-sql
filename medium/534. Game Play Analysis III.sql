SELECT a.player_id,a.event_date,SUM(b.games_played)
FROM activity_534 a
JOIN activity_534 b ON a.player_id = b.player_id AND a.event_date >= b.event_date
GROUP BY a.player_id,a.event_date
ORDER BY 1,2;

(OR)

SELECT player_id,event_date,
	SUM(games_played) OVER w AS games_played
FROM activity_534
WINDOW w AS (PARTITION BY player_id ORDER BY event_date);
