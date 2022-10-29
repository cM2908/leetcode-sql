WITH ranked AS(
	SELECT *,
		ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY activity_date) AS rnk
	FROM traffic_1107
	WHERE activity = 'login'
)
SELECT activity_date,COUNT(DISTINCT user_id)
FROM ranked
WHERE ('2019-06-30'::DATE-activity_date)<=90 AND rnk =1
GROUP BY activity_date;

--(OR)

WITH ranked AS(
	SELECT user_id,MIN(activity_date) AS activity_date
	FROM traffic_1107
	WHERE activity = 'login'
	GROUP BY user_id
)
SELECT activity_date,COUNT(user_id)
FROM ranked
WHERE ('2019-06-30'::DATE-activity_date)<=90
GROUP BY activity_date;

