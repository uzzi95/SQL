-- CREATE DATABASE

create database G1;

-- USE DATABASE

use G1;

create table students (
id int primary key,
name varchar(10),
age int ,
grade varchar(3),
marks int,
city varchar(10)
);

select * from students;

insert into students ( id , name , age , grade , marks , city ) values
(101 , "Alex" , 70 , "B" , 60 , "Karachi"),
(102 , "Lexi" , 50 , "A", 70 , "Vehari"),
(103 , "Luna" , 19 , "A+" , 80 , "Islamabad"),
(104 , "Exel" , 77 , "D" , 50 , "Mian Chunnu"),
(105 , "Uzair" , 25 , "A1" , 98 , "Lahore");

select * from students;

drop table students;

-- CLAUSING
-- WHERE KAHAN
select * from students;
select * from students where city = "vehari";
select * from students where age = 19;
select * from students where marks = 80;
select * from students where city in  ("Karachi" , "Mian Chunnu" , "Lahore");

select * from students where age between 20 and 50;
select * from students where id = 104; 
select * from students where marks = 98 or grade ="D";
select * from students where grade = "C" and marks = 70;

-- UPDATE
set sql_safe_updates =0;
update students 
set grade="A" where marks = 60;
select * from students;

update students set marks = marks +5;
