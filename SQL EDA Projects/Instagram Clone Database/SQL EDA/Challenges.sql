-- Write a SQL Queyr to determine which users to reward who have been areound the longest ---
SELECT * FROM ig_clone.users
ORDER BY created_at DESC
LIMIT 10;

-- whick day of the week do most users regietred on ?
-- We need to schedule out when  to schedule an ad campaign -- 

SELECT 
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;

-- we want to target ou inactive users with an email campign --
-- Find users who have never posted a photos --
SELECT  username
FROM ig_clone.users
LEFT JOIN photos ON users.id = photos.user_id
WHERE photos.id is NULL;