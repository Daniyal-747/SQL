create database bottle;

use bottle;

create table dept (
id int primary key,
name varchar (15)
);

create table teacher (
id int primary key,
name varchar(10),
dept_id int,
foreign key (dept_id) references dept (id)
);

insert into dept(id, name) values 
(405, "ENGINEERING"),
(406, "MEDICAL"),
(407, "MEDIA");

insert into teacher(id, name, dept_id) values
(101, "Henry", 406),
(102, "Henry", 405),
(103, "Henry", 407);

select * from teacher;