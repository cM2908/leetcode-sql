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

--------------------------- OR ---------------------------

WITH cte AS (
	SELECT a.action_date,
			ROUND(COUNT(CASE WHEN a.extra = 'spam' AND r.post_id IS NOT NULL THEN 1 ELSE NULL END)*100::NUMERIC/COUNT(DISTINCT a.post_id),2) AS removed_spammed_post_percentage
	FROM actions_1132 a
	LEFT JOIN removals_1132 r ON a.post_id = r.post_id
	GROUP BY a.action_date
)
SELECT ROUND(AVG(removed_spammed_post_percentage),2)
FROM cte
WHERE removed_spammed_post_percentage <> 0;
