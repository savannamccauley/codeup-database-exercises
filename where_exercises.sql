USE employees;

select first_name from employees where first_name = 'Irena'
OR first_name = 'Vidya' OR first_name = 'Maya'
                               AND (gender = 'M')
;

select last_name from employees where last_name like 'E%';

select first_name, last_name
from employees
where last_name
like '%q%';

select last_name
from employees
where last_name
like 'E%' OR last_name like '%E';

select last_name
from employees
where last_name
like 'E%' AND last_name like '%E';

select first_name, last_name
from employees
where last_name
like '%q%' AND last_name NOT like '%qu%';







