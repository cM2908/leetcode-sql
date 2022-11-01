SELECT w1.id   
FROM weather_197 w1 
JOIN weather_197 w2 ON w1.record_date-1=w2.record_date AND w1.temperature>w2.temperature;
