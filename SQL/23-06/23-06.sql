CREATE TABLE employees (
	emp_id INT PRIMARY KEY,
	name TEXT,
	age INT,
	gender TEXT,
	department TEXT,
	salary INT
); 

INSERT INTO employees VALUES
(101,'Alice Jones',29,'Female','Sales',65000),
(102,'Bob Smith',45,'Male','HR',72000),
(103,'Carla Vega',33,'Female','Finance',80000),
(104,'David Lee',41,'Male','Sales',58000),
(105,'Emily Zhou',37,'Female','HR',70000)
;

SELECT * FROM employees;

SELECT name,salary
FROM employees;

SELECT name,age
FROM employees
WHERE age>40;

SELECT name,department
FROM employees
WHERE gender = 'Female' and department = 'HR';

SELECT name
FROM employees
WHERE salary > 65000;