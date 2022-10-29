--(1st approach is called co-relevant subquery because inner query is dependent on outer query)

SELECT SUM(tiv_2016) AS tiv_2016_sum 
FROM insurance_585 i
WHERE tiv_2015 IN (SELECT tiv_2015 
		FROM insurance_585
		WHERE pid <> i.pid) AND
	(lat,lon) NOT IN (SELECT lat,lon
		FROM insurance_585
		WHERE pid <> i.pid);


(OR)


SELECT SUM(tiv_2016) AS tiv_2016_sum
FROM insurance_585
WHERE tiv_2015 IN (SELECT tiv_2015
		   FROM insurance_585
		   GROUP BY tiv_2015
		   HAVING COUNT(*) > 1) AND
(lat,lon) IN (SELECT lat,lon
	      FROM insurance_585
	      GROUP BY lat,lon
	      HAVING COUNT(*) = 1);
