CREATE TABLE employees_2025 (
    emp_id INT,
    emp_name VARCHAR(30),
    department VARCHAR(30),
    salary INT
);

INSERT INTO employees_2025
(emp_id, emp_name, department, salary)
VALUES
(1, 'Darshan', 'IT', 50000),
(2, 'Rahul', 'HR', 45000),
(3, 'Amit', 'Finance', 60000),
(4, 'Priya', 'Marketing', 55000),
(5, 'Neha', 'IT', 65000),
(6, 'Karan', 'Sales', 40000);


CREATE TABLE employees_2026 (
    emp_id INT,
    emp_name VARCHAR(30),
    department VARCHAR(30),
    salary INT
);


INSERT INTO employees_2026
(emp_id, emp_name, department, salary)
VALUES
(1, 'Darshan', 'IT', 50000),
(3, 'Amit', 'Finance', 60000),
(7, 'Sneha', 'HR', 48000),
(8, 'Vikas', 'IT', 70000),
(9, 'Pooja', 'Sales', 42000),
(10, 'Rohit', 'Marketing', 58000);


SELECT * FROM employees_2025;

SELECT * FROM employees_2026;

SELECT
	EMP_NAME
FROM
	EMPLOYEES_2025
UNION
SELECT
	EMP_NAME
FROM
	EMPLOYEES_2026;


SELECT
	EMP_NAME
FROM
	EMPLOYEES_2025
UNION all
SELECT
	EMP_NAME
FROM
	EMPLOYEES_2026;


SELECT
	EMP_NAME
FROM
	EMPLOYEES_2025
intersect
SELECT
	EMP_NAME
FROM
	EMPLOYEES_2026;

SELECT
	EMP_NAME
FROM
	EMPLOYEES_2025
except
SELECT
	EMP_NAME
FROM
	EMPLOYEES_2026;