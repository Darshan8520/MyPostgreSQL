

create table emp2(

	userid	 INT ,
	username	VARCHAR(20),
	email	VARCHAR(20),
	age	VARCHAR(20),
	joiningdate	VARCHAR(20),
	city	VARCHAR(20)

);

select * from emp2 ;

copy emp2 (userid , username, email, age , joiningdate , city ) 
from 'C:\Users\darsh\OneDrive\Desktop\New folder\data-1793844061008.csv'
delimiter ','
csv header ;

