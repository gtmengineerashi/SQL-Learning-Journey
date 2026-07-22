-- ==========================================
-- SQL Basics Practice Queries
-- Author: Your Name
-- Concepts: SELECT, WHERE, Operators, ORDER BY
-- ==========================================

-- 1. Display all employee records
SELECT * FROM employees;

-- 2. Display only employee names and departments
SELECT name, department
FROM employees;

-- 3. Find employees from the IT department
SELECT *
FROM employees
WHERE department = 'IT';

-- 4. Find employees with salary greater than 50000
SELECT *
FROM employees
WHERE salary > 50000;

-- 5. Find employees younger than 30
SELECT *
FROM employees
WHERE age < 30;

-- 6. Find employees from New York
SELECT *
FROM employees
WHERE city = 'New York';

-- 7. Find employees who are not in HR
SELECT *
FROM employees
WHERE department <> 'HR';

-- 8. Find IT employees earning more than 70000
SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 70000;

-- 9. Find employees from HR or Finance
SELECT *
FROM employees
WHERE department = 'HR'
OR department = 'Finance';

-- 10. Find employees with salary between 50000 and 80000
SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 80000;

-- 11. Find employees located in Chicago or Boston
SELECT *
FROM employees
WHERE city IN ('Chicago', 'Boston');

-- 12. Find employees whose names start with 'A'
SELECT *
FROM employees
WHERE name LIKE 'A%';

-- 13. Sort employees by salary (Lowest to Highest)
SELECT *
FROM employees
ORDER BY salary ASC;

-- 14. Sort employees by age (Highest to Lowest)
SELECT *
FROM employees
ORDER BY age DESC;

-- 15. Calculate average salary of IT employees
SELECT AVG(salary) AS average_salary
FROM employees
WHERE department = 'IT';
