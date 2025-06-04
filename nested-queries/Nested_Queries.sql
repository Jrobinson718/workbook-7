-- Question 1
select  
	p.ProductName, p.UnitPrice
from 
	products p 
where 
	p.UnitPrice = (
	select MAX(p.UnitPrice)
	from products p
	);

-- Question 2
select
	o.OrderID, o.ShipName, o.ShipAddress
from 
	orders o
where
	o.ShipVia = (
	select s.ShipperID
	from shippers s
	where s.CompanyName = 'Federal Shipping'
	)
group by 
	o.OrderID;

-- Question 3
select 
	o.OrderID
from 
	`order details` o
where 
	o.ProductID = (
	select p.ProductID
	from products p
	where p.ProductName = 'Sasquatch Ale'
	);

-- Question 4
select 
	e.FirstName, e.LastName
from 
	employees e
where 
	e.EmployeeID = ( 
	select o.EmployeeID
	from orders o
	where o.OrderID = 10266
	);

-- Question 5
select 
	c.CustomerID, c.CompanyName, c.ContactName
from 
	customers c
where 
	c.CustomerID = (
	select o.CustomerID
	from orders o
	where o.OrderID = 10266
	)
	