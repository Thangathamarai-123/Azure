CREATE DATABASE data_relationships;
USE data_relationships;

CREATE TABLE customers(
customer_id INT  IDENTITY(1,1) PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
email VARCHAR(100)
);


CREATE TABLE orders(
order_id INT IDENTITY(200,3) PRIMARY KEY,
order_Date DATETIME,
price DECIMAL(8,2),
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


INSERT INTO customers(first_name, last_name, email)
VALUES('tony', 'anderson', 'tonyandy@yahoo.com');

INSERT INTO customers(first_name, last_name, email)
VALUES('joanne', 'graham', 'jamiegram01@gmail.com');

INSERT INTO customers(first_name, last_name, email)
VALUES('mark', 'thomas','petmark@live.com');

INSERT INTO customers(first_name, last_name, email)
VALUES('julian', 'peterson', 'julianpeterson@gmail.com');

INSERT INTO customers(first_name, last_name, email)
VALUES('bob', 'harris','bobh@gmail.com');



INSERT INTO orders(order_date, price, customer_id)
VALUES('2020-05-20', 599, 1);

INSERT INTO orders(order_date, price, customer_id)
VALUES('2020-05-20', 55, 3);

INSERT INTO orders(order_date, price, customer_id)
VALUES('2020-05-22', 39.99, 1);

INSERT INTO orders(order_date, price, customer_id)
VALUES('2020-05-23', 75, 4);

INSERT INTO orders(order_date, price, customer_id)
VALUES('2020-05-23', 450, 3);


select* from customers;
select* from orders;

--select *from customers inner join orders on customers.customer_id=orders.customer_id;
select *from customers as c join orders as o on c.customer_id=o.customer_id;

--select *from orders as o inner join customers as c on o.customer_id=c.customer_id;

select *from orders as o inner join customers as c on o.customer_id=c.customer_id;

select c.customer_id, o.order_id, c.first_name, c.last_name, c.email, FORMAT(order_Date,'dd/MMMM/yy')as 
'ordered date', o.price from orders as o inner join customers as c on o.customer_id=c.customer_id;
             --new rec
insert into customers (first_name, last_name)values ('Lotus','kishan');
insert into orders (customer_id, order_Date) values (6, '2020-05-24');
insert into orders (customer_id, order_Date,price) values (6, GETDATE(),2003);

--inner join
select c.customer_id, o.order_id, c.first_name, c.last_name, c.email, FORMAT(order_Date,'dd/MMMM/yy')as 
'ordered date', o.price from orders as o inner join customers as c on o.customer_id=c.customer_id;
--left join           
select c.customer_id, o.order_id, c.first_name, c.last_name, c.email, FORMAT(order_Date,'dd/MMMM/yy')as 
'ordered date', o.price from orders as o left join customers as c on o.customer_id=c.customer_id;
 --right join
 select c.customer_id, o.order_id, c.first_name, c.last_name, c.email, FORMAT(order_Date,'dd/MMMM/yy')as 
'ordered date', o.price from orders as o right join customers as c on o.customer_id=c.customer_id;
   --full join
select c.customer_id, o.order_id, c.first_name, c.last_name, c.email, FORMAT(order_Date,'dd/ MMMM /yy')as 
'ordered date', o.price from orders as o full join customers as c on o.customer_id=c.customer_id;   



