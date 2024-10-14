/*


create database lotus;
use lotus;
create table pets(name varchar(20), age int, owner varchar(20));
show tables;
select * from pets;

insert into pets(name,age,owner)  values ("Tom",2,"lotus"),("jerry",4,"Nick"),("new",0,"new1");
insert into pets(name,age) values ("thirsha",2);
drop table pets;

-- multiple column adding- diff in udemy video see to it

alter table pets add column DOC varchar(30);
alter table pets add column Add_of_Hospital varchar(50), add column pet_breed varchar(10);

-- multiple drop- diff in udemy video see to it

alter table pets drop column Add_of_Hospital, drop column  pet_breed; 

*/
-- changes for new exercise




CREATE DATABASE penguinDB;
USE penguinDB;


CREATE TABLE penguin 
( 
  penguin_id INT auto_increment PRIMARY KEY, 
  name   VARCHAR(50), 
  breed  VARCHAR(50), 
  sex VARCHAR(50),
  age INT,
  color VARCHAR(50)
);


INSERT INTO penguin(name, breed, sex, age, color)
VALUES ('Mel', 'Little Penguin', 'female', 5, 'gray'),
       ('Cindy', 'Fairy Penguin', 'female', 7, 'blue and white'),
       ('Frosty', 'African Penguin', 'male', 5, 'gray'),
       ('Sassy', 'Northern Rockhopper', 'female', 6, 'black'),
       ('Fubby', 'Little Penguin', 'male', 8, 'golden brown'),
       ('bella', 'Macaroni', 'female', 5, 'white'),
       ('Jackson', 'Royal Penguin', 'male', 7, 'blue'),
       ('Sassy', 'Fairy Penguin', 'female', 6, 'black'),
       ('Dexter', 'African Penguin', 'male', 8, 'gray'),
       ('Archie', 'Northern Rockhopper', 'male', 6, 'golden brown'),
       ('Sophia', 'Little Penguin', 'male', 6, 'white'),
       ('Mimi', 'African Penguin', 'female', 6, 'black and white');



/* create database Tommy;
use tommy;
create table Tommy( name varchar(20), age int, health_condition varchar(20));
show tables;
*/

select*from penguin;
select penguin_id from penguin;
select name from penguin;
 select breed from penguin;
 select sex from penguin;
  select age from penguin;
 select color from penguin;
 
select age, breed, color from penguin;

select * from penguin where sex= 'female' ;
