-- Create a Database
DROP DATABASE IF EXISTS shade_store;
CREATE DATABASE shade_store;

-- specify the database to use
use shade_store;

-- create customer table
CREATE TABLE customers (
	customer_id int auto_increment primary key,
    name varchar(50) not null,
    gender enum('M','F'),
    email varchar(150) unique not null,
    address text
);

-- create orders table
CREATE TABLE orders (
	order_id int auto_increment primary key,
    customer_id int not null,
    order_date date not null
);

-- create order_details table
CREATE TABLE order_details (
	order_detail_id int auto_increment primary key,
    order_id int not null,
    product_id int not null,
    quantity int not null
);

-- create products table
CREATE TABLE products (
	product_id int auto_increment primary key,
    name varchar(50) not null,
    description text,
    price float not null,
    stock_quantity int
);

-- Alter tables to add foreign key
ALTER TABLE orders 
ADD FOREIGN KEY (customer_id) REFERENCES customers (customer_id);

ALTER TABLE order_details
ADD FOREIGN KEY (order_id) REFERENCES orders (order_id);

ALTER TABLE order_details
ADD FOREIGN KEY (product_id) REFERENCES products (product_id);


-- ==============================
-- DML Commands: Data Manipulation Language
-- ===============================

-- insert sample data into customer table
INSERT INTO customers(name, gender, email, address)
values ('Catie Gidney', 'M', 'cgidney0@google.ru', 'Suite 12'),
('Heindrick Village', 'M', 'hvillage1@sohu.com', 'Apt 1772'),
('Kalindi Desaur', 'M', 'kdesaur2@java.com', 'PO Box 81303'),
('Quincey Atterley', 'M', 'qatterley3@ibm.com', 'Room 1810'),
('Camel Dayce', 'M', 'cdayce4@artisteer.com', 'Room 1629'),
('Darell Ellerington', 'F', 'dellerington5@hud.gov', 'Suite 95'),
('Viviyan Barnhart', 'F', 'vbarnhart6@tmall.com', 'Apt 774'),
('Arabele Blackford', 'F', 'ablackford7@bravesites.com', null),
('Vivianne Wickes', 'M', 'vwickes8@last.fm', 'Suite 95'),
('Colman Flade', 'F', 'cflade9@dagondesign.com', '20th Floor'),
('Dorris Gallymore', 'M', 'dgallymorea@google.es', null),
('Keslie Dorro', 'M', 'kdorrob@artisteer.com', 'Apt 1944'),
('Rea McGlynn', 'M', 'rmcglynnc@wikispaces.com', 'Apt 1937'),
('Porty Farrin', 'F', 'pfarrind@mozilla.org', 'PO Box 34635'),
('Carola Hyrons', 'F', 'chyronse@samsung.com', 'Apt 1871'),
('Briny Delahunty', 'F', 'bdelahuntyf@arstechnica.com', 'Suite 22'),
('Luci Sowrey', 'F', 'lsowreyg@netscape.com', '16th Floor'),
('Ursola Oxtarby', null, 'uoxtarbyh@seattletimes.com', 'Apt 1259'),
('Dalia Parzis', 'F', 'dparzisi@123-reg.co.uk', '11th Floor'),
('Stacie Itzchaky', 'F', 'sitzchakyj@usa.gov', 'Suite 95'),
('Row Colebrook', 'M', 'rcolebrookk@hc360.com', 'Suite 55'),
('Ange Grigaut', null, 'agrigautl@chronoengine.com', null),
('Christophorus Nuccitelli', 'M', 'cnuccitellim@smh.com.au', 'PO Box 33278'),
('Annnora Glasebrook', 'F', 'aglasebrookn@usnews.com', 'Room 860'),
('Sally Gommowe', null, 'sgommoweo@mozilla.org', 'Suite 14'),
('Colet Durtnall', 'F', 'cdurtnallp@edublogs.org', null),
('Erhard Caldow', 'M', 'ecaldowq@mediafire.com', 'Apt 1193'),
('Tailor Philippet', 'M', 'tphilippetr@clickbank.net', 'Apt 1010'),
('Rosalyn Kearn', 'F', 'rkearns@ucsd.edu', 'Apt 1645'),
('Fanchon Freeberne', 'M', 'ffreebernet@paginegialle.it', 'PO Box 26260');

