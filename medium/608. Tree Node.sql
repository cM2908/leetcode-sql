SELECT DISTINCT t1.id,
	CASE WHEN t1.p_id IS NULL THEN 'Root'
	     WHEN t2.id IS NULL THEN 'Leaf'
	     ELSE 'Inner' END AS Type
FROM tree_608 t1
LEFT JOIN tree_608 t2 ON t1.id = t2.p_id
ORDER BY t1.id;
