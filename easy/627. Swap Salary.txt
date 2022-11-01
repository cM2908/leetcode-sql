UPDATE salary_627 
SET sex = (
	CASE WHEN sex = 'm' THEN 'f' 
	     ELSE 'm'
	END
);