-- insert sample data into product table
INSERT INTO products(name, description, price, stock_quantity)
VALUES ('Stim', 'Closed biopsy trachea', '7752.07', 7),
('Fixflex', 'Ob tamponade uterus/vag', '8868.60', 6),
('Redhold', null, '6022.08', 3),
('Bytecard', 'Soft tissue dx proc NEC', '1832.18', 4),
('Lotstring', 'Cil body diminution NOS', '9372.38', 6),
('Sub-Ex', 'Cut & prep pedicle graft', '1489.97', 7),
('Span', 'Removal scrotal/penis FB', '729.68', 2),
('Tresom', 'Oth salpingo-oophoroplas', '2073.60', 1),
('Job', 'Rad neck dissection NOS', '9592.57', 6),
('Bitwolf', 'Remov gastrostomy tube', '7975.43', 2),
('Cardify', 'Excise inguinal node', '9620.79', 5),
('Trippledex', 'Local gastr destruct NEC', '5282.66', 3);

-- insert sample data into orders table
INSERT INTO orders(customer_id, order_date)
VALUES (11, '2024-02-29'),
(11, '2024-02-28'),
(12, '2024-02-03'),
(26, '2024-02-02'),
(16, '2024-02-13'),
(22, '2024-02-06'),
(17, '2024-02-21'),
(18, '2024-02-01'),
(7, '2024-02-29'),
(17, '2024-02-08'),
(29, '2024-02-22'),
(25, '2024-02-21'),
(23, '2024-02-27'),
(10, '2024-02-25'),
(6, '2024-02-02'),
(7, '2024-02-25'),
(25, '2024-02-09'),
(5, '2024-02-25'),
(16, '2024-02-28'),
(26, '2024-02-10'),
(27, '2024-02-13'),
(25, '2024-02-21'),
(2, '2024-02-19'),
(12, '2024-02-10'),
(25, '2024-02-16'),
(17, '2024-03-04'),
(14, '2024-02-14'),
(15, '2024-03-03'),
(4, '2024-02-06'),
(21, '2024-02-26'),
(12, '2024-02-16'),
(3, '2024-02-18'),
(2, '2024-02-02'),
(18, '2024-02-24'),
(9, '2024-02-26'),
(10, '2024-02-09'),
(27, '2024-02-01'),
(11, '2024-02-29'),
(26, '2024-02-08'),
(21, '2024-02-14'),
(26, '2024-02-13'),
(8, '2024-03-04'),
(21, '2024-02-02'),
(9, '2024-02-18'),
(11, '2024-02-22'),
(26, '2024-02-26'),
(29, '2024-02-02'),
(21, '2024-02-29'),
(3, '2024-02-27'),
(1, '2024-02-23'),
(29, '2024-02-20'),
(20, '2024-02-19'),
(4, '2024-02-23'),
(25, '2024-03-01'),
(7, '2024-02-14'),
(10, '2024-02-13'),
(13, '2024-02-25'),
(29, '2024-03-02'),
(24, '2024-02-16'),
(11, '2024-02-20'),
(1, '2024-02-22'),
(17, '2024-02-28'),
(13, '2024-03-02'),
(24, '2024-02-25'),
(27, '2024-02-20'),
(19, '2024-03-03'),
(3, '2024-02-16'),
(19, '2024-02-12'),
(5, '2024-02-14'),
(26, '2024-02-06'),
(2, '2024-02-19'),
(28, '2024-02-05'),
(15, '2024-02-10'),
(15, '2024-03-02'),
(10, '2024-02-14'),
(20, '2024-02-07'),
(15, '2024-02-02'),
(24, '2024-02-04'),
(2, '2024-03-04'),
(5, '2024-02-20'),
(3, '2024-03-02'),
(3, '2024-02-08'),
(30, '2024-02-22'),
(29, '2024-02-21'),
(12, '2024-02-16'),
(6, '2024-02-20'),
(25, '2024-02-07'),
(8, '2024-02-17'),
(21, '2024-02-25'),
(1, '2024-02-20'),
(7, '2024-02-11'),
(23, '2024-02-14'),
(27, '2024-02-18'),
(12, '2024-02-01'),
(22, '2024-02-14'),
(5, '2024-02-23'),
(8, '2024-02-05'),
(24, '2024-02-06'),
(15, '2024-02-09'),
(23, '2024-03-02');



