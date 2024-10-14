use new;
create table newone(name varchar(10), DOB DATETIME, age int);
insert into newone(name , DOB , age ) values ('lotus', '2002-07-01 11:15:11 AM ', 22), 
('Thirsha', '2002-11-28 12:15:11 PM ', 21), 
('Aruna', '1977-08-30 01:15:11 PM', 45);
select * from newone;
select *,FORMAT(DOB, 'dddd') from newone;
drop table newone;
insert into newone(name , DOB , age ) values ('sivapandi', '1971-12-02 11:15:11 AM ', 22); 


SELECT CAST(10.6496 AS INT) AS trunc1,
       CAST(-10.6496 AS INT) AS trunc2,
       CAST(10.6496 AS NUMERIC) AS round1,
       CAST(-10.6496 AS NUMERIC) AS round2,
	   CAST(10.6496 AS varchar) AS round11,
       CAST(-10.6496 AS varchar) AS round12;
	   

	   ---------------------------------------------------------------------------------------------------------------------------------------
	   use book_store;
	   select * from books;
	   select * from books where genre = 'fiction';
	   select * from books where genre = 'fiction' order by title;
	   select * from books where genre != 'fiction' order by title;
	   select * from books where len(title)>= 21 order by title;
	    select * from books where len(title)>= 21 AND year_released<=2016 and gender='_al_' or reviews in(2735,5010) order by title;








