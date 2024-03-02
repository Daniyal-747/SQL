create database paper;

use paper;

create table dept(
id int primary key,
name varchar(15)
);

create table teacher(
id int primary key,
name varchar(10),
dept_id int,
foreign key (dept_id) references dept (id)
);

insert into dept(id, name) values 
(501, "ENGINEERING"),
(502, "MEDICAL"),
(503, "MEDIA");

insert into teacher(id, name, dept_id) values
(501, "Alex", 501),
(502, "Henry", 502),
(503, "Rossy", 503);

select * from teacher;
select * from dept;

-- DROP TABLE TEACHER
drop table teacher;

-- CASCADING METHOD
create table teacher(
id int primary key,
name varchar(10),
dept_id int,
foreign key (dept_id) references dept (id)
ON UPDATE CASCADE				-- Update Cascade is used to update something the table
ON DELETE CASCADE				-- Delete cascade is used to delete something the table
);

insert into teacher(id, name, dept_id) values
(501, "Alex", 501),
(502, "Henry", 502),
(503, "Rossy", 503);

select * from teacher;
select * from dept;

update dept set id = 504 where id = 503;

-- JOINS
-- INNER JOIN

select * from dept inner join teacher on dept.id = teacher.id;

-- LEFT JOIN

select * from dept left join teacher on dept.id = teacher.id;

-- RIGHT JOIN

select * from dept right join teacher on dept.id = teacher.id;

-- FULL JOIN
-- Union is used to combine both data at a time
select * from dept left join teacher on dept.id = teacher.id
union
select * from dept right join teacher on dept.id = teacher.id;

-- ALTER 		-- ALlter is used to update column 
alter table student
add column car varchar(10);

select * from student;

update student
set car = "Civic" where id = 105;

-- DELETE COLUMN
alter table student
drop car;

-- ADD COLUMN

alter table student
add column car varchar(10);

update student
set car = "Civic" where id = 105;

select * from student;

-- CHANGE COLUMN NAME 

alter table student change car bike varchar(10);		-- This changed the name of Column Car to Bike

--  MODIFY COLUMN

alter table student modify bike int;
 