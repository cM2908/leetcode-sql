WITH common_followers AS (
	SELECT r1.user_id AS user1,r2.user_id AS user2,
		COUNT(r1.follower_id) AS cmn_fwlr
	FROM relations_1951 r1
	INNER JOIN relations_1951 r2
	ON r1.user_id < r2.user_id AND r1.follower_id = r2.follower_id
	GROUP BY r1.user_id,r2.user_id
),
max_common_followers AS (
	SELECT user1,user2,cmn_fwlr,
		MAX(cmn_fwlr) OVER () mx_cmn_fwlr
	FROM common_followers
)
SELECT user1,user2
FROM max_common_followers
WHERE mx_cmn_fwlr = cmn_fwlr;
