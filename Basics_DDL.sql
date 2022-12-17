use Intro_SQL;

drop table Students;

create table Students
(
student_id int,
student_name varchar(50) not null,
age int,
gender varchar(1),
location varchar(50)
);

select  * from Students;

INSERT into Students values(1,'Amit Kumar', 30, 'M', 'New Delhi');
-- INSERT into Students values(2, null, 27, 'F', 'Jhajjar');
INSERT into Students values(2, 'RInku', 27, 'F', 'Jhajjar');

create table employees
(
emp_name varchar(50),
emp_id int not null,
manager_name varchar(50),
division int,
PRIMARY KEY (emp_id)
)

select * from employees

create table emp_new
(
emp_first_name varchar(50),
emp_last_name varchar(50),
title varchar(25),
age int,
salary int
)

select * from emp_new
ALTER table emp_new ADD gender varchar(1);

ALTER table emp_new ADD random_col varchar(1);

ALTER table emp_new DROP column random_col;

show tables

-- drop table table_name-- 
DROP table employees;

-- drop database database_name--