WITH ranked_genders AS (
	SELECT *,
		RANK() OVER (PARTITION BY gender ORDER BY user_id) AS rnk,
		CASE WHEN gender = 'female' THEN 0
			 WHEN gender = 'other' THEN 1
			 ELSE 2
		END AS rnk2
	FROM genders_2308
)
SELECT user_id,gender
FROM ranked_genders
ORDER BY rnk,rnk2;
