WITH ranked AS(
	SELECT id,student,
		LAG(id) OVER (w) AS lag,
		LEAD(id) OVER (w) AS lead
	FROM seat_626
	WINDOW w AS (ORDER BY id)
)

SELECT 
	CASE WHEN MOD(id,2) = 1 AND lead IS NOT NULL THEN lead
	     WHEN MOD(id,2) = 0 THEN lag
	     ELSE id
	END AS id,
	student
FROM ranked
ORDER BY id;
