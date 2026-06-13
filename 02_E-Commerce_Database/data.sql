INSERT INTO categories (name)
VALUES
('Electronics'),
('Books'),
('Accessories');

INSERT INTO customers
(first_name,last_name,email)
VALUES
('Ahmed','Ali','ahmed@gmail.com'),
('Sara','Karim','sara@gmail.com'),
('Youssef','Brahim','youssef@gmail.com');

INSERT INTO products
(name,price,stock_quantity,category_id)
VALUES
('Laptop',1200,10,1),
('Keyboard',50,30,1),
('SQL Book',25,100,2),
('Mouse',20,40,3);

INSERT INTO orders (customer_id)
VALUES
(1),
(2),
(3);

INSERT INTO order_items
(order_id,product_id,quantity,unit_price)
VALUES
(1,1,1,1200),
(1,2,2,50),
(2,3,1,25),
(3,4,3,20);
