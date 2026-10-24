#1
CREATE DATABASE streamflix;
USE streamflix;
CREATE TABLE movies (
movie_id INT PRIMARY KEY,
title VARCHAR(100),
genre VARCHAR(50),
language VARCHAR(30),
rating DOUBLE,
price DOUBLE,
views INT,
release_year INT,
director VARCHAR(100),
production_company VARCHAR(100)
);
show tables;
desc movies;
#2.
insert into movies(movie_id,title,genre,language,rating, price, views,release_year,director,production_company)
values
(101, 'Avengers: Endgame', 'Action', 'English', 8.4, 199, 950000, 2019, 'Anthony Russo & Joe Russo', 'Marvel Studios'),
(102, '3 Idiots', 'Comedy', 'Hindi', 8.4, 149, 1200000, 2009, 'Rajkumar Hirani', 'Vinod Chopra Films'),
(103, 'Drishyam', 'Thriller', 'Hindi', 8.2, 129, 850000, 2015, 'Nishikant Kamat', 'Panorama Studios'),
(104, 'Interstellar', 'Sci-Fi', 'English', 8.7, 249, 1100000, 2014, 'Christopher Nolan', 'Warner Bros. Pictures'),
(105, 'KGF: Chapter 1', 'Action', 'Kannada', 8.4, 179, 1400000, 2018, 'Prashanth Neel', 'Hombale Films'),
(106, 'KGF: Chapter 2', 'Action', 'Kannada', 8.4, 199, 1800000, 2022, 'Prashanth Neel', 'Hombale Films'),
(107, 'RRR', 'Action', 'Telugu', 8.0, 199, 2100000, 2022, 'S. S. Rajamouli', 'DVV Entertainment'),
(108, 'Baahubali: The Beginning', 'Epic', 'Telugu', 8.0, 179, 1900000, 2015, 'S. S. Rajamouli', 'Arka Media Works'),
(109, 'Baahubali 2: The Conclusion', 'Epic', 'Telugu', 8.2, 199, 2500000, 2017, 'S. S. Rajamouli', 'Arka Media Works'),
(110, 'Pushpa: The Rise', 'Action', 'Telugu', 7.6, 179, 1700000, 2021, 'Sukumar', 'Mythri Movie Makers'),
(111, 'Pushpa 2: The Rule', 'Action', 'Telugu', 6.1, 199, 2300000, 2024, 'Sukumar', 'Mythri Movie Makers'),
(112, 'Jawan', 'Action', 'Hindi', 6.9, 199, 2200000, 2023, 'Atlee', 'Red Chillies Entertainment'),
(113, 'Pathaan', 'Action', 'Hindi', 5.8, 179, 1600000, 2023, 'Siddharth Anand', 'Yash Raj Films'),
(114, 'Dangal', 'Sports', 'Hindi', 8.3, 159, 1300000, 2016, 'Nitesh Tiwari', 'Aamir Khan Productions'),
(115, 'PK', 'Comedy', 'Hindi', 8.1, 149, 1250000, 2014, 'Rajkumar Hirani', 'Vinod Chopra Films'),
(116, 'Munna Bhai M.B.B.S.', 'Comedy', 'Hindi', 8.1, 99, 900000, 2003, 'Rajkumar Hirani', 'Vinod Chopra Films'),
(117, 'Chhichhore', 'Comedy', 'Hindi', 8.3, 129, 1050000, 2019, 'Nitesh Tiwari', 'Fox Star Studios'),
(118, 'Taare Zameen Par', 'Drama', 'Hindi', 8.3, 119, 780000, 2007, 'Aamir Khan', 'Aamir Khan Productions'),
(119, 'Zindagi Na Milegi Dobara', 'Drama', 'Hindi', 8.2, 139, 980000, 2011, 'Zoya Akhtar', 'Excel Entertainment'),
(120, 'War', 'Action', 'Hindi', 6.5, 189, 1500000, 2019, 'Siddharth Anand', 'Yash Raj Films'),
(121, 'Dhoom', 'Action', 'Hindi', 6.6, 109, 720000, 2004, 'Sanjay Gadhvi', 'Yash Raj Films'),
(122, 'Dhoom 2', 'Action', 'Hindi', 6.5, 129, 860000, 2006, 'Sanjay Gadhvi', 'Yash Raj Films'),
(123, 'Dhoom 3', 'Action', 'Hindi', 5.4, 149, 920000, 2013, 'Vijay Krishna Acharya', 'Yash Raj Films'),
(124, 'Bahubali Returns', 'Fantasy', 'Hindi', 7.1, 139, 410000, 2020, 'Demo Director', 'StreamFlix Originals'),
(125, 'Robot', 'Sci-Fi', 'Tamil', 7.1, 129, 680000, 2010, 'S. Shankar', 'Sun Pictures'),
(126, 'Enthiran 2.0', 'Sci-Fi', 'Tamil', 6.2, 169, 760000, 2018, 'S. Shankar', 'Lyca Productions'),
(127, 'Vikram', 'Action', 'Tamil', 8.3, 189, 1450000, 2022, 'Lokesh Kanagaraj', 'Raaj Kamal Films International'),
(128, 'Master', 'Action', 'Tamil', 7.3, 159, 1120000, 2021, 'Lokesh Kanagaraj', 'XB Film Creators'),
(129, 'Kantara', 'Drama', 'Kannada', 8.2, 149, 1350000, 2022, 'Rishab Shetty', 'Hombale Films'),
(130, 'Charlie 777', 'Adventure', 'Kannada', 8.0, 139, 740000, 2022, 'Kiranraj K', 'Paramvah Studios');
select*from movies;
# 3. l1
select*from movies where rating > 8;
select*from movies where price < 150;
select*from movies where language='Hindi';
select*from movies where views > 1000000;
select*from movies where rating between 8 and 8.5;
select*from movies where genre in('Action','Comedy','Thriller');
select*from movies where director='S. S. Rajamouli';
select*from movies where production_company='Hombale Films';
select*from movies where production_company='Arka Media Works';
# 4. l2
select*from movies order by views desc limit 5;
select*from movies order by views asc limit 5;
select*from movies order by views limit 5;
select*from movies order by price limit 5;
select*from movies order by rating desc ;
select DISTINCT language from movies;
select title as Movie ,rating as IMDb_Rating from movies;
select title, director,production_company from movies;
select*from movies order by production_company, rating desc;
select * from movies where release_year > 2015 order by rating desc limit 5;
select * from movies where language='Telugu' order by views desc limit 3;
select * from movies order by price desc limit 5;
#5.l3
select*from movies where title like'A%';
select*from movies where title like'%a';
select*from movies where title like'%Baahubal%';
select*from movies where title like'%Dhoom%';
select*from movies where char_length(title)=5;
select*from movies where director like'%Raj%';
select*from movies where production_company like'%Films%';
select*from movies where language like'T%';
#6.l4
select*from movies where price >150 AND rating >8;
select*from movies where views > 1000000 OR rating >8;
select*from movies where genre != 'Horror';
select*from movies where release_year between 2015 and 2020;
select*from movies where price between 100 and 200;
select*from movies where language in ('Hindi','Telugu');
select*from movies where views > 1000000 and genre ='Action';
select*from movies where director='S. S. Rajamouli' and rating >8;
select*from movies where production_company ='Hombale Films' and release_year > 2019;
select*from movies where director != 'S. S. Rajamoul';
#7.l5
select*from movies where rating > 8 and views < 500000; #this query not dispaly any rows but i think it's not totally wrong
select*from movies where price < 150 and views >1000000;
select*from movies where language ='English' and release_year >2015 and rating > 8.5;#this query not dispaly any rows but i think it's not totally wrong
select*from movies where release_year >2020 order by views desc limit 3;
select*from movies where price > (select avg(price) from movies);
select*from movies where director='S.S.Rajamouli' order by  release_year;
select title,release_year as year, rating ,views,production_company from movies 
where production_company ='Hombale Films';
select*from movies where title like'%Baahubal%'or title like'%KGF%';
#8.
select*from movies where rating >8 and views > 500000 and price 
between 100 and 250 order by views desc limit 5;
 /* 9 if am i rating myself between 7 and 9 around.*/
