-- (Works for 3 consecutive contests only)


WITH gold_medal_users AS (
	SELECT DISTINCT gold_medal AS usr
	FROM contests_1811
	GROUP BY gold_medal
	HAVING COUNT(contest_id) = 3
),
all_users AS (
	SELECT gold_medal AS usr,contest_id FROM contests_1811
	UNION ALL
	SELECT silver_medal AS usr,contest_id FROM contests_1811
	UNION ALL
	SELECT bronz_medal AS usr,contest_id FROM contests_1811
),
consecutive_medal_users AS (
	SELECT DISTINCT a1.usr
	FROM all_users a1
	INNER JOIN all_users a2 ON a1.usr = a2.usr AND a1.contest_id - 1 = a2.contest_id
	INNER JOIN all_users a3 ON a1.usr = a3.usr AND a1.contest_id + 1 = a3.contest_id
),
inerview_candidates AS (
	SELECT usr
	FROM gold_medal_users
	UNION
	SELECT usr
	FROM consecutive_medal_users
)
SELECT name,mail
FROM inerview_candidates ic
INNER JOIN users_1811 u ON ic.usr = u.user_id;



--OR-- (Generic Query : Works for any number of consecutive contests)



WITH gold_medal_users AS (
	SELECT DISTINCT gold_medal AS usr
	FROM contests_1811
	GROUP BY gold_medal
	HAVING COUNT(contest_id) = 3
),
all_users AS (
	SELECT gold_medal AS usr,contest_id FROM contests_1811
	UNION ALL
	SELECT silver_medal AS usr,contest_id FROM contests_1811
	UNION ALL
	SELECT bronz_medal AS usr,contest_id FROM contests_1811
),
ranked_users AS (
	SELECT *,
		contest_id-ROW_NUMBER() OVER (PARTITION BY usr ORDER BY contest_id) AS diff
	FROM all_users
),
consecutive_medal_users AS (
	SELECT usr,contest_id,
		COUNT(diff) OVER (PARTITION BY usr,diff) AS num_consecutive_contests
	FROM ranked_users
),
inerview_candidates AS (
	SELECT usr
	FROM gold_medal_users
	UNION
	SELECT DISTINCT usr
	FROM consecutive_medal_users
	WHERE num_consecutive_contests >= 3
)
SELECT name,mail
FROM inerview_candidates ic
INNER JOIN users_1811 u ON ic.usr = u.user_id;
