# DAY 3
SELECT * FROM Suppliers
INNER JOIN Products
ON Suppliers.SupplierID=Products.SupplierID; 
#Same goes with LEFT, RIGHT, FULL - just the values will be different based on its requirement

SELECT * FROM Suppliers
INNER NATURAL JOIN Products;

SELECT * FROM Suppliers
LEFT JOIN Products
ON Suppliers.SupplierID=Products.SupplierID
ORDER BY SUPPLIERS.SUPPLIERNAME;

SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID != B.CustomerID
AND A.City = B.City
ORDER BY A.City;

SELECT department,sum(salary) AS total_salary
FROM employees
GROUP BY department;

SELECT department,Count(*) AS counnt_emp 
FROM employees
GROUP BY department;

SELECT Max(salary) as Highest_salary
FROM employees;


