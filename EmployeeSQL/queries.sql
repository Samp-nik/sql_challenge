SELECT employees.emp_no,employees.last_name,employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

SELECT first_name,last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
LEFT JOIN departments ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees ON dept_manager.emp_no = employees.emp_no

SELECT dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no

SELECT  employees.first_name, employees.last_name, employees.sex
FROM employees
Where first_name = 'Hercules' AND last_name LIKE 'B%'

SELECT  dept_emp.emp_no, employees.last_name, employees.first_name
FROM employees
LEFT JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM employees
LEFT JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'

SELECT employees.last_name, COUNT(last_name)
FROM employees
GROUP BY employees.last_name
ORDER BY COUNT(last_name) DESC;

