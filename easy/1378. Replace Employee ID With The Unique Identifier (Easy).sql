SELECT eu.unique_id,e.name
FROM employee_1378 e
LEFT JOIN employee_uni_1378 eu ON e.id = eu.id
ORDER BY e.name;
