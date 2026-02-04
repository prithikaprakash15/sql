create database rk_hospital;
 use rk_hospital;
 
 create table employees(
 e_id int primary key auto_increment,
 name varchar(50),
 age int not null,
 salary int 
 );
 
 select * from employees;
describe employees;
 insert into  employees(name,age,salary) values
("radhi",36,80000),
("reena",25,30000),
("naveen",24,31000),
("teju",23,30000),
("rocky",24,30000),
("guna",25,25000),
("anitha",29,40000),
("revi",30,42000),
("vijay",40,90000);

#agregate functions
select count(name) as count from employees where age<25;
select max(salary) as highsalary from employees where age<25;
select min(age) as younest from employees;
select sum(salary) as total from employees;
select concat(name,'-',e_id) as user_name from employees;


#logical operator
select * from employees;

select * from employees where age =23 && salary <=90000;
select * from employees where age >25 || salary >=40000;
select * from employees where not age=24 ;
select * from employees where  age between 25 and 40;
select *from employees where age in (23,25);