USE employees;

select * from employees where (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')AND gender = 'M'order by first_name desc;

select * from employees where (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M'order by first_name desc, last_name desc;

select * from employees where (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M'order by last_name desc, first_name desc;


select last_name from employees where last_name like 'E%';


select first_name, last_name
from employees
where last_name
          like '%q%';

select last_name, emp_no
from employees
where last_name
    like 'E%' OR last_name like '%E' order by emp_no desc;

select last_name
from employees
where last_name
    like 'E%' AND last_name like '%E';

select first_name, last_name
from employees
where last_name
    like '%q%' AND last_name NOT like '%qu%';