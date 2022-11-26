SELECT t1.team_name AS home_team,t2.team_name AS away_team
FROM teams_2339 t1
INNER JOIN teams_2339 t2 ON t1.team_name <> t2.team_name;
