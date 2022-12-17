use Intro_sql

create table emp_info
(
first_name varchar(20),
last_name varchar(20),
id int not null,
age int,
city varchar(20),
state varchar(20),
PRIMARY KEY(id)
)

select * from emp_info

INSERT into emp_info values('John','Jones', 99980,45,'Payson','Arizona');
INSERT into emp_info values('mary','Jones', 99982,45,'Payson','Arizona');
INSERT into emp_info values('Eric','Edwards', 88232,45,'San Diego','California');
INSERT into emp_info values('Mary Ann','Edwards', 88233,32,'Phoenix','Arizona');

INSERT into emp_info values('Ginger','Howll', 98002,42,'Cottonwood','Arizona');
INSERT into emp_info values('Sebastian','Smith', 92001,23,'Gila Band','Arizona');
INSERT into emp_info values('Gus','Grey', 22332,35,'Bagdad','California');
INSERT into emp_info values('Mary Ann','May', 323226,52,'Tucson','Arizona');

INSERT into emp_info values('Erica','Williams', 32327,60,'Showlow','Arizona');
INSERT into emp_info values('Leroy','Brown', 32380,22,'Pine Top','Arizona');
INSERT into emp_info values('Elroy','Vleaver', 32382,22,'Globe','Arizona');

select first_name,last_name from emp_info
select count(*) as reord_counts from emp_info

select first_name as first,last_name as last from emp_info

select first_name ,last_name,city,age from emp_info where age>30 and age<50

select * from emp_info where age=22 or age=32.
select * from emp_info where age in (22,32,42,52)



-- whose name starts with E
select * from emp_info where first_name like 'E%'
select * from emp_info where first_name like 'er%'
select * from emp_info where first_name='Erica'
select * from emp_info where first_name='Erica' and last_name = 'Williams' and id = 32327

-- whose name ends with s
select * from emp_info where last_name like '%s'

-- whose city has t in it anywehere
select * from emp_info where city like '%t%'
