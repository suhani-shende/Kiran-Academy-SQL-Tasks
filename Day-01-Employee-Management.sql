# part A:
Create database company_db;
use company_db;
create table employees(employee_id INT PRIMARY KEY,
employee_name VARCHAR(100),
department VARCHAR(50),
salary DECIMAL(10,2),
city VARCHAR(50),
joining_date DATE,
status VARCHAR(20)
);
describe employees;
show tables;
# part B:
INSERT INTO employees
(employee_id, employee_name , department, salary, city, joining_date, status)
VALUES
(101,'Rahul Patil','Development', 45000, 'Pune',' 2026-01-10','Active'),
(102,'Priya Sharma', 'Testing', 38000,' Mumbai', '2026-02-15',' Active'),
(103,'Amit Joshi', 'Development', 52000, 'Pune', '2025-12-05', 'Active'),
(104,'Sneha Kulkarni',' HR', 35000,' Nashik', '2026-03-20', 'Active'),
(105,'Rohan Deshmukh', 'Support', 30000, 'Mumbai', '2026-04-01', 'Inactive'),
(106,'Anjali More', 'Testing', 42000, 'Pune', '2026-05-12','Active');
 SELECT * FROM employees;
# part C: 
SELECT employee_name,salary from employees;
SELECT employee_name,department ,city from employees;
SELECT*from employees where city='pune';
SELECT*from employees where department='development';
SELECT*from employees where department='testing';
SELECT*from employees where status='active';
SELECT*from employees where salary < 40000;
SELECT *from employees where salary > 40000;
SELECT*from employees where salary = 35000;
select*from employees where salary>=42000;
select*from employees where status = 'active' and city ='pune';
select*from employees where department='development' and salary >=45000;
select*from employees where city ='pune' or city ='mumbai';
# part D:
update employees 
set salary = 48000 
where employee_name='Rahul Patil';
update employees 
set status='active' 
where employee_name ='Rohan Deshmukh';
update employees 
set city= 'pune' 
where employee_name ='Sneha Kulkarn';
update employees 
set department='development'
where employee_name ='Priya Sharma';
update employees 
set salary = 45000
where employee_id=106;
update employees 
set salary = salary +3000 
where employee_id=103;
update employees 
set salary =salary+2000 
where department='Testing';
update employees 
set city ='Mumbai branch' 
where city = 'mumbai';
# part E:
delete from employees where employee_id= 105;
delete from employees where employee_name = 'Rohan Deshmukh';
delete from employees where status = 'inactive';
delete from employees where salary < 3000;
delete from employees where employee_id=104;
# part F:
alter table employees add(email VARCHAR (100));
alter table employees add(mobile VARCHAR (15));
alter table employees modify city VARCHAR(100);
rename table employee_name to name;
alter table employees drop column mobile ;
alter table employees add(experience INT);
update employees set experience = 2 where employee_id =103;
# part G:
create database company;
use company;
create table departments(department_id INT PRIMARY KEY,
department_name VARCHAR(50),
location VARCHAR(50));
INSERT INTO departments
(department_id ,department_name ,location)
VALUES
(11,'suhani','nagpur'),
(12,'sunita','nashik'),
(13,'nisha' ,'nagpur');
show tables;
select* from departments;
update departments
set location= 'mumbai'
where department_id=13;
delete from departments where department_id=11;
rename table departments to company_department;
select* from company_department;
delete from company_department;
drop table company_department;
show databases;  