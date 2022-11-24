SELECT s.id,s.name
FROM students_1350 s
LEFT JOIN departments_1350 d ON s.department_id = d.id
WHERE d.id IS NULL;
