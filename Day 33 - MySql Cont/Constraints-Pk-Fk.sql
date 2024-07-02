/*
SQL Constraints - SQL Constraints

1. Primary Key 
2. Foreign Key
3. Check Constraints
4. Default Constraints
5. Index
*/

create database customer;
use customer

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
constraint pk_person primary key(id,last_name)
);

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int
);

desc person;

drop table person;

alter table person add primary key(id);

drop table person;

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int
);

alter table person add constraint pk_person primary key(id,age);

desc person;

drop table person;

alter table person drop primary key;

--  we have to put unique values in id everytime because it is for different students

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int not null,
unique(id) -- it will make id as unique and do not take same values
);

desc person;

insert into person values(2,'Uzair','Hussain',21);

insert into person values(1,'Subhan','Hussain',18);

insert into person values(2,'Uzair2','Hussain2',21);  -- it will give errors that duplicate id for person

select * from person;

alter table person add unique(first_name); -- change/alter the unique value to first_name

alter table person add constraint uc_person unique(age,first_name); -- it will become mult constraint and 

desc person;

alter table person drop index uc_person;

drop table person;

show tables



