use pandian_stores;
create table transactions(
t_id int ,
amount decimal(6,2),customer_id int not null,
foreign key(customer_id) references customers(c_id));

insert into transactions (amount,customer_id)
values(45.67,1);
insert into transactions (amount,customer_id)
values(78.67,2);



create table customers(
c_id int primary key auto_increment,
c_name varchar(40),
c_age int
);

insert into customers(c_name,c_age) values("prithika",20),("arjun",21);
update customers set c_name = "vinay" where c_id=4;
update customers set c_name = "tharun" where c_id=3;

select * from customers;
select * from transactions;

#joins
#inner join
select * from transactions inner join customers on transactions.customer_id=customers.c_id;
select t_id,c_id,amount,c_name from transactions inner join customers on transactions.customer_id=customers.c_id;

#left join
select * from transactions left join customers on transactions.customer_id=customers.c_id;
select t_id,amount,c_name from transactions left join customers on transactions.customer_id=customers.c_id;

#right join
select * from transactions right join customers on transactions.customer_id=customers.c_id;
select t_id,amount,c_name from transactions right join customers on transactions.customer_id=customers.c_id