-----------------------------------------------------------
Solution 1 :
-----------------------------------------------------------
WITH cte AS(
	SELECT id,Num,
		LEAD(Num,1) OVER() as Next1,
		LEAD(Num,2) OVER() as Next2
	FROM Logs
)
SELECT DISTINCT Num AS ConsecutiveNums
FROM cte
WHERE Num = Next1 AND Num = Next2;


-----------------------------------------------------------
Solution 2 :
-----------------------------------------------------------

WITH cte AS(
	SELECT id,Num,
		LAG(Num) OVER() as Prev,
		LEAD(Num) OVER() as Next
	FROM Logs
)
SELECT DISTINCT Num AS ConsecutiveNums
FROM cte
WHERE Num = Prev AND Num = Next;


-----------------------------------------------------------
Solution 3 :
-----------------------------------------------------------
SELECT DISTINCT l1.Num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2 ON l1.id=l2.id-1 AND l1.Num=l2.Num
JOIN Logs l3 ON l1.id=l3.id-2 AND l2.Num=l3.Num
