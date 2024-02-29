drop database paper;
create database mouse;

use mouse;

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

insert into dept values
(501 , "ENGINEERING"),
(502 , "MEDICAL"),
(503 , "SOCIAL");

select * from dept;




select * from dept;

update dept set id = 504 where id = 503;

drop table teacher;

create table teacher(
id int primary key,
name varchar(10),
dept_id int,
foreign key (dept_id) references dept (id)
ON UPDATE CASCADE
ON DELETE CASCADE
);


insert into teacher values
(501 ,"alex",501),(502 , "Max" , 502),(503 , "Peter" , 503);

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
select * from dept left join teacher on dept.id = teacher.id
union
select * from dept right join teacher on dept.id = teacher.id;

-- ALTER

