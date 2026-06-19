INSERT INTO users (username, email)
VALUES
('ahmed','[ahmed@gmail.com](mailto:ahmed@gmail.com)'),
('sara','[sara@gmail.com](mailto:sara@gmail.com)'),
('youssef','[youssef@gmail.com](mailto:youssef@gmail.com)'),
('fatima','[fatima@gmail.com](mailto:fatima@gmail.com)');

INSERT INTO posts (user_id, content)
VALUES
(1,'Learning PostgreSQL'),
(2,'Working on SQL projects'),
(3,'Database design is fun');

INSERT INTO comments (user_id, post_id, content)
VALUES
(2,1,'Great work!'),
(3,1,'Keep going!'),
(4,2,'Nice project');

INSERT INTO likes (user_id, post_id)
VALUES
(2,1),
(3,1),
(4,1),
(1,2),
(3,2);

INSERT INTO followers (follower_id, following_id)
VALUES
(2,1),
(3,1),
(4,1),
(1,2),
(1,3);

