WITH flagged_coffee AS (
	SELECT *,
		ROW_NUMBER() OVER () AS rn,
		CASE WHEN drink IS NOT NULL THEN 1 ELSE 0 END AS null_flag
	FROM coffee_shop_2388
),
running_sum AS (
	SELECT *,
		SUM(null_flag) OVER (ORDER BY rn) AS rsum
	FROM flagged_coffee
)
SELECT id,
	FIRST_VALUE(drink) OVER (PARTITION BY rsum) AS drink
FROM running_sum;
