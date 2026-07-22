# SQL Day 2 Practice Queries
-- Topics: ORDER BY, LIMIT, AGGREGATE FUNCTIONS, GROUP BY

-- 1. Display all employees sorted by salary (Highest to Lowest)
SELECT *
FROM employees
ORDER BY salary DESC;

-- 2. Display all employees sorted by age (Lowest to Highest)
SELECT *
FROM employees
ORDER BY age ASC;

-- 3. Show the top 5 highest-paid employees
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;

-- 4. Show the 3 youngest employees
SELECT *
FROM employees
ORDER BY age ASC
LIMIT 3;

-- 5. Count total number of employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- 6. Find the highest salary in the company
SELECT MAX(salary) AS highest_salary
FROM employees;

-- 7. Find the lowest salary in the company
SELECT MIN(salary) AS lowest_salary
FROM employees;

-- 8. Find the average salary of all employees
SELECT AVG(salary) AS average_salary
FROM employees;

-- 9. Find the total salary paid to employees
SELECT SUM(salary) AS total_salary
FROM employees;

-- 10. Count employees in each department
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- 11. Find average salary by department
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- 12. Find total salary by department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- 13. Find highest salary in each department
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- 14. Find lowest salary in each department
SELECT department, MIN(salary) AS lowest_salary
FROM employees
GROUP BY department;

-- 15. Show departments sorted by average salary
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC;
