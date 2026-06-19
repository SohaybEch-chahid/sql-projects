CREATE TABLE users (
id SERIAL PRIMARY KEY,
username VARCHAR(50) UNIQUE NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE posts (
id SERIAL PRIMARY KEY,
user_id INT REFERENCES users(id),
content TEXT NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE comments (
id SERIAL PRIMARY KEY,
user_id INT REFERENCES users(id),
post_id INT REFERENCES posts(id),
content TEXT NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE likes (
user_id INT REFERENCES users(id),
post_id INT REFERENCES posts(id),
PRIMARY KEY (user_id, post_id)
);

CREATE TABLE followers (
follower_id INT REFERENCES users(id),
following_id INT REFERENCES users(id),
PRIMARY KEY (follower_id, following_id)
);

