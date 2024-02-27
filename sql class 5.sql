-- CREATE DATABASE

create database G5;

-- USE DATABASE

use G5;

create table student (
id int primary key,
name varchar(10),
age int check (age>18) ,
grade varchar(3),
marks int,
city varchar(10) default "karachi"
);

select * from student;

insert into student ( id , name , age , grade , marks , city ) values

(101 , "Bilal" , 32 , "A+1" , 90 , "default"),
(102 , "Danial" , 30 , "D" , 50 , "Islamabad"),
(103 , "Maaz" , 24 , "A" , 70 , "Faizabad"),
(104 , "Usama" , 31 , "B" , 64 , "Gothki"),
(105 , "Talha" , 25 , "A+1" , 92 , "default");

select * from student;

-- GENERTAL RULE
-- SELECT COLUMN
-- FROM TABLE
-- WHERE 
-- GROUP BY
-- HAVING 
-- ORDER BY

select name, marks , grade , city from student where age >=25 group by name , marks , grade , city 
having max(marks>=52) order by name ASC;
