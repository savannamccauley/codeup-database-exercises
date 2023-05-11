USE employees;

select * from employees where (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')AND gender = 'M'order by first_name desc;

select * from employees where (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M'order by first_name desc, last_name desc;

select * from employees where (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M'order by last_name desc, first_name desc;


select last_name from employees where last_name like 'E%';


select first_name, last_name
from employees
where last_name
          like '%q%';

select concat(first_name,'-' ,last_name)
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

select * from employees where month(birth_date) = 12 and day(birth_date)= 25;

select * from employees where year(hire_date) between 1990 and 1999 and month(birth_date)= 12 and day(birth_date)= 25;

select * from employees where year(hire_date) between 1990 and 1999 and month(birth_date)=25 order by birth_date,hire_date desc limit 1;

SELECT *, DATEDIFF(NOW(), hire_date) AS days_worked
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

