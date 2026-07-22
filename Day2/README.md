SELECT name,role,building FROM employees
WHERE building IS NULL;

SELECT DISTINCT building_name FROM buildings
WHERE role IS NOT NULL;

SELECT MAX(years_employed) as max_years_employed FROM employees;

SELECT AVG(years_employed) as avg_years_employed FROM employees;

SELECT SUM(years_employed) as sum_years_employed FROM employees;

SELECT COUNT(role) FROM employees
WHERE role LIKE "Artist;

SELECT DISTINCT building_name FROM buildings
WHERE role NOT LIKE "Teacher";
