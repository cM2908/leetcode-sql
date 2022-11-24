SELECT ad_id,
	COALESCE(ROUND(AVG(
	CASE WHEN action = 'Clicked' THEN 1
	     WHEN action = 'Viewed' THEN 0
	     ELSE NULL 
	END)*100,2),0.00) AS ctr
FROM ads_1322
GROUP BY ad_id
ORDER BY ctr DESC;
