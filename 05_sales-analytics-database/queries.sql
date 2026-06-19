-- 1. Show all categories
SELECT * FROM categories;

-- 2. Show all products
SELECT * FROM products;

-- 3. Show all sales
SELECT * FROM sales;

-- 4. Products with categories
SELECT
p.name,
c.name AS category,
p.price
FROM products p
JOIN categories c
ON p.category_id = c.id;

-- 5. Total number of sales
SELECT COUNT(*) AS total_sales
FROM sales;

-- 6. Total quantity sold
SELECT SUM(quantity) AS total_quantity
FROM sales;

-- 7. Revenue per product
SELECT
p.name,
SUM(s.quantity * p.price) AS revenue
FROM sales s
JOIN products p
ON s.product_id = p.id
GROUP BY p.name;

-- 8. Total revenue
SELECT
SUM(s.quantity * p.price) AS total_revenue
FROM sales s
JOIN products p
ON s.product_id = p.id;

-- 9. Average product price
SELECT AVG(price)
FROM products;

-- 10. Most expensive product
SELECT *
FROM products
ORDER BY price DESC
LIMIT 1;

-- 11. Top-selling products
SELECT
p.name,
SUM(s.quantity) AS sold
FROM sales s
JOIN products p
ON s.product_id = p.id
GROUP BY p.name
ORDER BY sold DESC;

-- 12. Revenue by category
SELECT
c.name,
SUM(s.quantity * p.price) AS revenue
FROM sales s
JOIN products p
ON s.product_id = p.id
JOIN categories c
ON p.category_id = c.id
GROUP BY c.name;

-- 13. Monthly revenue
SELECT
DATE_TRUNC('month', sale_date) AS month,
SUM(s.quantity * p.price) AS revenue
FROM sales s
JOIN products p
ON s.product_id = p.id
GROUP BY month
ORDER BY month;

-- 14. Products never sold
SELECT *
FROM products p
WHERE NOT EXISTS (
SELECT 1
FROM sales s
WHERE s.product_id = p.id
);

-- 15. Best revenue product
SELECT
p.name,
SUM(s.quantity * p.price) AS revenue
FROM sales s
JOIN products p
ON s.product_id = p.id
GROUP BY p.name
ORDER BY revenue DESC
LIMIT 1;

-- 16. Category product count
SELECT
c.name,
COUNT(p.id)
FROM categories c
LEFT JOIN products p
ON c.id = p.category_id
GROUP BY c.name;

-- 17. Sales ordered by date
SELECT *
FROM sales
ORDER BY sale_date;

-- 18. Latest sale
SELECT *
FROM sales
ORDER BY sale_date DESC
LIMIT 1;

-- 19. Earliest sale
SELECT *
FROM sales
ORDER BY sale_date
LIMIT 1;

-- 20. Top 3 products by revenue
SELECT
p.name,
SUM(s.quantity * p.price) AS revenue
FROM sales s
JOIN products p
ON s.product_id = p.id
GROUP BY p.name
ORDER BY revenue DESC
LIMIT 3;