-- insert sample data into order_details table
INSERT INTO order_details(order_id, product_id, quantity)
values (42, 8, 5),
(39, 4, 5),
(80, 12, 4),
(5, 7, 5),
(6, 6, 4),
(55, 7, 3),
(13, 3, 5),
(74, 12, 1),
(48, 11, 2),
(46, 11, 5),
(77, 7, 4),
(63, 12, 1),
(35, 4, 4),
(37, 6, 1),
(56, 3, 3),
(34, 10, 1),
(70, 1, 2),
(66, 1, 3),
(20, 4, 5),
(94, 5, 3),
(81, 6, 1),
(75, 4, 2),
(25, 10, 3),
(67, 2, 2),
(75, 11, 2),
(69, 6, 1),
(5, 11, 1),
(23, 4, 2),
(8, 7, 4),
(23, 4, 3),
(55, 8, 4),
(28, 1, 3),
(16, 6, 2),
(24, 12, 5),
(42, 8, 2),
(15, 11, 5),
(3, 1, 5),
(69, 7, 1),
(2, 7, 2),
(88, 12, 4),
(70, 4, 4),
(87, 6, 3),
(26, 7, 3),
(46, 5, 5),
(13, 9, 1),
(56, 6, 4),
(67, 12, 1),
(55, 8, 2),
(45, 8, 1),
(88, 5, 2),
(15, 2, 4),
(69, 8, 5),
(24, 2, 5),
(11, 8, 5),
(71, 4, 1),
(31, 9, 5),
(11, 11, 2),
(15, 10, 4),
(91, 11, 5),
(39, 8, 5),
(73, 2, 5),
(35, 8, 1),
(72, 3, 5),
(11, 10, 5),
(61, 2, 1),
(51, 1, 2),
(99, 11, 5),
(16, 8, 5),
(70, 11, 1),
(49, 8, 3),
(18, 7, 3),
(10, 7, 3),
(46, 1, 3),
(86, 11, 2),
(78, 8, 5),
(61, 9, 5),
(65, 2, 1),
(38, 4, 2),
(95, 6, 2),
(93, 9, 2),
(13, 9, 1),
(65, 12, 2),
(50, 9, 4),
(22, 5, 4),
(93, 2, 5),
(73, 3, 2),
(37, 3, 5),
(92, 8, 5),
(30, 9, 2),
(23, 11, 5),
(35, 8, 1),
(29, 7, 4),
(85, 9, 2),
(11, 2, 2),
(74, 8, 5),
(10, 1, 3),
(34, 3, 5),
(85, 6, 4),
(68, 7, 2),
(31, 9, 5);



-- ==============================
-- DQLL Commands: Data Query Language
-- ===============================
-- query each tables
-- select * from products;
-- select * from orders;
-- select * from customers;
-- select * from order_details;

-- UPDATE
UPDATE customers
SET address = 'Ikeja'
WHERE customer_id = 8;

-- DELETE RECORD
-- DELETE FROM customers
-- WHERE customer_id = 9;

ALTER TABLE orders
ADD COLUMN amount double;

-- Calculate amount of every order
select *
from orders;
 

-- DISTINCT :using distinct command
-- select distinct name from customers;


-- -- WHERE: filtering a database
-- with limit and offset 
select customer_id, name, email, gender
from customers
limit 10
offset 2;

-- Sorting
select *
from customers
order by name;

-- Query products with price
select *
from products
order by stock_quantity desc, price desc;

-- Filter
-- -- WHERE: filtering a database
select customer_id, name, email, gender
from customers
where customer_id = 12;

