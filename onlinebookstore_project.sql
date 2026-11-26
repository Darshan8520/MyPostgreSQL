drop table if exists books ;

create table books(
	book_id serial primary key ,
	title varchar(50),
	Author varchar(50),
	genre varchar(50),
	published_year int ,
	price numeric (10,2),
	stock int 
) ;

drop table if exists customers ;
create table customers (
	customer_id serial primary key ,
	name varchar(50),
	email varchar(50),
	phone varchar (50),
	city varchar(30),
	country varchar (50)
) ;


drop table if exists orders ;
create table orders (
	order_id serial primary key,
    customer_id int references customers(customer_id),
    book_id int references books(book_id),
    order_date date,
    quantity int,
    total_amount numeric(10, 2)
) ;

select * from books;
select * from customers;
select * from orders;

SELECT *
FROM customers
WHERE customer_id IN (224);
-- copy books FROM 'C:/Users/darsh/Downloads/Books.csv' WITH (FORMAT csv, HEADER true)

-- SELECT *
-- FROM books
-- WHERE book_id = 426;

INSERT INTO books
(book_id, title, author, genre, published_year, price, stock)
VALUES
(70, 'Learning PostgreSQL', 'David Miller',
 'Technology', 2023, 24.99, 40); 
 
INSERT INTO books
(book_id, title, author, genre, published_year, price, stock)
VALUES
(446, 'SQL for Data Analysts', 'John Smith',
 'Education', 2024, 29.99, 50);

 INSERT INTO books
(book_id, title, author, genre, published_year, price, stock)
VALUES
(426, 'Advanced SQL Techniques', 'Michael Anderson',
 'Technology', 2022, 34.99, 45);

 SELECT *
FROM books
ORDER BY book_id ASC;

INSERT INTO customers
(customer_id, name, email, phone, city, country)
VALUES
(224, 'Julie Stewart', 'uthompson@hotmail.com',
 '1234568114', 'Smithmouth',
 'British Indian Ocean Territory ');

 INSERT INTO books
(book_id, title, author, genre, published_year, price, stock)
VALUES
(292, ' artificial intelligence',
 'Rachel Adkins', 'Mystery', 2017, 26.94, 2);


select  book_id , title , author , genre ,published_year , price  
from books where genre = 'Fiction' ;

select book_id , title ,author , genre , published_year , price ,stock 
from books where published_year>1950 ;

select customer_id ,name ,email , phone , city , country 
from customers where country = 'Canada';


select order_id , order_date ,quantity ,total_amount 
from orders 
where extract (year from order_date)=2023 and 
extract (month from order_date)=11 ;

select sum(stock) as total_stocks from books ;

select * from books 
order by price desc limit 1  ;

select * from orders  
where quantity > 1 ;

select * from orders 
where total_amount > 20 ;

select distinct genre from books ;

select * from books order by stock ;

select sum (total_amount) as total_revenue from orders ;

select b.genre,sum(o.quantity ) as total_sold
from books b
join orders o
on b.book_id = o.book_id 
group by b.genre ;

select b.genre,avg(o. total_amount) as avg_price
from books b
join orders o
on b.book_id = o.book_id 
where genre = 'Fantasy'
group by b.genre ;

select * from orders ;
select * from books ;

select * from customers ;

select c.name , count(o.order_id) as total_orders
from customers c
join orders o
on c.customer_id = o.customer_id 
group by c.customer_id
having count (o.order_id) >=2 ;


select c.name , count(o.quantity) as total_books
from customers c
join orders o
on c.customer_id = o.customer_id 
group by c.customer_id
having count (o.quantity) > 1 ;


select b.author ,sum(o.quantity) 
from books b
join orders o 
on b.book_id = o.book_id 
group by b.author ;

select c.city , o.total_amount 
from customers c
join orders o 
on c.customer_id = o.customer_id 
where o.total_amount >30 ;


select * from customers ;
select * from orders ;

select c.name , sum(o.total_amount) as total_spend 
from customers c 
join orders o 
on c.customer_id = o.customer_id 
group by c.name  
order by  total_spend  desc limit 1  ;




