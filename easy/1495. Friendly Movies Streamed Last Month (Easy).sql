SELECT DISTINCT c.title
FROM tv_program_1495 t
INNER JOIN content_1495 c 
ON t.content_id = c.content_id AND 
	c.kids_content = 'Y' AND 
	DATE_TRUNC('MONTH',t.program_date)::DATE = '2020-06-01';
