use Intro_sql

drop table emp_info

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

INSERT into emp_info (first_name, last_name, id, age, city, state) values('John','Jones', 99980,45,'Payson','Arizona');

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


drop table new_emp

create table new_emp
(
emp_name varchar(50),
position varchar(25),
age int,
salary float
)

select * from new_emp

INSERT into new_emp values('Jonie Weber', 'Secretary', 28, 19500.00);
INSERT into new_emp values('Potsy Weber', 'Programmer', 32, 45300.00);
INSERT into new_emp values('Dirk Smith', 'Programmer II', 45, 75020.00);


INSERT into new_emp values('Amit Kumar', 'TAL', 30, 1500000.00);
INSERT into new_emp values('Sumit Dahiya', 'AL', 32, 2200000.00);
INSERT into new_emp values('Rinku Siwach', 'Yoga Teacher', 27, 500000.00);
INSERT into new_emp values('Rishabh Chaudhary', 'Pilot', 30, 17000000.00);
INSERT into new_emp values('Amar Malhotra', 'Teacher', 30, 1500000.00);

select * from new_emp

select * from new_emp where salary>100000
select emp_name from new_emp where age<=30

select emp_name,salary from new_emp where position like '%Programmer%'
select * from new_emp where emp_name like '%ebe%'
select * from new_emp where age>80
select * from new_emp where emp_name like '%ith'

SET SQL_SAFE_UPDATES = 0;
update new_emp set position = 'Student' where emp_name = 'Amit Kumar'
update new_emp set position = 'Deep Learning DS', age=31 where emp_name = 'Amit Kumar'

select * from new_emp where emp_name='Rinku Siwach'
update new_emp set  age=28 where emp_name = 'Rinku Siwach'
update new_emp set  age=age-1 where emp_name = 'Rinku Siwach'

update new_emp set  position= "Sr Programmer" where position= "Programmer"

delete from new_emp where position = "Teacher"

create table assignment1
(
emp_id int not null,
full_name varchar(50),
salary int DEFAULT 25000,
age int,
PRIMARY KEY (emp_id)
)

