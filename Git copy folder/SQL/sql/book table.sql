CREATE DATABASE book_store;
USE book_store; 

 
CREATE TABLE books(
book_id INT IDENTITY(1,1) PRIMARY KEY,
author_firstname VARCHAR(100), 
author_lastname VARCHAR(100), 
title VARCHAR(100), 
year_released INT,
genre VARCHAR(100), 
pages INT, 
available_copies INT,
reviews INT,
gender VARCHAR(100)
);



INSERT INTO books (author_firstname, author_lastname, title, year_released, genre, pages, available_copies, reviews, gender)

VALUES ('Bryan', 'Stevenson', 'Just Mercy', 2014, 'Memoir', 368, 80, 4866, 'Male'),

('Elizabeth', 'Gilbert', 'City of Girls', 2020, 'Fiction', 496, 164, 2380, 'Female'),

('Grant', 'Cardone', 'Be Obsessed or Be Average', 2016, 'Self Help', 240, 150, 2735, 'Male'),

('John', 'Maxwell', 'Intentional Living', 2014, 'Self Help', 288, 320, 876 , 'Male'),

('Chimamanda', 'Adichie', 'Purple Hibiscus', 2013, 'Fiction', 320, 95, 5644,'Female'),

('Carlos', 'Zafon',  'The Shadow of The Wind', 2005, 'Thriller', 512, 55, 2790 , 'Male'),

('Patricia', 'Cornwell', 'Blow Fly', 2005, 'Fiction', 498, 145, 761,'Female'),

('Chinua', 'Achebe', 'Things Fall Apart', 2009, 'Fiction', 224, 345, 2826 , 'Male'),

('Trevor', 'Noah', 'Born A Crime', 2016, 'Memoir', 304, 94, 9140 , 'Male'),

('Viet', 'Nguyen', 'The Sympathizer', 2015, 'Thriller', 384, 75, 5181 , 'Male'),

('Carol', 'Shaben', 'Into the Abyss', 2012, 'Memoir', 336, 135, 2125 , 'Female'),

('Sue', 'Watson', 'Our Little Lie', 2018, 'Thriller', 316, 180, 585, 'Female'),

('Sue', 'Watson', 'The Empty Nest', 2019, 'Thriller', 288, 90, 2450, 'Female'),

('Jose', 'Saramago', 'The Cave', 1997, 'Fiction', 320, 180, 4640 , 'Male'),

('George', 'Martin', 'Game of Thrones', 1997, 'Novel', 864, 235, 12450 , 'Male'),

('Michael', 'Crichton', 'Jurassic Park', 1990, 'Novel', 448, 210,8455 , 'Male'),

('Katharine', 'Johnson', 'The Suspects', 2019, 'Novel', 253, 50, 550, 'Female'),

('Grant', 'Cardone', 'The 10X Rule', 2011, 'Self Help', 256, 300, 3420 , 'Male'),

('Michael', 'Crichton', 'Timeline', 1997, 'Novel', 512, 220, 2225 , 'Male');

select * from books order by author_firstname;



INSERT INTO books (author_firstname, author_lastname, title, year_released, genre, pages, available_copies, reviews, gender)
 VALUES ('Adam', 'Johnson', 'The Orphan''s Son', 2012, 'Thriller', 480, 245, 3125, 'Male')



INSERT INTO books (author_firstname, author_lastname, title, year_released, genre, pages, available_copies, reviews, gender)
VALUES('Jeffrey', 'Warren', 'Meditation for Fidgety Skeptics A 10% Happier', 2018, 'Self Help', 315, 430, 5010, 'Male');




--INSERT MORE RECORDS INTO BOOKS TABLE


INSERT INTO books (author_firstname, author_lastname, title, year_released, genre, pages, available_copies, reviews, gender)
VALUES ('Steve', 'Burrows', 'A Dance of Cranes', 2019, 'Thriller', 530, 97, 4796, 'Male');

INSERT INTO books (author_firstname, author_lastname, title, year_released, genre, pages, available_copies, reviews, gender)
VALUES ('Martha', 'Brooks', 'Bone Dance', 1998, 'Novel', 179, 60, 560, 'Female');

INSERT INTO books (author_firstname, author_lastname, title, year_released, genre, pages, available_copies, reviews, gender)
VALUES ('Nora', 'Roberts', 'Dance of the gods', 2018, 'Novel', 250, 125, 1550, 'Female');

select * from books order by author_firstname;

select distinct title,author_firstname from books order by author_firstname; 
--repeated row so cheched with distint excluding "id" (inserted Martha data twice in the table)
select distinct author_firstname, author_lastname, title, year_released, genre, pages, available_copies, reviews, gender from books order by author_firstname; 

select * from books;
-- selets the first row (to see through the columns:
select top 1* from books ;

select top 26 *,UPPER(author_firstname) as 'Caps of author''s first name' from books
order by book_id; --have only 25 rows but still hives the 25 sets without null


--excluding the first 5 records using offset:
select * from books order by book_id;

select * from books order by book_id OFFSET 5 rows;

--fetch:
select * from books order by book_id OFFSET 5 rows
fetch next 8 rows only;


--wildcards
select * from books where title='purple hibiscus';

select * from books where title like '%purple%';
select * from books where title like '%purple';
select * from books where title like 'purple%';
select * from books where title like '%__rple%';
select * from books where title like '%___rple%';

select * from books where title like '% ______us';

select * from books where title like '% __bi%';
select available_copies from books where available_copies like '__';
select available_copies from books where available_copies like '___';
select available_copies from books where available_copies like '____';
select reviews from books where reviews like '____' order by LEN(reviews), reviews desc;
select reviews from books where reviews like '____%' order by LEN(reviews);
select reviews from books where reviews like '%____' order by LEN(reviews);
select reviews from books where reviews like '%____%' order by LEN(reviews);

select author_firstname from books where author_firstname like '%s';
--same
select distinct author_firstname, author_lastname from books where author_firstname like '%_s';

select * from books;

select available_copies from books;



select count(*)  from books;
select SUM(book_id), SUM(available_copies) from books;

select count(Distinct book_id) as 'column-A',COUNT( Distinct year_released )as 'column-A' from books;
select *  from books;

--select count(gender) from books group by gender  order by gender desc;
select count(gender) as count,gender from books group by rollup(gender,genre)  order by count(gender) desc ;
select count(gender) as count,gender from books group by gender  order by count(gender) desc ;


select gender from books;
select genre from books;
select count(genre) as count,genre from books group by genre;

select AVG(year_released) as mean from books where author_firstname like '__hn%';

select SUM(pages) from books where genre ='thriller' or genre='memoir' or  genre='fiction';


select SUM(pages) from books where genre in('thriller', 'memoir',  'fiction');
