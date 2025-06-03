-- Question 1 
SELECT 
	COUNT(*) AS 'Supplier(s)'
FROM
	suppliers;
    
-- Question 2
SELECT
	SUM(Salary) AS 'employee_salaries'
FROM
	employees;
    
-- Question 3
SELECT 
	ProductName, UnitPrice AS 'CheapestItem'
FROM 
	products
WHERE 
	UnitPrice = (SELECT MIN(UnitPrice)
					FROM products);
                    
-- Question 4
SELECT
	AVG(UnitPrice) AS 'ItemPriceAverage'
FROM 
	products;
    
-- Question 5
SELECT
	ProductID, ProductName, UnitPrice AS 'PriciestItem'
FROM 
	products
WHERE
	UnitPrice = (SELECT MAX(UnitPrice)
					FROM products);

-- Question 6
SELECT DISTINCT
	SupplierID, COUNT(UnitsInStock) AS 'Stock'
FROM
	products
GROUP BY
	SupplierID;

-- Question 7
SELECT DISTINCT
	CategoryID, ProductID, AVG(UnitPrice) AS 'AveragePrice'
FROM
	products
GROUP BY 
	ProductID;
    
-- Question 8
SELECT 
    SupplierID, 
    COUNT(*) AS NumberOfItems
FROM 
    products
GROUP BY 
    SupplierID
HAVING 
    COUNT(*) >= 5
ORDER BY 
    NumberOfItems DESC;

-- Question 9 
SELECT
	ProductId, ProductName, (UnitPrice * UnitsInStock) AS InventoryValue
FROM
	products
ORDER BY
	InventoryValue DESC,
    ProductName ASC;