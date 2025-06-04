-- Question 1
select 
	p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName
from
	products p 
inner join 
	categories c on p.CategoryID = c.CategoryID
order by 
	c.CategoryName, p.ProductName;

-- Question 2
select 
	p.ProductID, p.ProductName, p.UnitPrice, s.CompanyName 
from 
	products p
inner join 
	suppliers s on p.SupplierID = s.SupplierID
where 
	p.UnitPrice > 75
order by 
	p.ProductName;

-- Question 3
select 
	p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName, s.CompanyName
from 
	products p 
inner join 
	suppliers s  on p.SupplierID = s.SupplierID
inner join 
	categories c on p.CategoryID = c.CategoryID
order by 
	p.ProductName;

-- Question 4
select 
	p.ProductName, c.CategoryName
from 
	products p 
inner join 
	categories c on p.CategoryID = c.CategoryID
where
	p.UnitPrice = (
	select MAX(UnitPrice)
	from products 
	);
	
-- Question 5
select 
	o.OrderID, o.ShipName, o.ShipAddress, s.CompanyName
from 
	orders o
inner join 
	shippers s on o.ShipVia = s.ShipperID
where 
	o.ShipCountry = 'Germany';

-- Question 6
select 
	o.OrderID, o.OrderDate, o.ShipName, o.ShipAddress
from 
	orders o
inner join 
	`order details` od on o.OrderID = od.OrderID
inner join 
	products p on p.ProductID = od.ProductID 
where 
	p.ProductID = (
	select p.ProductID 
	from products p
	where p.ProductName = 'Sasquatch Ale'
	)