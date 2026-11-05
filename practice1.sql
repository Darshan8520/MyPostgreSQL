create table worker(
	workerid int primary key ,
	name varchar(30),
	joiningdate date ,
	salary numeric(10,2)
)

select * from worker ;

insert into worker(workerid,name , joiningdate, salary )
	values(1,'dax','2002-9-8',1000.00),
			(2,'nayan','2008-9-7',500.00) ;

Delete from worker where workerid = 1 ;


alter table worker 
drop column salary ;



