-- CREATE DATABASE

create database G1;

-- USE DATABASE

use G1;

create table student (
id int primary key,
name varchar(10),
age int ,
grade varchar(3),
marks int,
city varchar(10)
);

select * from student;

insert into student ( id , name , age , grade , marks , city ) values
(101 , "Alex" , 70 , "B" , 60 , "Karachi"),
(102 , "Lexi" , 50 , "A", 70 , "Vehari"),
(103 , "Luna" , 19 , "A+" , 80 , "Islamabad"),
(104 , "Exel" , 77 , "D" , 50 , "Mian Chunnu"),
(105 , "Uzair" , 25 , "A1" , 98 , "Lahore");