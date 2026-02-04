use rk_hospital;
select * from employees;

alter table employees add 
manager_id int;

update employees set manager_id=1 where e_id=2;
update employees set manager_id=1 where e_id=4;
update employees set manager_id=7 where e_id=6;
update employees set manager_id=9 where e_id=8;
update employees set manager_id=9 where e_id=5;
update employees set manager_id=9 where e_id=3;


#self join

select a.name,a.salary,a.e_id,b.name as manager_name from employees a inner join employees b on a.manager_id = b.e_id;

select a.name,a.salary,b.name as manager_name from employees a inner join employees b on a.manager_id = b.e_id ;


0 


select * from employees;