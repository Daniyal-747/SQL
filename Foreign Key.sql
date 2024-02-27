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