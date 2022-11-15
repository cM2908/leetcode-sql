WITH all_matches AS(
	SELECT home_team_id,away_team_id,home_team_goals,away_team_goals
	FROM matches_1841
	UNION 
	SELECT away_team_id,home_team_id,away_team_goals,home_team_goals
	FROM matches_1841
),
report_data AS (
	SELECT *,
		CASE WHEN home_team_goals < away_team_goals THEN 0
			 WHEN home_team_goals > away_team_goals THEN 3
			 ELSE 1
		END AS home_team_points,
		CASE WHEN home_team_goals < away_team_goals THEN 3
			 WHEN home_team_goals > away_team_goals THEN 0
			 ELSE 1
		END AS away_team_points
	FROM all_matches
)
SELECT t.team_name AS team_name,
		COUNT(t.team_name) AS matches_played,
		SUM(home_team_points) AS points,
		SUM(home_team_goals) AS goals_for,
		SUM(away_team_goals) AS goals_against,
		SUM(home_team_goals)-SUM(away_team_goals) AS goals_diff
FROM report_data r
INNER JOIN teams_1841 t ON r.home_team_id = t.team_id
GROUP BY t.team_name
ORDER BY points DESC,goals_diff DESC,t.team_name;
