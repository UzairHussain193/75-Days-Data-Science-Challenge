/*
SQL Constraints - SQL Constraints
SQL constraints are used to specify any rules for the records in a table.
Constraints can be used to limit the type of data that can go into a table.
It ensures the accuracy and reliability of the records in the table, and
if there is any violation between the constraint and the record action,
the action is aborted. Constraints can be column level or table level.
Column level constraints apply to a column, and table-level constraints
apply to the whole table.

1. Not Null Constraints
2. Unique Constraints
3. Primary Key 
4. Foreign Key
5. Check Constraints
6. Default Constraints
7. Index
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

drop table person;

show tables

-- Foreign key

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
salary int,
primary key(id)
);

desc person;

create table department(
id int not null,
department_id int not null,
department_name varchar(25) not null,
primary key(department_id),
constraint fk_persondepartment foreign key(id) references person(id)
);

desc department;

drop table department;

create table department(
id int not null,
department_id int not null,
department_name varchar(25) not null,
primary key(department_id)
);

desc department;

alter table department add foreign key(id) references person(id);


--  Check Constraint