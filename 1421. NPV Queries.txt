SELECT q.id,q.year,COALESCE(n.npv,0)
FROM queries_1421 q
LEFT JOIN npv_1421 n ON q.id = n.id AND q.year = n.year;
