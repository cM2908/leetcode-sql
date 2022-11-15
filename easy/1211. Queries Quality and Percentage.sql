SELECT query_name,
	ROUND(AVG(rating::NUMERIC/position),2) AS quality,
	ROUND((COUNT(CASE WHEN rating < 3 THEN 1 ELSE NULL END)::NUMERIC/COUNT(*))*100,2) AS poor_query_percentage
FROM queries_1211
GROUP BY query_name;
