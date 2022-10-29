WITH cnt AS(
	SELECT COUNT(DISTINCT session_id) AS c
	FROM activity_1142
	WHERE activity_date <= '2019-07-27' AND activity_date > '2019-07-27'::DATE - 30
	GROUP BY user_id
)

SELECT ROUND(AVG(c),2) AS average_sessions_per_user
FROM cnt;
