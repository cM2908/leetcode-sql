SELECT score,
        DENSE_RANK() OVER(w) as rank
FROM scores_178
WINDOW w AS (ORDER BY score DESC);
