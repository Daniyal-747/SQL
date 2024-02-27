create database G1;

use G1;

create table student(
id int primary key,
name varchar(10),
age int check (age>=18),
marks int,
grade varchar(3),
city varchar (10) default "Karachi"
);

insert into student(id, name, age, marks, grade, city) values
(101, "Alex", 40, 80, "A+", default),
(102, "Famous", 20, 60, "B", "Lahore"),
(103, "Henry", 35, 70, "A", "Quetta"),
(104, "Rossy", 30, 95, "A+1", "Peshawar"),
(105, "KARANCHI", 23, 47, "D", default);

select * from student;

-- GENERAL RULE
-- SELECT COLUMN
-- FROM TABLE
-- WHERE
-- GROUP BY
-- HAVING
-- ORDER BY

select name, marks, grade, city from student where age>=30 group by name, marks, grade, city having max(marks>70) order by city ASC;