-- CREATE DATABASE

create database G2;

-- USE DATABASE

use G2;

create table student (
id int primary key,
name varchar(10),
age int check (age>18) ,
grade varchar(3),
marks int,
city varchar(10)
);

select * from student;

insert into student ( id , name , age , grade , marks , city ) values

(101 , "Bilal" , 32 , "A+1" , 90 , "Faislabad"),
(102 , "Danial" , 30 , "D" , 50 , "Islamabad"),
(103 , "Maaz" , 24 , "A" , 70 , "Faizabad"),
(104 , "Usama" , 31 , "B" , 64 , "Gothki"),
(105 , "Talha" , 25 , "A+1" , 92 , "Lahore");

select * from student;

-- WHERE KAHAN
-- WHERE CLAUSING
 
select * from student where id = 104;
select * from student where age between 25 and 32;
select * from student where city in ("Gothki" , "Islamabad");
select * from student where age >30 or grade = "A+1";
select * from student where marks = 90 and grade = "A+1";


-- UPDATE QUERY

select * from student;
set sql_safe_updates =0;
update student
set marks = 65 where marks = 60;

update student set marks = marks+5;

-- AGGREGATE FUNCTIONS

select min(marks) from student;
select max(age) from student;
select max(name) from student;
select min(name) from student;
select count(city) from student;
select avg(marks) from student;


-- GROUP BY FUNCTION
select city , name from student group by city, name;
select age, marks , grade from student group by age,marks,grade;

-- ORDER BY FUNCTION

select * from student order by city ASC;
select * from student order by city DESC;
select city , name from student order by  city, name;
select age, marks , grade from student order by age,marks,grade;
select marks, age , grade from student order by marks,age,grade;

-- 





