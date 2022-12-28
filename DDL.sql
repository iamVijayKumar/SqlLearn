show databases;

create database coffee_store;


create table products(
	product_id int auto_increment primary key,
    name varchar(30),
    price decimal(3,2)
);
alter table products 
add column product_origin varchar(20);
create table customers(
	customer_id int auto_increment primary key,
    fisrt_name varchar(30),
    last_name varchar(30),
    gender enum('M','F'),
    phone_number varchar(13)
);
alter table customers change `fisrt_name` `first_name` varchar(30);

create table orders(
	order_id int auto_increment primary key,
    product_id int,
    customer_id int,
    order_date datetime,
    foreign key (product_id) references products(product_id),
    foreign key (customer_id) references customers(customer_id)
);

use coffee_store;
show tables;
