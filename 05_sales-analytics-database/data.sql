INSERT INTO categories (name)
VALUES
('Electronics'),
('Books'),
('Accessories');

INSERT INTO products (name, category_id, price)
VALUES
('Laptop', 1, 1200),
('Keyboard', 1, 50),
('SQL Book', 2, 25),
('Mouse', 3, 20),
('Monitor', 1, 300);

INSERT INTO sales (product_id, quantity, sale_date)
VALUES
(1, 2, '2026-01-05'),
(2, 5, '2026-01-10'),
(3, 10, '2026-02-01'),
(4, 8, '2026-02-12'),
(5, 3, '2026-03-15'),
(1, 1, '2026-03-20'),
(2, 4, '2026-04-01'),
(3, 6, '2026-04-10');

