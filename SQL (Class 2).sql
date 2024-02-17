create database G1;

use G1;

create table student (
id int primary key,
name varchar(10),
age int,
city varchar(10),
marks int,
grade varchar(3)
);

select * from student;

insert into student(id, name, age, city, marks, grade) values
(101, "Ahmed", 30, "Karachi", 90, "A+1"),
(102, "Hamza", 40, "Peshawar", 80, "B"),
(103, "Kamran", 50, "Lahore", 70, "C"),
(104, "Zaman", 60, "Quetta", 60, "D"),
(105, "Danish", 70, "Islamabad", 40, "F");

select * from student;

-- CLAUSING (It is used to bring data of an individual)
-- Where (Where is the first part of clausing to find where your data exist in the table)

select * from student;
select * from student where city = "Lahore";
select * from student where marks = 70;
select * from student where city in ("karachi" , "lahore");  -- ("city in" is used to target multiple values)
select * from student where age = 40;

select * from student;
select * from student where age between 20 and 40;	-- between is used to target data between the existing values 
select * from student where id = 104;
select * from student where marks = 90 or grade = "D";
select * from student where grade = "C" and marks = 60;
select distinct city from student; 		-- Distinct city is used to check how many cities exist in organization

-- UPDATE QUERY
-- Update Query is used to update a data in the table
 
set sql_safe_updates=0; 		-- set sql_safe_updates=0; zero is used to make changes
update student
set grade = "A" where marks = 70;

set sql_safe_updates=1; 		-- set sql_safe_updates=1;One is used to restrict again so no changes can be made
update student
set grade = "A" where marks = 60;

select * from student;

update student			-- This is used to update marks in the table
set marks = marks +5

