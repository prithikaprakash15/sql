#constrains
use  pandian_stores;
create table products(
p_id int,
p_name varchar(30) unique,
price decimal(6,2)
);
insert into products values(1,"rice",300.34);
insert into products values(2,"rice",300.34);
drop table products;
select * from products;

#-- a way to create unique constraint in existing table
create table products(
p_id int,
p_name varchar(30) ,
price decimal(6,2)
);
alter table products add constraint unique (p_name) ;

insert into products values(1,"rice",300.34);
insert into products values(2,"rice",300.34);
drop table products;
select * from products;
#not null
create table products(
p_id int,
p_name varchar(30) not null ,
price decimal(6,2)
);

insert into products 
values(1,"frooti",300.34);

drop table products;
select * from products;


#not null in existing table uses modify
create table products(
p_id int,
p_name varchar(30) ,
price decimal(6,2)
);

alter table products modify p_name varchar(30) not null;

insert into products 
values(1,"frooti",300.34);

insert into products 
values(2,300.34);

drop table products;
select * from products;

#check contraints
create table products(
p_id int,
p_name varchar(30) ,
price decimal(6,2)
constraint check_price check(price<=100)
);

insert into products 
values(2,"frooti",300.34); #will give error

insert into products 
values(1,"frooti",90); #yes can be added

#to remove the condition
 alter table products drop constraint check_price;

#to add the condition
create table products(
p_id int,
p_name varchar(30) ,
price decimal(6,2)
);
alter table products add constraint check_price check(price<100);
drop table products;
select * from products;
 
#default constraint
create table products(
p_id int,
p_name varchar(30) ,
price decimal(6,2) default 10
);

insert into products (p_id,p_name)
values(1,"frooti");

drop table products;
select * from products;

#default contraint for exixting table
create table products(
p_id int,
p_name varchar(30) ,
price decimal(6,2)
);

alter table products alter price set default 15; 
insert into products (p_id,p_name)
values(1,"dal");
drop table products;
select * from products;
