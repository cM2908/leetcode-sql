WITH spammed AS(
	SELECT *
	FROM actions_1132
	WHERE extra = 'spam'
),

percentage AS(
	SELECT (COUNT(r.post_id)::NUMERIC/COUNT(s.post_id))*100 AS per
	FROM spammed s
	LEFT JOIN removals_1132 r ON s.post_id = r.post_id
	GROUP BY s.action_date
)

SELECT ROUND(AVG(per),2) AS avg_daily_percent FROM percentage;
