WITH each_day_platform AS(
	SELECT spend_date,UNNEST(ARRAY['both','mobile','desktop']) AS platform_type
	FROM spending_1127
	GROUP BY spend_date
),
cte AS(
	SELECT a.spend_date,
		CASE WHEN b.user_id IS NOT NULL THEN 'both'
		     WHEN a.platform = 'mobile' THEN 'mobile'
		     ELSE 'desktop'
		END AS platform_type,
		COUNT(DISTINCT a.user_id) AS total_users,
		SUM(a.amount) AS amount
	FROM spending_1127 a
	LEFT JOIN spending_1127 b ON a.user_id = b.user_id AND a.spend_date = b.spend_date AND a.platform <> b.platform
	GROUP BY a.spend_date,platform_type
)

SELECT a.spend_date,a.platform_type,COALESCE(total_users,0) AS total_users,COALESCE(amount,0) AS amount
FROM each_day_platform a
LEFT JOIN cte b ON a.spend_date=b.spend_date AND a.platform_type = b.platform_type;
