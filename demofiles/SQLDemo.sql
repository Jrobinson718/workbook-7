-- Question 1
SELECT 
*

FROM
	products;
    
-- Question 2
SELECT 
	ProductID, ProductName, UnitPrice

FROM 
	products;
    
-- Question 3
SELECT
	ProductID, ProductName, UnitPrice 
    
FROM
	products

ORDER BY
	UnitPrice;
    
-- Question 4

SELECT 
	*

FROM 
	products 

WHERE
	UnitPrice <= 7.50;

-- Question 5

SELECT 
	*

FROM
	products

WHERE 
	UnitsInStock >= 100

ORDER BY 
	UnitPrice DESC;
    
-- Question 6
SELECT 
	*
    
FROM 
	products

WHERE
	UnitsInStock >= 100
    
ORDER BY
	UnitPrice DESC, ProductName ASC;
    
-- Question 7
SELECT 
	*

FROM 
	products
    
WHERE
	UnitsInStock < 1

ORDER BY
	UnitPrice DESC;
    
-- Question 8
SELECT 
	*

FROM 
	categories;
    
-- Question 9
SELECT 
	*

FROM
	categories

WHERE CategoryName LIKE 'Seafood%';

-- Question 10
SELECT 
	*

FROM
	products

WHERE CategoryID = 8;

-- Question 11
SELECT
	FirstName, LastName
    
FROM 
	employees;
    
-- Question 12
SELECT
	*

FROM
	employees

WHERE Title LIKE '%Manager%';

-- Question 13
SELECT DISTINCT 
	Title
    
FROM 
	employees;
    
-- Question 14
SELECT 
	* 

FROM
	employees
    
WHERE Salary > 2000 AND Salary < 2500;

-- Question 15
SELECT 
	*
    
FROM
	suppliers;
    
-- Question 16
SELECT 
	*
    
FROM 
	products
    
WHERE
	SupplierID = 4;