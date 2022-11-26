SELECT problem_id
FROM problems_2026
WHERE (likes*100.0/(likes+dislikes)) < 60
ORDER BY problem_id;
