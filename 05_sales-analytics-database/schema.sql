CREATE TABLE categories (
id SERIAL PRIMARY KEY,
name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE products (
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
category_id INT REFERENCES categories(id),
price DECIMAL(10,2) NOT NULL
);

CREATE TABLE sales (
id SERIAL PRIMARY KEY,
product_id INT REFERENCES products(id),
quantity INT NOT NULL,
sale_date DATE NOT NULL
);
