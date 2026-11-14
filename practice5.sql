CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    email VARCHAR(100),
    department VARCHAR(40),
    job_title VARCHAR(60),
    manager_id INT,
    hire_date DATE,
    employment_status VARCHAR(20),
    city VARCHAR(40),
    state VARCHAR(40),
    country VARCHAR(30),
    salary NUMERIC(12,2),
    bonus_pct NUMERIC(5,2),
    performance_rating NUMERIC(2,1)
);


select * from employees ;

select first_name , salary , (salary *12 ) as annual_salary ,
	(salary *0.05) as incrementbyyr
from employees ;


select * from employees where  department != 'IT' ;

select * from employees where  country = 'India'  and city ='Ahmedabad' ;

select first_name ,last_name ,email from employees where email is null ;

select first_name ,email from employees order by salary ;

select first_name ,email from employees order by salary 
limit 3 ;

select count (distinct department) from employees ;