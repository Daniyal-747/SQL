create database G2;

use G2;

create table students(
id int primary key,
name varchar(10),
age int check (age>18),
marks int,
grade varchar(3),
city varchar (10) default "Karachi"
);

insert into students(id, name, age, marks, grade, city) values
(101, "Alex", 40, 80, "A+", default),
(102, "Famous", 20, 60, "B", "Lahore"),
(103, "Henry", 35, 70, "A", "Quetta"),
(104, "Rossy", 30, 95, "A+1", "Peshawar"),
(105, "KARANCHI", 23, 47, "D", default);

select * from students;

-- CLAUSAING

select * from students where city in ("Karachi", "Sukkur", "Lahore");
select * from students where age between 25 and 50 and grade = "A" or city in ("Peshawar", "Lahore") and marks>60;
select * from students where name in ("Rossy", "Henry", "Don") and city in ("karachi", "Peshawar") and marks>=70 or age between 40 and 85;

-- Delete Query

select * from students;

set sql_safe_updates=0;
delete from students where name = "Alex";

-- ORDER BY

select * from students order by city DESC;
select * from students order by city DESC limit 2;	-- This will only show the last 2 Cities

-- GROUP BY

select name, grade, marks from students group by name, grade, marks;

-- HAVING CLASUE			-- It is necessary to use Having Clause with group By otherwise it will not work

select * from students;

select name, age, marks from students group by name, age, marks having max(marks>=70); 