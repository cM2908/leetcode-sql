SELECT DISTINCT c1.seat_id
FROM cinema_603 c1
INNER JOIN cinema_603 c2 ON ABS(c1.seat_id-c2.seat_id)=1
WHERE c1.free AND c2.free;

-------------------------------------------------------------------------------------------------------------------------------

WITH cte AS(
  	SELECT seat_id,free,
		LEAD(free) OVER() as next_seat,
		LAG(free) OVER() as prev_seat
	FROM cinema_603
)

SELECT DISTINCT seat_id
FROM cte
WHERE (free=1 AND next_seat=1) OR (free=1 AND prev_seat=1);

-------------------------------------------------------------------------------------------------------------------------------

WITH ranked AS (
	SELECT *,
		seat_id-ROW_NUMBER () OVER (ORDER BY seat_id) AS diff
	FROM cinema_603
	WHERE free = 1
),
consecutive_free_seats AS (
	SELECT *,
		COUNT(seat_id) OVER (PARTITION BY diff) AS cnt
	FROM ranked
)
SELECT seat_id
FROM consecutive_free_seats
WHERE cnt >= 2;
