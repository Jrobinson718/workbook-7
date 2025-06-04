-- Task 1
insert into 
	suppliers 
values 
	(30, "Johnathan's Shipping", "Johnathan Robinson", "CEO", 
"98-23 King St.", "New York", "NY", "11413", "USA", "347-218-4895",
null, NULL);

-- Task 2
insert into 
	products 
values 
	(78,"Seafood Boil", 30, 8, "3.75kg - King Crab", 357.48, 40, 6, 50, 0);

-- Task 3
select 
	p.ProductID, p.ProductName, s.CompanyName
from 
	products p 
inner join 
	suppliers s on p.SupplierID = s.SupplierID
order by 
	p.ProductID;

-- Task 4
update 
	products 
set UnitPrice = UnitPrice * 1.15
where ProductID = 78;

-- Task 5
select 
	p.ProductName, p.UnitPrice
from 
	products p
where 
	p.SupplierID IN (
	select s.SupplierId
	from suppliers s
	);

-- Task 6
delete from 
	products 
where 
	ProductID = 78;

-- Task 7
delete from 
	suppliers 
where 
	SupplierID = 30;

-- Task 8
select 
	*
from 
	products;
 
-- Task 9
select 
	*
from 
	suppliers;