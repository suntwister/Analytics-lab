SELECT *
FROM orders;

ALTER TABLE orders
ADD COLUMN order_amount INT;

UPDATE orders SET order_amount= 500 WHERE order_id= 101;
UPDATE orders SET order_amount= 300 WHERE order_id= 102;
UPDATE orders SET order_amount= 450 WHERE order_id= 103;
UPDATE orders SET order_amount= 700 WHERE order_id= 104;

SELECT * 
FROM customers;

ALTER TABLE customers
RENAME COLUMN name TO customer_name;

-- List all customers and their orders (using LEFT JOIN), Show all customers, even if they have no orders.
SELECT c.customer_name, o.order_id, o.order_amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;
-- List all orders and their corresponding customer names (using INNER JOIN)
SELECT 