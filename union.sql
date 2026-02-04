use rk_hospital;
create table bills(
id int primary key auto_increment,
name varchar(30),
amount int);


insert into bills(name,amount)
values("prithika",3000),
("lalith",1500),
("radhi",2000);

create table expenses(
id int primary key auto_increment,
name varchar(30),
amount int);

insert into expenses (name,amount)
values("salary",150000),
("supplies",100000),
("Electricity",100000);


select * from bills
union
select * from expenses;


select name,salary from employees
union
select name,amount from expenses;

update bills 
set amount= 80000
where id=3;


select name,salary from employees
union
select name,amount from bills;

select name,amount from bills
union
select name,salary from employees;


select * from bills;
select * from employees;
select * from expenses;