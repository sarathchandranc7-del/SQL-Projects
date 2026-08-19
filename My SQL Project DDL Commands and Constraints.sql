/*
		PART 1: DDL COMMANDS
	following is the ddl commands applied on the data instructions
    
    N.B: the database is droped in part 1 of ddl commands and in part 2 the database is created again
*/

CREATE DATABASE employee;

USE employee;

CREATE TABLE Departments (
department_id int,
department_name varchar(50)
);


CREATE TABLE Location (
    location_id int,
    location varchar(50)
);


CREATE TABLE Employees (
    employee_id int,
    employee_name varchar(100),
    gender char(1),
    age int,
    hire_date date,
    designation varchar(50),
    department_id int,
    location_id int
);
 
INSERT INTO Departments (department_id,department_name)
VALUES
	(1,'Human Resources'),
    (2,'Finance'),
    (2,'Sales'),
	(4, 'Marketing'),
	(5, 'IT'),
	(6, 'Operations'),
	(7, 'Logistics'),
	(8, 'Administration'),
	(9, 'Customer Service'),
	(10, 'Research');
    
    INSERT INTO Location (Location_id,Location)
    VALUES
	(1, 'Kochi'),
	(2, 'Thrissur'),
	(3, 'Kozhikode'),
	(4, 'Kannur'),
	(5, 'Kollam'),
	(6, 'Trivandrum'),
	(7, 'Alappuzha'),
	(8, 'Palakkad'),
	(9, 'Malappuram'),
	(10, 'Kottayam');
    
    INSERT INTO Employees
	(employee_id, employee_name, gender, age, hire_date, designation,
	 department_id, location_id)
	VALUES
	(101, 'Arun Kumar', 'M', 28, '2024-01-15', 'HR Executive', 1, 1),
	(102, 'Anjali Nair', 'F', 25, '2024-02-10', 'Accountant', 2, 2),
	(103, 'Rahul Das', 'M', 32, '2023-06-20', 'Sales Executive', 3, 3),
	(104, 'Meera Thomas', 'F', 29, '2023-08-05', 'Marketing Executive', 4, 4),
	(105, 'Vishnu Raj', 'M', 35, '2022-11-12', 'Software Engineer', 5, 5),
	(106, 'Sneha Menon', 'F', 27, '2024-03-18', 'Operations Executive', 6, 6),
	(107, 'Nikhil S', 'M', 30, '2023-04-25', 'Logistics Coordinator', 7, 7),
	(108, 'Amal Joseph', 'M', 41, '2021-09-30', 'Administrator', 8, 8),
	(109, 'Diya Paul', 'F', 24, '2024-05-14', 'Customer Executive', 9, 9),
	(110, 'Fathima Ali', 'F', 33, '2022-07-22', 'Research Analyst', 10, 10);
    
    select * from departments;
	select * from Employees;
	select * from Location;
    
    alter table employees
    add email varchar (100);
    
    alter table employees
    modify designation varchar (100);
    
    alter table employees 
    drop column age;
    
    alter table employees
    rename column hire_date to date_of_hiring;
    
	rename table departments to Departments_info;
	rename table location to locations;
    
	select * from departments_info;
	select * from Locations;
	select * from employees;
    
	truncate TABLE employees;
    drop table employees;
    drop database employee;
    
   /*
		PART 2 : CONSTRAINTS
   the following is the constraints applied to the data instructions
   */
    
    create database employees;
    use employees;
    
    create table departments (
		department_id int primary key,
        department_name varchar(50) not null unique
        );
	
	create table location (
		location_id int primary key auto_increment,
        location varchar(50) not null unique
        ) AUTO_INCREMENT = 1; 

insert into Departments (department_id, department_name)
VALUES
	(1, 'Human Resources'),
	(2, 'Finance'),
	(3, 'Sales'),
	(4, 'Marketing'),
	(5, 'IT'),
	(6, 'Operations'),
	(7, 'Logistics'),
	(8, 'Administration'),
	(9, 'Customer Service'),
	(10, 'Research');
    
insert into Location (location)
VALUES
	('Kochi'),
	('Thrissur'),
	('Kozhikode'),
	('Kannur'),
	('Kollam'),
	('Trivandrum'),
	('Alappuzha'),
	('Palakkad'),
	('Malappuram'),
	('Kottayam');
    
SELECT * FROM Location;
SELECT * FROM departments;


create table employees (
	employee_id int primary key,
    employee_name varchar(100) not null,
    gender char(1) not null,
    age int check ( age>= 18),
    hire_date date default(current_date),
    designation varchar (100),
    department_id int,
    location_id int,
    check (gender in ('M','F')),
		foreign key(department_id)
			references departments(department_id),
            
		foreign key(location_id)
			references location(location_id)
	);
    
INSERT INTO Employees
	(employee_id, employee_name, gender, age, hire_date, designation,
	 department_id, location_id)
	VALUES
	(101, 'Arun Kumar', 'M', 28, '2024-01-15', 'HR Executive', 1, 1),
	(102, 'Anjali Nair', 'F', 25, '2024-02-10', 'Accountant', 2, 2),
	(103, 'Rahul Das', 'M', 32, '2023-06-20', 'Sales Executive', 3, 3),
	(104, 'Meera Thomas', 'F', 29, '2023-08-05', 'Marketing Executive', 4, 4),
	(105, 'Vishnu Raj', 'M', 35, '2022-11-12', 'Software Engineer', 5, 5),
	(106, 'Sneha Menon', 'F', 27, '2024-03-18', 'Operations Executive', 6, 6),
	(107, 'Nikhil S', 'M', 30, '2023-04-25', 'Logistics Coordinator', 7, 7),
	(108, 'Amal Joseph', 'M', 41, '2021-09-30', 'Administrator', 8, 8),
	(109, 'Diya Paul', 'F', 24, '2024-05-14', 'Customer Executive', 9, 9),
	(110, 'Fathima Ali', 'F', 33, '2022-07-22', 'Research Analyst', 10, 10);
    
    
    
select* from employees;
    