SELECT b.followee AS follower,COUNT(b.follower) AS num
FROM follow_614 a
JOIN follow_614 b ON a.follower = b.followee
GROUP BY b.followee;
