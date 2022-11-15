WITH duplicate_id_higher AS (
	SELECT p1.id AS higher_id FROM person_196_ans p1 JOIN person_196_ans p2 ON p1.email = p2.email AND p1.id > p2.id
)

DELETE FROM person_196_ans WHERE id IN (SELECT higher_id FROM duplicate_id_higher);
