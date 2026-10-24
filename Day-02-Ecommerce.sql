# Part A - Database & Table Creation
create database ecommerce_db;
use ecommerce_db;
CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
brand VARCHAR(50),
price DECIMAL(10,2),
quantity INT,
city VARCHAR(50),
status VARCHAR(20)
);
desc products;
show tables;
#Part B - INSERT Operations
insert into products
values(201, 'Galaxy M55', 'Mobile', 'Samsung', 32000, 15, 'Pune', 'Available');
insert into products
values(202, 'iPhone 15', 'Mobile', 'Apple', 65000, 8, 'Mumbai', 'Available');
insert into products
values(203, 'Moto Edge 50', 'Mobile', 'Motorola', 28000, 20, 'Pune', 'Available');
insert into products
values(204, 'Inspiron 15', 'Laptop', 'Dell', 58000, 6, 'Nashik', 'Available');
insert into products
values(205, 'IdeaPad Slim 3', 'Laptop', 'Lenovo', 45000, 12, 'Mumbai', 'Available');
insert into products
values(206, 'Galaxy Watch 6', 'Watch', 'Samsung', 22000, 4, 'Pune', 'Out of Stock');
insert into products
values(207,'Apple Watch SE','Watch', 'Apple', 30000, 10,' Mumbai','Available');
insert into products
values(208,'Redmi Pad', 'Tablet', 'Xiaomi', 24000, 18,'Pune','Available');
insert into products
values(209,'OnePlus Pad','Tablet','OnePlus', 35000, 5, 'Nashik',' Available');
insert into products
values(210,'Bluetooth Speaker','Accessories','JBL', 7000, 25,'Mumbai','Available');
#Part C - Basic SELECT & Operator Practice
select *from products;
select product_name from products;
select product_name ,price from products;
select product_name,category,brand ,price from products;
select city ='pune' from products;
select *from products where city ='pune';
select *from products where city ='mumbai';
select *from products where category ='mobile';
select *from products where category ='laptop';
select *from products where price > 30000;
select *from products where price < 30000;
select *from products where price = 35000;
select *from products where price >= 45000;
select *from products where price <= 30000;
select *from products where quantity < 10;
select *from products where quantity > 10;
#Part D - Logical Operators
select *from products where category ='mobile' and city ='pune';
select *from products where city ='mumbai' and status ='available';
select *from products where price >= 30000 and quantity >5;
select *from products where price >= 30000 and price <=60000;
select *from products where city ='pune' or city ='mumbai';
select *from products where category ='laptop' or category ='mobile';
select *from products where quantity < 10 or price > 50000;
select *from products where category = 'Mobile' and price > 30000;
select *from products where  brand = 'Samsung' or brand = 'Apple';
select *from products where city = 'Pune' and status = 'Available' and quantity > 10;
#Part E - Slightly Higher Operator Logic
select *from products where price between 25000 and 50000;
select *from products where quantity between 5 and 15;
select *from products where category in ('Mobile','laptop','Tablet');
select *from products where city in ('mumbai','pune');
select *from products where brand !='samsung';
select *from products where status !='out of stock';
select *from products where price != 30000;
select *from products where product_name like 'Galaxy%';
select *from products where product_name like '%pad%';
select *from products where category ='Mobile' and (price > 30000 or quantity > 15);
#Part F - UPDATE Operations
update products
set price= 34000
where product_id = 201;
update products
 set quantity =12
where product_id = 202;
update products
set status = 'available'
where product_id = 206;
update products
set price =price +2000
where category='mobile';
update products
set quantity = quantity +5
where city ='pune';
update products
set status ='out of stack'
where quantity > 5;
update products
set status = 'available'
where quantity > 5;
update products
set status ='out of stack'
where quantity < 5;
#Part G - DELETE Operations
delete from products where product_id=210;
delete from products where price < 8000;
delete from products where status = 'out of stock' and quanlity <5 ;
delete from products where category like 'table' and price >300000;
select *from products;