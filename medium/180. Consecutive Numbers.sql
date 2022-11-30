-----------------------------------------------------------
--Solution 1 :
-----------------------------------------------------------
WITH cte AS(
	SELECT id,Num,
		LEAD(Num,1) OVER() as Next1,
		LEAD(Num,2) OVER() as Next2
	FROM logs_180
)
SELECT DISTINCT Num AS ConsecutiveNums
FROM cte
WHERE Num = Next1 AND Num = Next2;


-----------------------------------------------------------
--Solution 2 :
-----------------------------------------------------------

WITH cte AS(
	SELECT id,Num,
		LAG(Num) OVER() as Prev,
		LEAD(Num) OVER() as Next
	FROM logs_180
)
SELECT DISTINCT Num AS ConsecutiveNums
FROM cte
WHERE Num = Prev AND Num = Next;


-----------------------------------------------------------
--Solution 3 :
-----------------------------------------------------------
SELECT DISTINCT l1.Num AS ConsecutiveNums
FROM logs_180 l1
JOIN logs_180 l2 ON l1.id=l2.id-1 AND l1.Num=l2.Num
JOIN logs_180 l3 ON l1.id=l3.id-2 AND l2.Num=l3.Num


-----------------------------------------------------------
--Exensible Solution (Best) :
-----------------------------------------------------------

WITH ranked AS (
	SELECT *,
		(id-ROW_NUMBER() OVER (PARTITION BY num ORDER BY id)) AS diff
	FROM logs_180
)
SELECT DISTINCT num AS "ConsecutiveNums"
FROM ranked
GROUP BY diff,num
HAVING COUNT(id) >= 3;
