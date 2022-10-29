SELECT viewer_id
FROM views_1149
GROUP BY viewer_id,view_date
HAVING COUNT(DISTINCT article_id)>1
ORDER BY 1 ASC;
