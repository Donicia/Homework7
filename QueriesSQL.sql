-- Question 1
SELECT i.emp_no,i.last_name,i.first_name, i.gender, f.salary
FROM employees i
JOIN salaries f
ON (i.emp_no = f.emp_no);


-- Question 2 I can't fix this function----
SELECT * FROM employees
WHERE hire_date LIKE '1986%';

-- Question 3: List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, 
--and start and end employment dates.

SELECT i.dept_no, i.dept_name, m.emp_no, m.from_date, m.to_date, e.last_name, e.first_name
FROM departments i
JOIN dept_manager m 
ON (m.dept_no = i.dept_no)
JOIN employees e 
ON (e.emp_no = m.emp_no);

-- Question 4
SELECT e.emp_no, e.last_name, e.first_name, i.dept_name
FROM employees e
JOIN dept_emp d 
ON (e.emp_no = d.emp_no)
JOIN departments i
ON (i.dept_no = d.dept_no);

-- Question 5
SELECT * FROM employees
WHERE first_name LIKE 'Hercules'
AND last_name LIKE 'B%';

-- Question 6
SELECT i.emp_no, i.last_name, i.first_name, d.dept_name
FROM employees i
JOIN dept_emp e
ON (e.emp_no = i.emp_no)
JOIN departments d
ON (d.dept_no = e.dept_no)
WHERE d.dept_name LIKE 'Sales';

-- Question 7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp i 
ON (e.emp_no = i.emp_no)
JOIN departments d 
ON(d.dept_no = i.dept_no)
WHERE d.dept_name LIKE 'Development'
OR d.dept_name LIKE 'Sales';

-- Question 8
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;