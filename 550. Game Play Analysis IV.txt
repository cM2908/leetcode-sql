SELECT ROUND(COUNT(DISTINCT b.player_id)::NUMERIC/COUNT(DISTINCT a.player_id),2)
FROM activity_550 a
LEFT JOIN activity_550 b ON a.player_id = b.player_id AND a.event_date + 1 = b.event_date;
