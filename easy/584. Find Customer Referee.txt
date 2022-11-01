SELECT * FROM customer_584 WHERE reference_id <> 21 OR reference_id IS NULL;

SELECT * FROM customer_584
EXCEPT
SELECT * FROM customer_584 WHERE reference_id = 2;
