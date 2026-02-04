use pandian_stores;
#primary key
create table transaction(
t_id int primary key,
amount decimal(6,2));
insert into transaction values(1,4000.5);
insert into transaction values(2,2000.5);
insert into transaction(amount) values(2000.5);
select * from transaction;
drop table transactions;


#existing table priamry key
create table transaction(
t_id int,amount decimal(6,2));
alter table transaction add constraint primary key(t_id);
insert into transaction values(2,2000.5);
select * from transaction;

#auto increment
create table transaction(
t_id int primary key auto_increment,
amount decimal(6,2)
);
insert into transaction(amount) values(2000.5);
insert into transaction(amount) values(3000.5);
select * from transaction;


#in existing table
create table transactions(
t_id int ,
amount decimal(6,2));

alter table transactions add constraint primary key(t_id);
alter table transactions modify t_id int auto_increment;
insert into transactions(amount) values(2000.5);
insert into transactions(amount) values(3000.5);
select * from transactions;

