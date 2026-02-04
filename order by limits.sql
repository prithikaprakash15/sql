select * from employees
order by name;

select * from employees
order by name desc;

select * from employees
order by join_date ;

select * from employees
order by join_date desc,name desc;

select * from employees
order by join_date ,name;

select * from employees
order by join_date,name desc;

select * from employees
order by join_date desc,name;

select * from employees
order by salary,name ;

select * from employees
order by salary ;

select * from employees 
order by salary desc limit 3;

select * from employees 
order by salary desc limit 4,2;
-- offset,limit

select * from employees;