-- filtering with conditional statements
select *
from products
where (stock_quantity > 5) and (price between 1000 and 5000); 

-- filtering based on pattern
select *
from customers
where name like 'Vi%'; -- starting with Ab but has 0 or more characters after

select *
from customers
where email not like '%@mozilla.org';

-- filter products with the following id 1, 5, 7, 10
select *
from products
where product_id in (1, 5, 7, 10);

-- filtering based on null values
select *
from customers
where gender is null;

-- Using alias
select name as nm
from customers;

-- STRING FUNCTIONS
-- Concatenation and replace
select concat(name, ' is a ', replace(gender, 'M', 'Male')) as info
from customers;

-- Trimming whitespace
select trim(name) as name
from customers;

-- split
-- select first_name, last_name from string_split(name, ' ')
-- from customers;

-- INTEGER FUNCTIONS
select min(price) as 'min_value',
	   max(price) as 'max_value',
       std(price) as 'standard_dev',
       variance(price) as 'variance'
from products;

-- DATE FUNCTIONS
select *, 
	   year(order_date) as year,
       month(order_date) as month,
       monthname(order_date) as month_name,
       day(order_date) as day,
       dayname(order_date) as day_of_the_week
from orders;

select count(customer_id) as customer_count
from customers
where gender = 'M';

-- Using group by
select count(customer_id) as customer_count
from customers
group by gender;

select customer_id, count(order_id) as 'Orders made by each customer'
from orders
group by customer_id;


-- USING JOINS
-- Inner, Outer(Left, Right), Full

select *
from customers
inner join orders on customers.customer_id = orders.customer_id;

-- Using inner join properly
select c.customer_id, name, count(o.order_id) as 'Orders made by each customer'
from customers as c
inner join orders as o on c.customer_id = o.customer_id
group by customer_id;

insert into customers(name, gender, email, address)
values('Joseph Ben', 'M', 'j.ben@codar.com', NULL),
('Buhari Samas', 'M', 'buhari@ngn.com', 'Aso Rock'),
('Clara Newton', 'F', 'claran@codar.com', NULL);

select c.customer_id, name, count(o.order_id) as 'Orders made by each customer'
from customers as c
left join orders as o on c.customer_id = o.customer_id
group by customer_id;

select c.customer_id, name, count(o.order_id) as 'Orders made by each customer'
from customers as c
right join orders as o on c.customer_id = o.customer_id
group by customer_id;

select c.customer_id, name, email, count(o.order_id) as 'Orders made'
from customers as c
inner join orders as o on c.customer_id = o.customer_id
group by c.customer_id
order by count(o.order_id) desc
limit 5;

select 
	c.name as 'Customer name', 
    p.name as 'Product name', 
    p.price, od.quantity, 
    round(p.price * od.quantity, 2) as 'Amount',
    case
		when round(p.price * od.quantity, 2) > 20000 then 'Exclusive'
        when round(p.price * od.quantity, 2) between 10000 and 20000 then 'Premium'
	else
		'Regular'
	end as 'Amount status'
    -- case
-- 		when amount_status = 'Exclusive' then round(p.price * od.quantity, 2) * 0.5
-- 	else 0.0
--     end as 'Discount'
from customers as c
inner join orders as o on c.customer_id = o.customer_id
inner join order_details as od on o.order_id = od.order_id
inner join products as p on od.product_id = p.product_id
group by c.customer_id;

set sql_safe_updates = 0;

update orders
set amount=(select sum(p.price * od.quantity)
from products as p
inner join order_details as od on p.product_id=od.product_id
WHERE od.order_id=orders.order_id
group by od.order_id);

set sql_safe_updates = 1;

select * from orders;

-- SUBQUERIES
select o.order_id, o.order_date, o.amount
from customers as c
inner join orders as o on c.customer_id=o.order_id
where c.name='Keslie Dorro';

-- Using subqueries in WHERE clause
select order_id, order_date, amount
from orders
where customer_id = (select customer_id from customers where name = 'Keslie Dorro');

-- Using subqueries in select statement
select *,
		(select avg(amount) from orders) as avg_total_amount
