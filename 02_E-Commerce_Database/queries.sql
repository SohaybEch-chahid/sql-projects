-- 1. Show all customers
SELECT * FROM customers;

-- 2. Show all products
SELECT * FROM products;

-- 3. Show all categories
SELECT * FROM categories;

-- 4. Show all orders
SELECT * FROM orders;

-- 5. Show products with category names
SELECT
p.name,
c.name AS category
FROM products p
JOIN categories c
ON p.category_id = c.id;

-- 6. Show orders with customer names
SELECT
o.id,
c.first_name,
c.last_name
FROM orders o
JOIN customers c
ON o.customer_id = c.id;

-- 7. Total number of customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 8. Total number of products
SELECT COUNT(*) AS total_products
FROM products;

-- 9. Average product price
SELECT AVG(price) AS average_price
FROM products;

-- 10. Most expensive product
SELECT *
FROM products
ORDER BY price DESC
LIMIT 1;

-- 11. Revenue per product
SELECT
p.name,
SUM(oi.quantity * oi.unit_price) AS revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.id
GROUP BY p.name;

-- 12. Best-selling products
SELECT
p.name,
SUM(oi.quantity) AS sold
FROM order_items oi
JOIN products p
ON oi.product_id = p.id
GROUP BY p.name
ORDER BY sold DESC;

-- 13. Customer order count
SELECT
c.first_name,
COUNT(o.id) AS total_orders
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
GROUP BY c.first_name;

-- 14. Total revenue
SELECT
SUM(quantity * unit_price) AS total_revenue
FROM order_items;

-- 15. Products low in stock
SELECT *
FROM products
WHERE stock_quantity < 20;

-- 16. Products ordered by price
SELECT *
FROM products
ORDER BY price DESC;

-- 17. Customers ordered alphabetically
SELECT *
FROM customers
ORDER BY first_name;

-- 18. Orders with product details
SELECT
o.id AS order_id,
p.name,
oi.quantity
FROM order_items oi
JOIN orders o
ON oi.order_id = o.id
JOIN products p
ON oi.product_id = p.id;

-- 19. Number of products per category
SELECT
c.name,
COUNT(p.id) AS product_count
FROM categories c
LEFT JOIN products p
ON c.id = p.category_id
GROUP BY c.name;

-- 20. Highest revenue product
SELECT
p.name,
SUM(oi.quantity * oi.unit_price) AS revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.id
GROUP BY p.name
ORDER BY revenue DESC
LIMIT 1;

