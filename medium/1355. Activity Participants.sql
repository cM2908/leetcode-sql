WITH cte AS (
	SELECT activity,COUNT(activity) AS cnt
	FROM friends_1355
	GROUP BY activity
),
cte1 AS (
	SELECT activity,cnt,
		MAX(cnt) OVER () AS max_cnt,
		MIN(cnt) OVER () AS min_cnt
	FROM cte
)
SELECT activity
FROM cte1 
WHERE cnt <> max_cnt AND cnt <> min_cnt;
