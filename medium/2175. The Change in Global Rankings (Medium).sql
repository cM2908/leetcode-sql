-- More Readable, But Requires two Joins
WITH before_update_ranked_teams AS (
	SELECT *,
		DENSE_RANK() OVER (ORDER BY points DESC,name) before_rn
	FROM team_points_2175
),
after_update_ranked_teams AS (
	SELECT tp.team_id,tp.name,tp.points+pc.points_change AS points,
		DENSE_RANK() OVER (ORDER BY tp.points+pc.points_change DESC,tp.name) after_rn
	FROM team_points_2175 tp
	INNER JOIN points_change_2175 pc ON tp.team_id = pc.team_id
)
SELECT au.team_id,au.name,au.points,au.after_rn-bu.before_rn AS rank_diff
FROM before_update_ranked_teams bu
INNER JOIN after_update_ranked_teams au ON bu.team_id = au.team_id
ORDER BY au.points DESC,au.name;

-- Using a single Join

SELECT tp.team_id,tp.name,
	DENSE_RANK() OVER (ORDER BY tp.points+pc.points_change DESC,tp.name)-
	DENSE_RANK() OVER (ORDER BY tp.points DESC,name) AS rank_diff
FROM team_points_2175 tp
INNER JOIN points_change_2175 pc ON tp.team_id = pc.team_id
ORDER BY tp.points+pc.points_change DESC,tp.name;
