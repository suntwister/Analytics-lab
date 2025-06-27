CREATE TABLE products (
	Product_id INT PRIMARY KEY,
	Name TEXT,
	Category TEXT,
	Price DECIMAL(10,2)
);

INSERT INTO products VALUES
(1, 'iPhone 14 Pro', 'Electronics', 1200.00),
(2, 'Galaxy Watch 5', 'Gadgets', 250.00),
(3, 'MacBook Air', 'Electronics', 999.99),
(4, 'Wireless Mouse', 'Accessories', 45.00),
(5, 'Pro Headphones', 'Electronics', 150.00),
(6, 'Bluetooth Speaker', 'Gadgets', 80.00),
(7, 'Smart Keyboard', 'Accessories', 110.00),
(8, 'Drone Pro', 'Gadgets', 550.00);


SELECT * FROM products;

-- Products between ₦50 and ₦100
SELECT *
FROM products
WHERE price BETWEEN 50 AND 100;

-- Products containing the word "Pro"
SELECT *
FROM products 
WHERE name LIKE '%Pro';

-- Products in "Electronics" or "Gadgets"
SELECT *
FROM products 
WHERE category IN ('Electronics', 'Gadgets');

-- Products costing more than ₦500 in Electronics
SELECT *
FROM products
WHERE price > 500 AND category = 'Electronics';

--