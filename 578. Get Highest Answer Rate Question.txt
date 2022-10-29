SELECT question_id
FROM surveylog_578
GROUP BY question_id
ORDER BY COUNT(CASE WHEN action='answer' THEN question_id ELSE NULL END)/COUNT(CASE WHEN action='show' THEN question_id ELSE NULL END) DESC
LIMIT 1;
