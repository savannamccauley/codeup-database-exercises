use employees;
    select distinct title from titles;

select last_name from employees where last_name like 'e%' and last_name like '%e' group by last_name order by last_name asc;

select last_name from employees where last_name like 'e%' and last_name like '%e' group by first_name,last_name;

select last_name from employees where last_name like '%q%' and last_name not like '%qu%' group by last_name;

select count(last_name), last_name from employees where last_name like '%q%' and last_name not like '%qu%';


select count(gender), gender from employees where first_name in ('Irena', 'Vidya', 'Maya') group by gender;




