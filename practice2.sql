create table users(
	userid int primary key ,
	username varchar(20) not null ,
	email varchar(30) unique ,
	age int check(age>10),
	joiningdate timestamp default current_timestamp 
) ;


insert into users(userid ,username ,email ,age  )
	values(1,'dax','dax123@gmail.com',23),
	(2,'harry','harry234@gmail.com',22) ;

update users set age =24 where username ='dax';


alter table users 
add column city varchar (30) ;

update users set city = 'ahmdedabad' where username ='dax' ;
update users set city ='kalol ' where username ='harry' ;

update users set city ='chennai' where age >22 ;
select * from users order by userid asc ;


update users set age =age+2 where email like '%@gmail.com';

select * from users ;
