-- CREATE DATABASE

create database G1;

-- USE DATABASE

use G1; 

--	Int is your integer/number
--  varchar(10) restrict the length of a character. means you can use onlu 10 letters
-- primary key is used to make unique id. It is only used when id is defined

create table students(
id int primary key,
name varchar(10),
age int,
grade varchar(10),
marks int,
city varchar(10)
);

-- "*" is used for all. Select * from is used to excute our table. 
select * from students;

-- Now we are putting Data into our table... After giving all dable data, we will give values to it.
insert into students (id , name , age , grade, marks, city) values
(106, "Daniyal", 27, "A+1", 95, "Karachi"),
(107, "Ahmed", 50, "B", 60, "Peshawar")
