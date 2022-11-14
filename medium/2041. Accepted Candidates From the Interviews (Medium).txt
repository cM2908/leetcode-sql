SELECT candidate_id
FROM candidates_2041
WHERE years_of_exp >= 2 AND 
      interview_id IN (SELECT interview_id 
		       FROM rounds_2041
		       GROUP BY interview_id
		       HAVING SUM(score) > 15);
