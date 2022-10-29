WITH cte AS(
	SELECT host_team,guest_team,host_goals,guest_goals
	FROM matches_1212
	UNION ALL
	SELECT guest_team AS host_team,host_team AS guest_team,host_goals,guest_goals
	FROM matches_1212
	WHERE host_goals=guest_goals
),
cte2 AS (
	SELECT 
		CASE WHEN host_goals > guest_goals THEN host_team
		     WHEN host_goals < guest_goals THEN guest_team
		     ELSE host_team
		END AS winner,
		CASE WHEN host_goals > guest_goals THEN 3
		     WHEN host_goals < guest_goals THEN 3
		     ELSE 1
		END AS points
	FROM cte
)

SELECT t.team_id,t.team_name,COALESCE(SUM(c.points),0) AS points
FROM cte2 c
RIGHT JOIN teams_1212 t ON t.team_id = c.winner
GROUP BY t.team_id,t.team_name
ORDER BY points DESC;
