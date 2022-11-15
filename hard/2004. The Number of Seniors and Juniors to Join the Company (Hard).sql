-- Table Name for Test-Case 1: candidates_2004_tc_2
-- Table Name for Test-Case 2: candidates_2004

WITH seniors AS (
	SELECT *,
		SUM(salary) OVER (ORDER BY salary,employee_id) AS occupied_budget,
		70000-SUM(salary) OVER (ORDER BY salary,employee_id) AS remaining_budget
	FROM candidates_2004_tc_2
	WHERE experience = 'Senior'
),
left_budget AS (
	SELECT COALESCE(MIN(remaining_budget),70000) AS budget
	FROM seniors
	WHERE remaining_budget >= 0
),
juniors AS (
	SELECT c.*,
		SUM(c.salary) OVER (ORDER BY c.salary,c.employee_id) AS occupied_budget,
		lb.budget-SUM(c.salary) OVER (ORDER BY c.salary,c.employee_id) AS remaining_budget
	FROM candidates_2004_tc_2 c
	CROSS JOIN left_budget lb
	WHERE experience = 'Junior'
),
hired_candidates AS (
	SELECT employee_id,experience
	FROM juniors
	WHERE remaining_budget >= 0
	UNION 
	SELECT employee_id,experience
	FROM seniors
	WHERE remaining_budget >= 0
	UNION
	SELECT NULL,'Senior'
	UNION
	SELECT NULL,'Junior'
)
SELECT experience,COALESCE(COUNT(employee_id),0)
FROM hired_candidates
GROUP BY experience;
