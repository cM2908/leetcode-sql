WITH user_visits_1709 AS (
	SELECT *
	FROM user_visits_1709
	UNION ALL
	SELECT DISTINCT user_id,'2021-1-1'::DATE
	FROM user_visits_1709
),
ranked_visits AS (
	SELECT *,
		ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY visit_date) AS rn
	FROM user_visits_1709
),
user_windows AS(
	SELECT r1.*,r2.visit_date,r2.visit_date-r1.visit_date AS win
	FROM ranked_visits r1
	INNER JOIN ranked_visits r2 ON r1.user_id = r2.user_id AND r1.rn+1 = r2.rn
)
SELECT user_id,MAX(win) AS biggest_window
FROM user_windows
GROUP BY user_id;
