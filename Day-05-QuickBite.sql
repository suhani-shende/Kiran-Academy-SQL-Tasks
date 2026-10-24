CREATE DATABASE quickbite;
USE quickbite;
CREATE TABLE restaurants (
restaurant_id INT PRIMARY KEY,
restaurant_name VARCHAR(100),
cuisine VARCHAR(50),
city VARCHAR(50),
rating DOUBLE,
avg_order_value DOUBLE,
orders_count INT,
delivery_fee DOUBLE,
est_delivery_time INT,
owner_name VARCHAR(100),
brand VARCHAR(100)
);
insert into restaurants(restaurant_id,restaurant_name,cuisine,city,rating,avg_order_value,Orders_count,delivery_fee,est_delivery_time,owner_name,brand)
values
(101, 'Spice Route', 'North Indian', 'Pune', 4.5, 420, 18500, 39, 32, 'Amit Sharma', 'Spice Route'),
(102, 'South Tiffin House', 'South Indian', 'Pune', 4.3, 260, 14300, 29, 25, 'Priya Nair', 'South Tiffin'),
(103, 'Mumbai Zaika', 'Maharashtrian', 'Mumbai', 4.1, 350, 22000, 49, 38, 'Rohit Patil', 'Zaika Foods'),
(104, 'Burger Garage', 'Fast Food', 'Pune', 4.4, 310, 27500, 29, 30, 'Neha Joshi', 'Burger Garage'),
(105, 'Pizza Planet', 'Italian', 'Mumbai', 4.6, 520, 31000, 19, 35, 'Vikas Mehta', 'Pizza Planet'),
(106, 'Biryani Junction', 'Biryani', 'Hyderabad', 4.7, 480, 42000, 29, 40, 'Arjun Reddy', 'Biryani Junction'),
(107, 'Chai & Snacks', 'Cafe', 'Pune', 4.2, 180, 19500, 19, 22, 'Sneha Kulkarni', 'Chai & Snacks'),
(108, 'Royal Thali', 'North Indian', 'Delhi', 4.0, 390, 16800, 39, 42, 'Manish Gupta', 'Royal Thali'),
(109, 'Tandoori Tales', 'Mughlai', 'Delhi', 4.5, 610, 12100, 59, 45, 'Karan Singh', 'Tandoori Tales'),
(110, 'Coastal Curry', 'Seafood', 'Goa', 4.6, 750, 9800, 69, 48, 'Riya Fernandes', 'Coastal Curry'),
(111, 'Green Bowl', 'Healthy', 'Bengaluru', 4.3, 330, 11600, 39, 28, 'Ananya Rao', 'Green Bowl'),
(112, 'Dosa Factory', 'South Indian', 'Bengaluru', 4.5, 240, 27800, 19, 24, 'Suresh Kumar', 'Dosa Factory'),
(113, 'Punjabi Dhaba', 'Punjabi', 'Chandigarh', 4.1, 370, 13200, 49, 40, 'Gurpreet Singh', 'Punjabi Dhaba'),
(114, 'The Wok House', 'Chinese', 'Pune', 4.4, 450, 18400, 39, 36, 'Rahul Jain', 'Wok House'),
(115, 'Sushi Street', 'Japanese', 'Mumbai', 4.8, 920, 7600, 89, 50, 'Meera Shah', 'Sushi Street'),
(116, 'Cafe Mocha', 'Cafe', 'Pune', 4.2, 290, 15400, 29, 27, 'Ishita Deshmukh', 'Cafe Mocha'),
(117, 'Street Tadka', 'Indian', 'Nagpur', 3.9, 220, 10200, 19, 35, 'Akash Verma', 'Street Tadka'),
(118, 'Hyderabadi House', 'Biryani', 'Hyderabad', 4.6, 430, 35500, 29, 37, 'Faizan Ali', 'Hyderabadi House'),
(119, 'Pasta Palace', 'Italian', 'Bengaluru', 4.5, 560, 10900, 49, 41, 'Nikhil Rao', 'Pasta Palace'),
(120, 'Sweet Cravings', 'Desserts', 'Pune', 4.7, 280, 20500, 19, 26, 'Pooja Patil', 'Sweet Cravings'),
(121, 'Kebab Kingdom', 'Mughlai', 'Delhi', 4.4, 530, 14100, 59, 44, 'Sameer Khan', 'Kebab Kingdom'),
(122, 'Taco Town', 'Mexican', 'Mumbai', 4.2, 460, 8700, 49, 39, 'Kabir Malhotra', 'Taco Town'),
(123, 'Farm Fresh', 'Healthy', 'Pune', 4.6, 390, 12500, 29, 30, 'Rohan Kulkarni', 'Farm Fresh'),
(124, 'Midnight Bites', 'Fast Food', 'Pune', 4.0, 250, 24800, 39, 34, 'Tanvi Shah', 'Midnight Bites'),
(125, 'Kolkata Kitchen', 'Bengali', 'Kolkata', 4.3, 340, 11400, 39, 43, 'Soham Sen', 'Kolkata Kitchen'),
(126, 'Kerala Cafe', 'South Indian', 'Kochi', 4.5, 310, 12700, 29, 31, 'Akhil Menon', 'Kerala Cafe'),
(127, 'Royal Rajputana', 'Rajasthani', 'Jaipur', 4.7, 470, 9200, 49, 46, 'Vivek Rathore', 'Rajputana Foods'),
(128, 'Namma Meals', 'South Indian', 'Bengaluru', 4.4, 275, 23900, 19, 27, 'Kavya Shetty', 'Namma Meals'),
(129, 'Lassi Lab', 'Beverages', 'Pune', 4.1, 160, 18200, 19, 21, 'Dev Malhotra', 'Lassi Lab'),
(130, 'Flame & Grill', 'BBQ', 'Mumbai', 4.8, 880, 8300, 79, 52, 'Aditya Kapoor', 'Flame & Grill');
select*from restaurants;
#3.l-1
select*from restaurants where rating > 4.5;
select*from restaurants where avg_order_value< 300;
select*from restaurants where city='Pune';
select*from restaurants where orders_count >20000;
select*from restaurants where rating between 4.2 and 4.7;
select*from restaurants where cuisine in('South Indian','Italian','Biryani');
select*from restaurants where owner_name like '%Patil%';
select*from restaurants where brand =restaurant_name;
select*from restaurants where delivery_fee <30;
#4.l-2
select*from restaurants order by orders_count desc limit 5;
select*from restaurants order by avg_order_value limit 5;
select*from restaurants order by rating desc ;
select DISTINCT cuisine from restaurants;
select restaurant_name as Restaurant_Name,rating as Customer_Rating from restaurants;
select restaurant_name, owner_name ,brand from restaurants;
select*from restaurants order by city,rating desc;
select*from restaurants where orders_count > 10000 order by orders_count desc limit 5;
select*from restaurants where  city ='pune' order by orders_count desc limit 3;
select*from restaurants order by delivery_fee desc limit 5;
#5 l-3
select*from restaurants where restaurant_name like 'S%';
select*from restaurants where restaurant_name like '%house';
select*from restaurants where restaurant_name like '%cafe%';
select*from restaurants where cuisine like 'Indian';
select*from restaurants where char_length(cuisine)=5;
select*from restaurants where owner_name like '%Raj%';
select*from restaurants where brand like '%foods%';
select*from restaurants where city like 'p%';
#6 l-4
select*from restaurants where avg_order_value > 400 and rating >4.5;
select*from restaurants where orders_count >20000 or rating >4.7;
select*from restaurants where city != 'pune';
select*from restaurants where est_delivery_time between 25 and 40;
select*from restaurants where avg_order_value between 300 and 600;
select*from restaurants where city in ('pune','mumbai');
select*from restaurants where cuisine ='Fast Food' and orders_count >20000;
select*from restaurants where rating > 4.5 and delivery_fee <40;
select*from restaurants where city ='Bengaluru' and orders_count >10000;
select*from restaurants where owner_name != 'Rahul Jain';
#7. l-5
select*from restaurants where rating >4.5 and orders_count < 10000;
select*from restaurants where avg_order_value < 300 and orders_count > 20000;
select*from restaurants where est_delivery_time <30 and rating > 4.3;
select*from restaurants where city='mumbai';
select*from restaurants where avg_order_value >(
select avg(avg_order_value) from restaurants );
select*from restaurants where city='pune' order by orders_count desc ;
select*from restaurants where cuisine ='South Indian';
select*from restaurants where avg_order_value > 500 and rating < 4.5;
#8. 
select*from restaurants where rating>4.4 and orders_count > 10000 and avg_order_value between 300 and 700 order by orders_count desc limit 5;
#10. 
select*from restaurants where city ='pune'order by rating desc,orders_count desc limit 5;