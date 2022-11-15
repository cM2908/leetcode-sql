WITH categorized_members AS (
	SELECT v.member_id,
		CASE WHEN COUNT(p.visit_id)*100/COUNT(v.visit_id)>=80 THEN 'Diamond'
			 WHEN COUNT(p.visit_id)*100/COUNT(v.visit_id)>=50 AND 
			 	  COUNT(p.visit_id)*100/COUNT(v.visit_id)< 80 THEN 'Gold'
			 WHEN COUNT(p.visit_id)*100/COUNT(v.visit_id)< 50 THEN 'Silver'
		END AS category
	FROM visits_2051 v
	LEFT JOIN purchases_2051 p ON v.visit_id = p.visit_id
	GROUP BY v.member_id
)
SELECT m.*,COALESCE(category,'Bronze') AS category
FROM members_2051 m
LEFT JOIN categorized_members c ON m.member_id=c.member_id
ORDER BY m.member_id;
