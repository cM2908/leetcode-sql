-- Table name for Test-Case1 : matches_2173
-- Table name for Test-Case2 : matches_2173_tc_2

WITH ranked_all_matches AS (
	SELECT *,
		ROW_NUMBER() OVER (PARTITION BY player_id ORDER BY match_day) AS rn
	FROM matches_2173
),
ranked_won_matches AS (
	SELECT player_id,result,rn,
		ROW_NUMBER() OVER (PARTITION BY player_id ORDER BY match_day) AS wrn
	FROM ranked_all_matches
	WHERE result = 'Win'
),
winning_streaks AS (
	SELECT player_id,result,rn-wrn AS diff,COUNT(1) AS winning_streak
	FROM ranked_won_matches
	GROUP BY player_id,result,rn-wrn
),
players AS (
	SELECT DISTINCT player_id
	FROM matches_2173
)
SELECT p.player_id,COALESCE(MAX(winning_streak),0) AS longest_streak
FROM players p
LEFT JOIN winning_streaks w ON w.player_id = p.player_id
GROUP BY p.player_id;

/*
pid	rn	wrn	diff
-----------------------------
1 	1	1   	0
1 	2	2   	0
1 	3	3   	0
1 	4	-   	-
1 	5	4   	1
1 	6	5   	1
1 	7	-   	-
1 	8	6   	2
1 	9	7   	2
1 	10	8   	2
1 	11	9   	2
1 	12	-   	-

2 	1 	-   	-
2 	2 	1   	1
2 	3 	-   	-
2 	4   	2   	2
2 	5   	3   	2

3 	1   	1   	0
*/