from orders;

select order_id, customer_id, order_date, amount
from orders
where customer_id in (
	select customer_id
    from customers
    where order_date >= curdate() - interval 22 day
    order by order_date desc
);

-- Using subqueries in FROM
select customer_id, name, gender
from (select * from customers where gender='M') as male_customers;

select customer_id, name, gender
from (select * from customers where gender='F') as male_customers;

-- Correlated subquery- Queries that depend on each other
select customer_id, name,
	(select sum(amount) from orders
    where customers.customer_id=orders.customer_id) as 'Total amount spent'
from customers;

-- CTE- Common Table Expression
with male_customers as (
	select * from customers where gender='M'
)
select customer_id, name, gender
from male_customers;

with order_cte as (
	select order_id, customer_id, order_date, amount
    from orders
    where order_date between "2024-03-01" and current_date()
    order by order_date desc
),
customer_cte as (
	select customer_id, name
    from customers
)
select cc.name, oc.*
from order_cte as oc
inner join customer_cte as cc on oc.customer_id=cc.customer_id
order by oc.order_date desc;

-- VIEW
create view orders_in_prev_days as
select order_id, customer_id, order_date, amount
from orders
where customer_id in (
	select customer_id
    from customers
    where order_date >= curdate() - interval 22 day
    order by order_date desc
);

-- CASE STATEMENTS
-- CASE, WHEN, THEN, ELSE

-- select name, description, price
-- from products
-- where name = "Bytecard" or stock_quantity > 3;

-- select *
-- from products
-- where price <> 500;

-- select *
-- from products
-- where price between 500 and 1000;

-- select *
-- from products
-- where price not between 500 and 1000;

-- select *
-- from products
-- where name like "S%";

-- select *
-- from products
-- where name like "%hold%";


-- -- query customers with id 1, 2 and 5
-- select *
-- from customers
-- where customer_id = 1 or customer_id = 2 or customer_id = 3;


-- select *
-- from customers
-- where customer_id in (1,2,5);

-- select *
-- from customers
-- where customer_id not in (1,2,5);

-- select *
-- from products
-- where description is null;



-- -- get the number of products
-- select count(*) as "no_of_products"
-- from products;

-- -- get the min, max, sum, std, var
-- select 
--   min(price) as min_price,
--   max(price) as max_price,
--   round(sum(price), 2) as sum_price,
--   stddev(price) as std_price,
--   variance(price) as var_price,
--   avg(price) as avg_price
-- from products;


-- -- ordering
-- select *
-- from products
-- order by stock_quantity asc, name desc;

-- -- find the number of male and female in d customer data
-- select gender, count(*) as count
-- from customers
-- group by gender;


-- -- find the no of orders made by each customer
-- select c.name, count(o.order_id) as no_of_orders
-- from orders as o
-- inner join customers as c on o.customer_id = c.customer_id
-- group by c.customer_id
-- having count(o.order_id) > 1;

-- -- left join: order and order_details
-- select *
-- from orders as o
-- left join order_details as od on o.order_id = od.order_id;

-- -- cross join
-- select *
-- from orders as o
-- cross join customers as c on o.customer_id = c.customer_id;




-- -- Tasks on Fundamental SQL Queries:
-- -- 1. Retrieve the names and email addresses of female customers.

-- -- 2. List all products sorted by their prices in descending order.

-- -- 3. Count the number of orders placed by each gender.
-- -- 4. Retrieve the order details, including product information, for a specific order (e.g., order_id = 37).
-- select * 
-- from order_details as od
-- inner join products as p on od.product_id = p.product_id
-- where order_id = 37;


-- -- 5. Classify customers into 'Premium' if they have placed more than 5 orders, 'Regular' if 3 to 5 orders, and 'New' if fewer than 3 orders.
-- select 
--     c.customer_id, 
--     name, 
--     count(order_id) as no_of_orders,
--     case
--         when count(order_id) > 5 then "PREMIUM"
--         when count(order_id) between 3 and 5 then "REGULAR"
--         else
--             "NEW"
-- 	end as "status"
-- from customers as c
-- inner join orders as o on c.customer_id = o.customer_id
-- group by c.customer_id
-- order by status;

