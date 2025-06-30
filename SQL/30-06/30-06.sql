CREATE TABLE sales(
	Sale_id	INT PRIMARY KEY,
	Customer_id	INT,
	Region 	VARCHAR(50),
	Sale_date DATE,
	Amount INT
);

INSERT INTO sales VALUES
(1,	101,	'West',	'2023-01-05',	500),
(2,	101,	'West',	'2023-02-12',	700),
(3,	102,	'East',	'2023-01-20',	300),
(4,	102,	'East',	'2023-02-25',	450),
(5,	103,	'South','2023-03-05',	800),
(6,	103,	'South','2023-04-01',	600),
(7,	101,	'West',	'2023-03-15',	400);

INSERT INTO sales VALUES
(8, 102, 'East', '2023-03-18', 550),
(9, 103, 'South', '2023-05-10', 900),
(10, 101, 'West', '2023-04-20', 650);


UPDATE sales
SET amount = 500
WHERE sale_id = 1;

SELECT *
FROM sales
ORDER BY sale_id ASC;

-- List all unique regions from the sales table
SELECT DISTINCT region 
FROM sales;

-- Count the number of sales per region.
SELECT region, COUNT(*) AS sales_count
FROM sales
GROUP BY region;

-- Find the average sale amount for each customer
SELECT customer_id, AVG(amount) AS Avg_amount
FROM sales
GROUP BY customer_id
ORDER BY Avg_amount DESC;
