USE employees;

SELECT d.dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager' FROM employees AS e
                                                                                                             JOIN dept_manager AS dm on dm.emp_no = e.emp_no
                                                                                                             JOIN departments AS d on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager' FROM employees AS e
                                                                                                             JOIN dept_manager AS dm on dm.emp_no = e.emp_no
                                                                                                             JOIN departments AS d on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT title, COUNT(title) AS 'Total' FROM titles AS t
                                               JOIN dept_emp AS de ON t.emp_no = de.emp_no
                                               JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service' AND de.to_date = '9999-01-01' AND t.to_date = '9999-01-01'
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT d.dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager', s.salary AS 'Salary' FROM employees AS e
                                                                                                                                   JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
                                                                                                                                   JOIN departments AS d ON dm.dept_no = d.dept_no
                                                                                                                                   JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name;