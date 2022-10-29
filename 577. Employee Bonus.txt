SELECT name,bonus
FROM employee_577 e
JOIN bonus_577 b ON e.empId = b.empId AND b.bonus < 1000;
