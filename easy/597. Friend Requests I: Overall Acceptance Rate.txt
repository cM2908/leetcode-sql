SELECT ROUND(COUNT(DISTINCT CASE WHEN a.requester_id IS NOT NULL AND a.accepter_id IS NOT NULL THEN CONCAT(a.requester_id,' ',a.accepter_id) END)::NUMERIC/COUNT(DISTINCT CASE WHEN r.sender_id IS NOT NULL AND r.send_to_id IS NOT NULL THEN CONCAT(r.sender_id,' ',r.send_to_id) END ),2) AS accept_rate
FROM friend_request_597 r
LEFT JOIN request_accepted_597 a ON r.sender_id = a.requester_id AND r.send_to_id = a.accepter_id;
