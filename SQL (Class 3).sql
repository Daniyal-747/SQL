create database G1;

use G1;

create table student(
id int primary key,
name varchar(10),
age int check (age>18),		-- Check is used to put a condition. In this condition age should be greater than 18
marks int,
grade varchar(3),
city varchar (10) default "Karachi"		-- default is used to store a condition in it. Whenever we will write default it will show Karachi
);

insert into student (id, name, age, marks, grade, city) values
(101, "Ahmed", 30, 90, "A+1", default),
(102, "Bilal", 40, 80, "B", "Lahore"),
(103, "Hamza", 50, 70, "C", "Peshawar"),
(104, "Kashif", 60, 60, "D", "Multan"),
(105, "Ahsan", 19, 50, "F", "Faisalabad");

select * from student;

-- CLAUSING
-- WHERE

select * from student;

select * from student where id = 102;
select * from student where age between 30 and 50;
select * from student where city in ("peshawar", "Lahore");
select * from student where marks = 80 or grade = "F";
select * from student where marks = 80 and grade ="B";

-- UPDATE

select * from student;

set sql_safe_updates=0;
update student set marks = 85 where marks = 80;
update student set marks = marks+5; 

set sql_safe_updates=1;

-- AGGREGATE FUNCTIONS
select * from student;
select min(marks) from student;
select max(marks) from student;
select min(name) from student;		-- This will give you the name with First letter
select max(name) from student;		-- This will give you the name with last letter 
select count(city) from student;
select avg(marks) from student;

-- GROUP BY (Group By Is Used to Group more than one Target)

select city , name from student group by city , name;
select name , age, marks from student group by name, age, marks;

-- ORDER BY  (It is used to arrange data in order either in Asscending or Descending)

select * from student;

select name , city from student order by name, city;
select * from student order by name ASC;		-- Asscending Order
select * from student order by name DESC;		-- Descending Order
