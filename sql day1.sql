show databases;

create database pandian_stores;
use pandian_stores;
drop database pandian_stores;
alter database read only=0;

#creating table
create table employee(
emp_id int, 
emp_name varchar(50), 
salary decimal(7,2),
join_date date);

#display and rname and deleting table
select * from employee;
rename table employees to family;
select * from family;
rename table family to employee;
drop table employee;


#alter function using add
alter table employee add phone_num varchar(10);
alter table employee add email varchar(50);
alter table employee rename column phone_num to ph_num;

#modify function
alter table employee modify column email varchar(100) first;
alter table employee modify column email varchar(100) after emp_name;
alter table employee drop column email;

#inserting values
insert into employee 
values
	(1,"prithika",40000.50,"2026-03-01","9894740696"),
    (2,"ananya",35000.75,"2026-03-05","9876543210"),
	(3,"karthik",42000.00,"2026-03-10","9123456789"),
	(4,"meena",38000.25,"2026-03-15","9012345678"),
	(5,"arjun",45000.60,"2026-03-20","9988776655"),
	(6,"divya",39000.90,"2026-03-25","8899001122")
    ;

insert into employee (emp_id,emp_name, phone_num)
values (7,"vinay","7894561237");

#ways to display 
select emp_name, salary from employee;
select emp_name as name, salary from employee;
select salary as coolie ,emp_name as name from employee;


#conditions-where clause
select * from employee where emp_id =2;
select * from employee where emp_id !=2;
select * from employee where emp_name !="prithika";
select * from employee where emp_name ="arjun";
select * from employee where salary>40000;
select emp_name as name ,salary as emp_salary from employee where salary>40000;


#to avoid null record
select * from employee where join_date is null;
select * from employee where join_date is not null;
select * from employee where join_date < "2026-03-15";

#join date after today
select * from employee where join_date > "2026-01-02";

#giving values to null values
#update function
set sql_safe_updates=1;
set sql_safe_updates=0;
update employee set join_date="2021-03-04" where emp_id=3;
update employee set phone_num="7418529631" where emp_id=7;
update employee set join_date="2025-06-13",
phone_num="8529637410" where emp_id=5;

#assigning null value to record
update employee set phone_num = null where emp_name="karthik";

#deleting values
delete from employee where emp_id=4;

#autocommit
set autocommit=0; #autocommit of off now
commit;
rollback;
 select * from employee;
delete  from employee;


#date and time
create table timestamps(
doj date,
dateandtime datetime,
neram time
);


insert into timestamps values
(
#today date,date and time now,current time
current_date(), now(), current_time()
);

select * from timestamps;

delete  from employee where join_date=current_date();
