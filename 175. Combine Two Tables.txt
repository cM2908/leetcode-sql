SELECT firstname,lastname,city,state
FROM person_175 p 
LEFT JOIN address_175 a ON p.personid = a.personid;
