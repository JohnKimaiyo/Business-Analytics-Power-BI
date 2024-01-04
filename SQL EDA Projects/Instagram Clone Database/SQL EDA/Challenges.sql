-- Write a SQL Queyr to determine which users to reward who have been areound the longest ---
SELECT * FROM ig_clone.users
ORDER BY created_at DESC
LIMIT 10;