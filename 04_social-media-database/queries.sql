-- 1. Show all users
SELECT * FROM users;

-- 2. Show all posts
SELECT * FROM posts;

-- 3. Show all comments
SELECT * FROM comments;

-- 4. Show all likes
SELECT * FROM likes;

-- 5. Show all follower relationships
SELECT * FROM followers;

-- 6. Posts with usernames
SELECT
u.username,
p.content
FROM posts p
JOIN users u
ON p.user_id = u.id;

-- 7. Comments with usernames
SELECT
u.username,
c.content
FROM comments c
JOIN users u
ON c.user_id = u.id;

-- 8. Count users
SELECT COUNT(*) AS total_users
FROM users;

-- 9. Count posts
SELECT COUNT(*) AS total_posts
FROM posts;

-- 10. Count comments
SELECT COUNT(*) AS total_comments
FROM comments;

-- 11. Likes per post
SELECT
p.id,
COUNT(l.user_id) AS likes
FROM posts p
LEFT JOIN likes l
ON p.id = l.post_id
GROUP BY p.id;

-- 12. Most liked post
SELECT
p.id,
COUNT(l.user_id) AS likes
FROM posts p
LEFT JOIN likes l
ON p.id = l.post_id
GROUP BY p.id
ORDER BY likes DESC
LIMIT 1;

-- 13. Followers per user
SELECT
u.username,
COUNT(f.follower_id) AS followers
FROM users u
LEFT JOIN followers f
ON u.id = f.following_id
GROUP BY u.username;

-- 14. User with most followers
SELECT
u.username,
COUNT(f.follower_id) AS followers
FROM users u
LEFT JOIN followers f
ON u.id = f.following_id
GROUP BY u.username
ORDER BY followers DESC
LIMIT 1;

-- 15. Posts with comments
SELECT
p.id,
COUNT(c.id) AS comments
FROM posts p
LEFT JOIN comments c
ON p.id = c.post_id
GROUP BY p.id;

-- 16. Users who created posts
SELECT DISTINCT
u.username
FROM users u
JOIN posts p
ON u.id = p.user_id;

-- 17. Users who liked posts
SELECT DISTINCT
u.username
FROM users u
JOIN likes l
ON u.id = l.user_id;

-- 18. Users following Ahmed
SELECT
u.username
FROM followers f
JOIN users u
ON f.follower_id = u.id
WHERE f.following_id = 1;

-- 19. Users Ahmed follows
SELECT
u.username
FROM followers f
JOIN users u
ON f.following_id = u.id
WHERE f.follower_id = 1;

-- 20. Top engaged post
SELECT
p.id,
COUNT(DISTINCT l.user_id) +
COUNT(DISTINCT c.id) AS engagement
FROM posts p
LEFT JOIN likes l
ON p.id = l.post_id
LEFT JOIN comments c
ON p.id = c.post_id
GROUP BY p.id
ORDER BY engagement DESC
LIMIT 1;