-- -- 6. Update the orders table with the amount spent on every orders.

-- -- step 1:add a new column to order
-- alter table orders
-- add column total_amount double;

-- -- step 2:calculate total amount

-- select order_id, sum(p.price * od.quantity) as total_amount
-- from products as p
-- inner join order_details as od on p.product_id = od.product_id
-- group by od.order_id
-- order by od.order_id;

-- -- step 3:update the total_amount
-- update orders
-- set total_amount = (select sum(p.price * od.quantity) as total_amount
-- from products as p
-- inner join order_details as od on p.product_id = od.product_id
-- WHERE od.order_id = orders.order_id
-- group by od.order_id);


-- -- SUB QUERIES

-- select *, 
--        (select avg(total_amount) from orders) as "avg_total_amount"
-- from orders;


-- -- return all orders made by a customer named Camel Dayce
-- select order_id, customer_id, order_date, total_amount
-- from orders
-- where customer_id = (select customer_id from customers where name="Camel Dayce");

-- -- return all orders with amount greater than the average amount
-- select order_id, customer_id, order_date, total_amount
-- from orders
-- where total_amount > (select avg(total_amount) from orders); -- inner query return a scalar


-- -- return all orders made in the last 7 days
-- select order_id, customer_id, order_date, total_amount
-- from orders
-- where customer_id in (select customer_id 
--                       from orders
--                       where order_date >= CURDATE() - INTERVAL 7 DAY
--                       order by order_date desc);
--                       
-- -- return all male customers
-- select customer_id, name, gender
-- from (select * from customers where gender = "M") as male_customers;

-- -- return all female customers
-- select customer_id, name, gender
-- from (select * from customers where gender = "F") as female_customers;

-- -- return the name, order_date and amount spent on each orders
-- select c.customer_id, name, od.order_date, od.total_amount
-- from customers as c
-- inner join (select customer_id, 
--                    order_date, 
--                    total_amount  from orders) 
-- as od on c.customer_id = od.customer_id;

-- -- return Top 3 customers with order quantity above average quantity.
-- select name
-- from customers
-- where customer_id in (
-- 	select customer_id 
-- 	from orders as o
-- 	inner join (select order_id, 
--                        quantity 
--                        from order_details) as od on o.order_id = od.order_id -- 2. get customer_id of customer with quantity above average
-- 	where od.quantity > (select avg(quantity) from order_details) -- 1. get the average quantities
-- )
-- limit 3; -- 3. get the customer names of respective customers id


-- -- return Top 5 customer with highest money spent so far
-- select customer_id, 
-- 	   name,
--        (select sum(total_amount) from orders
--        where customers.customer_id = orders.customer_id) as 'total_amount_spent'
-- from customers
-- order by total_amount_spent desc
-- limit 5;


-- -- CTE
-- WITH male_customers AS (
-- 	SELECT * FROM customers WHERE gender = "M"
-- )
-- SELECT  customer_id, name
-- FROM male_customers;


-- -- return customers whose make order in this month so far
-- WITH order_cte AS (
--     SELECT order_id, customer_id, order_date, total_amount
--     FROM orders 
--     WHERE order_date BETWEEN "2024-03-01" and CURRENT_DATE()
--     ORDER BY order_date DESC
-- ),
-- customer_cte as (
--     SELECT customer_id, name
--     FROM customers
-- )
-- SELECT oc.* 
-- FROM order_cte as oc
-- INNER JOIN customer_cte AS cc ON oc.customer_id = cc.customer_id
-- ORDER BY oc.order_date DESC;


-- -- SQL VIEW
-- CREATE VIEW male_customers AS
-- SELECT * FROM customers WHERE gender = "M";

-- create view top_5_customer as
-- select customer_id, 
-- 	   name,
--        (select sum(total_amount) from orders
--        where customers.customer_id = orders.customer_id) as 'total_amount_spent'
-- from customers
-- order by total_amount_spent desc
-- limit 5;