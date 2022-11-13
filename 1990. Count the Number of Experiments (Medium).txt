WITH platforms AS (
	SELECT UNNEST(ARRAY['Android','IOS','Web']) AS pf
),
activities AS (
	SELECT UNNEST(ARRAY['Programming','Sports','Reading']) AS act
),
combinations AS (
	SELECT *
	FROM platforms p
	CROSS JOIN
	activities a
)
SELECT c.pf AS platform,c.act AS experiment_name,COALESCE(COUNT(e.experiment_id),0) AS num_experiments
FROM combinations c
LEFT JOIN experiments_1990 e ON e.platform = c.pf AND e.experiment_name = c.act
GROUP BY c.pf,c.act;
