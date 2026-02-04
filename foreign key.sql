use pandian_stores;
create table customers(
c_id int primary key auto_increment,
c_name varchar(40),
c_age int
);
insert into customers(c_name,c_age) values("prithika",20),("arjun",21);
select * from customers;
drop table  transactions;
drop table customers;

create table transactions(
t_id int primary key auto_increment,
amount decimal(6,2),
customer_id int not null,
foreign key(customer_id) references customers(c_id));
insert into transactions (amount,customer_id)
values(45.67,1);
insert into transactions (amount,customer_id)
values(78.67,2);
select * from transactions;
#to delete foreign key
alter table transactions drop foreign key transactions_ibfk_1;
#to add
alter table transactions add constraint fk_c_id foreign key (customer_id) references customers(c_id);

delete from customers where c_id=1; #this cant implemented

