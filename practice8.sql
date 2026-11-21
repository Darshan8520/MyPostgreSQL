DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30),
    salary INT,
    dept_id INT
);

INSERT INTO employees (emp_id, emp_name, salary, dept_id)
VALUES
(1, 'Darshan', 55000, 101),
(2, 'Rahul', 45000, 102),
(3, 'Amit', 65000, 103),
(4, 'Priya', 60000, 101),
(5, 'Neha', 70000, 104),
(6, 'Karan', 48000, 102),
(7, 'Sneha', 75000, NULL),
(8, 'Rohit', 52000, 105);


CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30),
    location VARCHAR(30)
);


INSERT INTO departments (dept_id, dept_name, location)
VALUES
(101, 'IT', 'Ahmedabad'),
(102, 'HR', 'Mumbai'),
(103, 'Finance', 'Delhi'),
(104, 'Marketing', 'Chennai'),
(106, 'Sales', 'Pune');

SELECT * FROM employees;

SELECT * FROM departments;


select e.emp_name , e.emp_id , e.salary , d.dept_id , d.dept_name from employees e 
inner join departments d 
on e.dept_id=d.dept_id ;


select e.emp_name , e.emp_id , e.salary , d.dept_id , d.dept_name from employees e 
left join departments d 
on e.dept_id=d.dept_id ;


select e.emp_name , e.emp_id , e.salary , d.dept_id , d.dept_name from employees e 
right  join departments d 
on e.dept_id=d.dept_id ;

select e.emp_name , e.emp_id , e.salary , d.dept_id , d.dept_name from employees e 
full join departments d 
on e.dept_id=d.dept_id ;

select e.emp_name , e.emp_id , e.salary , d.dept_id , d.dept_name from employees e 
cross join departments d 
