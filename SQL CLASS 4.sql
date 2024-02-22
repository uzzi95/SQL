-- CREATE DATABASE

create database G3;

-- USE DATABASE

use G3;

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

-- WHERE KAHAN
-- WHERE CLAUSING
select * from student where city in ("karachi" , "sukkur" , "gothki");
select * from student where age between 25 and 50 and grade = "A" or city in ("gothki" , "islamabad") and marks>60;
select * from student where name in ("Maaz" , "Bilal" , "Munna") and city in ("Faizabad" , "Mian chunnu") and marks >=70 or age between 40 and 85; 


-- DELETE QUERY
set sql_safe_updates =0;
delete  from student where name = "Bilal";

-- HAVING CLAUSE 
select * from student;


-- GENERAL RULE

