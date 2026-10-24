#Part A - Database & Table Creation
use banking_db;
CREATE TABLE accounts (
account_id INT PRIMARY KEY,
account_number VARCHAR(20),
customer_name VARCHAR(100),
account_type VARCHAR(30),
branch VARCHAR(50),
city VARCHAR(50),
balance DECIMAL(12,2),
credit_score INT,
status VARCHAR(20),
opened_date DATE
);
desc accounts;
show tables;
#Part B - INSERT Operations
insert into accounts
values(1001, 'ACC10001', 'Aarav Sharma', 'Savings', 'FC Road', 'Pune', 85000, 780, 'Active', '2025-01-15');
insert into accounts
 values(1002, 'ACC10002', 'Priya Patil', 'Current', 'Andheri', 'Mumbai', 145000, 810, 'Active', '2024-11-20');
insert into accounts
values(1003, 'ACC10003', 'Rohan Joshi', 'Savings', 'Baner', 'Pune', 42000, 735, 'Active', '2026-02-10');
Insert into accounts
values(1004, 'ACC10004', 'Sneha Kulkarni', 'Salary', 'Nashik Road', 'Nashik', 67000, 760, 'Active', '2025-08-05');
insert into accounts
values (1005, 'ACC10005', 'Vikram Deshmukh', 'Savings', 'Camp', 'Pune', 18500, 690, 'Dormant', '2023-06-18');
insert into accounts
values(1006, 'ACC10006', 'Neha More', 'Current', 'Thane', 'Mumbai', 225000, 825, 'Active', '2024-03-12');
#Part C - DQL / SELECT Queries
select *from accounts;
select customer_name, account_number from accounts;
select customer_name,account_type, balance ,status from accounts;
select *from accounts where account_type='Savings';
select *from accounts where city ='pune';
select *from accounts where balance > 50000;
select *from accounts where balance <= 50000;
select *from accounts where balance between 50000 and 200000;
select *from accounts where  credit_score >= 750;
select *from accounts where status ='Active';
select *from accounts where status ='Dormant' or  status = 'Closed';
select *from accounts where city= 'Pune' AND status = 'Active';
select *from accounts where city ='Mumbai' OR city ='Nashik';
select *from accounts where account_type ='Savings' OR account_type='Salary';
select *from accounts where  balance NOT BETWEEN 25000 AND 100000;
select *from accounts where customer_name ='A%';
select *from accounts where customer_name like 'A%';
select *from accounts where customer_name like '%a';
select *from accounts where customer_name like '%a%';
select *from accounts where branch like '%Road%';
select *from accounts order by balance desc limit 3;
SELECT MAX(balance) AS highest_balance FROM accounts LIMIT 1;
SELECT MAX(balance) AS accounts FROM accounts LIMIT 3;
select*from accounts limit 3,3;
select*from accounts where city='pune' and balance >50000;
select city in('Pune', 'Mumbai','Nashik') from accounts where credit_score >= 750;
select*from accounts where city in('Pune', 'Mumbai','Nashik') and credit_score >= 750;
select*from accounts where balance > 100000 AND credit_score >= 800;
Select*from accounts where balance between 50000 and 150000 OR credit_score > 800;
select*from accounts where  status ='Active' AND account_type != 'Current';
select*from accounts where customer_name like '%ar%';
#Part D - UPDATE Operations
update accounts
set balance =95000
 where  customer_name= 'Aarav Sharma';
update accounts
set status ='Active'
where  customer_name= 'Vikram Deshmukh';
update accounts
set credit_score= 755
where  customer_name= 'Priya Patil';
update accounts
set  balance= 25000
where account_id = 1006;
update accounts
set balance =balance +5
where account_type='Savings';
update accounts
set balance =balance -5
where account_type='Savings';
Update accounts
set balance =balance +5000
where account_type='Savings';
update accounts
set city = 'Pune City'
where city = 'Pune';
update accounts
set credit_score=credit_score +10
where account_type = 'Savings' and credit_score <750;
update accounts
set status ='Dormant'
where balance < 20000;
#Part E - DELETE Operations
delete from accounts where  account_id = 1005;
delete from accounts where account_number = 'ACC10004';
delete from accounts where status = 'Closed';
delete from accounts where  balance < 10000 OR credit_score < 600;
delete from accounts where  balance <10000 OR credit_score <600;
delete from accounts where city ='pune city' and  status='Dormant';
#Part F - ALTER TABLE / DDL Practice
alter table accounts add  email VARCHAR(100);
alter table accounts add mobile VARCHAR(15);
alter table accounts Modify branch VARCHAR(100);
alter table accounts drop column mobile;
#Part G - Table-Level DDL Practice
alter table accounts add account_category VARCHAR(30);
UPDATE accounts
 SET account_category = 'Regular'
WHERE account_id = 1002;
RENAME TABLE accounts TO bank_accounts;
select * from bank_accounts;
TRUNCATE TABLE bank_accounts;



