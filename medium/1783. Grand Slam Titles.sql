WITH winners AS (
	SELECT wimbledon AS winner_id FROM championships_1783
	UNION ALL
	SELECT fr_open AS winner_id FROM championships_1783
	UNION ALL
	SELECT us_open AS winner_id FROM championships_1783
	UNION ALL
	SELECT au_open AS winner_id FROM championships_1783
)

SELECT p.player_id,p.player_name,COUNT(p.player_id) AS num_wins
FROM winners w
INNER JOIN players_1783 p ON w.winner_id = p.player_id
GROUP BY p.player_id,p.player_name;
