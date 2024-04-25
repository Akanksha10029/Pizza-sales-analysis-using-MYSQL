create database pizzahub;

SELECT * FROM pizzahub.pizzas;
show databases;
use pizzahub;
show tables;
alter table pizza_t
rename to pizza_types;

create table orders (
order_id int not null primary key,
order_date date not null,
order_time time not null);


create table order_details (
order_details_id int not null primary key,
order_id int not null ,
pizza_id text not null,
quantity int not null );

