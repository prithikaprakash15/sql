use rk_hospital;

alter table employees add join_date date;

update employees set join_date ="2020-03-23" where e_id=1;
update employees set join_date ="2021-03-03" where e_id=2;
update employees set join_date ="2021-07-27" where e_id=3;
update employees set join_date ="2022-06-15" where e_id=4;
update employees set join_date ="2021-04-18" where e_id=5;
update employees set join_date ="2022-02-08" where e_id=6;
update employees set join_date ="2021-10-13" where e_id=7;
update employees set join_date ="2021-08-21" where e_id=8;
update employees set join_date ="2023-10-30" where e_id=9;
#wild cards
select * from employees where name like "R%";
select * from employees where name like "%i";

select * from employees where join_date like "%3";
select * from employees where name like "__ena";
select * from employees where join_date like "____-06-__";
select * from employees where name like "___i";

select * from employees where name like "_e%";

select * from employees;