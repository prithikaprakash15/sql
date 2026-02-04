use rk_hospital;


create view employee_salary as 
select name, salary from employees;
select * from employee_salary order by salary;

select * from employee_salary where salary>25000;

insert into employees (name , age,salary,join_date,manager_id)
values("AK",50,2000000,"2020-02-12",1);

select *from employee_salary;


create view report_to as
select a.name,a.salary,a.e_id,b.name as manager_name from employees a inner join employees b on a.manager_id = b.e_id;

select * from report_to;

drop view employee_salary;
