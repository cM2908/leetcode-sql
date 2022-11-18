SELECT p.post_id,COALESCE(STRING_AGG(DISTINCT k.topic_id::TEXT,',' ORDER BY k.topic_id::TEXT),'Ambiguous!') AS topic
FROM posts_2199 p
LEFT JOIN keywords_2199 k ON POSITION(LOWER(' '||k.word||' ') IN LOWER(' '||p.content||' '))!=0
GROUP BY p.post_id;
