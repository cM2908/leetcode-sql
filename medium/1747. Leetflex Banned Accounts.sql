SELECT l1.account_id
FROM log_info_1747 l1
INNER JOIN log_info_1747 l2 ON l1.account_id = l2.account_id AND l1.login BETWEEN l2.login AND l2.logout AND l1.ip_address <> l2.ip_address;
