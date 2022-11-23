WITH posts AS (
	SELECT *
	FROM submissions_1241
	WHERE parent_id IS NULL
),
cmnts AS (
	SELECT *
	FROM submissions_1241
	WHERE parent_id IS NOT NULL
),
cte AS (
	SELECT DISTINCT p.sub_id AS post_id,c.sub_id AS cmnt_id
	FROM posts p
	LEFT JOIN cmnts c
	ON p.sub_id = c.parent_id
)
SELECT post_id,COUNT(cmnt_id)
FROM cte
GROUP BY post_id
ORDER BY post_id;
