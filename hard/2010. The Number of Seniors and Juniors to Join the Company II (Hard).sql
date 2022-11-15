-- Table Name for Test-Case 1: candidates_2010
-- Table Name for Test-Case 2: candidates_2010_tc_2

WITH seniors AS (
	SELECT *,
		SUM(salary) OVER (ORDER BY salary,employee_id) AS occupied_budget,
		70000-SUM(salary) OVER (ORDER BY salary,employee_id) AS remaining_budget
	FROM candidates_2010
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
	FROM candidates_2010 c
	CROSS JOIN left_budget lb
	WHERE experience = 'Junior'
),
hired_candidates AS (
	SELECT *
	FROM juniors
	WHERE remaining_budget >= 0
	UNION 
	SELECT *
	FROM seniors
	WHERE remaining_budget >= 0
)
SELECT employee_id
FROM hired_candidates;
