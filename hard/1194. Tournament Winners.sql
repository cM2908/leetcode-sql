WITH player_scores AS(
	(SELECT first_player AS player,first_score AS score
	FROM matches_1194)
	UNION ALL
	(SELECT second_player AS player,second_score AS score
	FROM matches_1194)
),

all_player_scores AS(
	SELECT player,SUM(score) AS score
	FROM player_scores
	GROUP BY player
	ORDER BY player
),

ranked AS (
	SELECT p.*,ps.score AS score,
		DENSE_RANK() OVER(PARTITION BY group_id ORDER BY score DESC,player_id ASC) AS rnk
	FROM players_1194 p
	INNER JOIN all_player_scores ps ON p.player_id = ps.player
)

SELECT group_id,player_id 
FROM ranked
WHERE rnk=1
ORDER BY group_id;
