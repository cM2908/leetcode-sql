WITH RECURSIVE all_subtasks AS (
	SELECT task_id,subtasks_count,1 AS subtask_id
	FROM tasks_1767
	UNION ALL
	SELECT task_id,subtasks_count,subtask_id+1 AS subtask_id
	FROM all_subtasks
	WHERE subtask_id<subtasks_count
)
SELECT a.task_id,a.subtask_id
FROM all_subtasks a
LEFT JOIN executed_1767 e ON a.task_id = e.task_id AND a.subtask_id = e.subtask_id
WHERE e.task_id IS NULL
ORDER BY 1,2;
