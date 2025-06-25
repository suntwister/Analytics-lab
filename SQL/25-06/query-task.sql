CREATE TABLE employees (
  emp_id INT,
  name TEXT,
  age INT,
  gender TEXT,
  department TEXT,
  salary INT
);

INSERT INTO employees VALUES
(101, 'Alice Jones', 29, 'Female', 'Sales', 65000),
(102, 'Bob Smith', 35, 'Male', 'Finance', 70000),
(103, 'Chika Obasi', 42, 'Female', 'HR', 60000),
(104, 'David Lee', 31, 'Male', 'IT', 80000),
(105, 'Emily Zhang', 27, 'Female', 'Sales', 62000),
(106, 'Frank Adu', 38, 'Male', 'Finance', 75000),
(107, 'Grace Bello', 45, 'Female', 'HR', 68000);

SELECT * FROM employees;

-- All employees in the Finance department.
SELECT *
FROM employees
WHERE department = 'Finance';

-- Employees aged between 30 and 40
SELECT * 
FROM employees
WHERE age BETWEEN 30 AND 40;

-- Names of employees that start with 'A' or 'E'
SELECT *
FROM employees
WHERE name LIKE 'E%' OR name LIKE 'A%';

-- All female employees in HR.
SELECT * 
FROM employees
WHERE gender = 'Female' AND department = 'HR';

-- Employees whose name ends with 'g'
SELECT *
FROM employees
WHERE name LIKE '%g';

