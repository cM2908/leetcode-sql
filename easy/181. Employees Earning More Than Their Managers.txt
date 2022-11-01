SELECT e.name as Employee
FROM employee_181 e 
JOIN employee_181 m ON e.manager_id = m.id AND e.salary>m.salary;
