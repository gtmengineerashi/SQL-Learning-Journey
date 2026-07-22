# SQL Day 3 Practice Queries
-- Topics: INNER JOIN, LEFT JOIN, RIGHT JOIN,
-- FULL JOIN, SELF JOIN, ALIAS

-- Sample Tables:
-- employees(employee_id, name, department_id, manager_id)
-- departments(department_id, department_name)

-- 1. INNER JOIN - Show employees with their department names
SELECT e.name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

-- 2. INNER JOIN - Display employee ID, employee name and department
SELECT e.employee_id, e.name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

-- 3. LEFT JOIN - Show all employees even if they have no department
SELECT e.name, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;

-- 4. LEFT JOIN - List employees and their departments
SELECT e.employee_id, e.name, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;

-- 5. RIGHT JOIN - Show all departments even if no employee belongs to them
SELECT e.name, d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;

-- 6. RIGHT JOIN - Display department details with employee names
SELECT d.department_id, d.department_name, e.name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;

-- 7. FULL JOIN - Show all employees and all departments
SELECT e.name, d.department_name
FROM employees e
FULL OUTER JOIN departments d
ON e.department_id = d.department_id;

-- 8. FULL JOIN - Display unmatched employees and departments
SELECT e.employee_id, e.name, d.department_name
FROM employees e
FULL OUTER JOIN departments d
ON e.department_id = d.department_id;

-- 9. SELF JOIN - Show employees and their managers
SELECT e.name AS employee,
       m.name AS manager
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id;

-- 10. SELF JOIN - Display employee-manager pairs
SELECT emp.name AS employee_name,
       mgr.name AS manager_name
FROM employees emp
INNER JOIN employees mgr
ON emp.manager_id = mgr.employee_id;

-- 11. Using Table Aliases
SELECT e.name, d.department_name
FROM employees AS e
JOIN departments AS d
ON e.department_id = d.department_id;

-- 12. Alias for Column Names
SELECT name AS employee_name,
       employee_id AS employee_number
FROM employees;

-- 13. INNER JOIN with WHERE Clause
SELECT e.name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'IT';

-- 14. Count Employees per Department using JOIN
SELECT d.department_name,
       COUNT(e.employee_id) AS total_employees
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_name;

-- 15. Display Employee, Manager and Department
SELECT e.name AS employee,
       m.name AS manager,
       d.department_name
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.employee_id
LEFT JOIN departments d
ON e.department_id = d.department_id;
