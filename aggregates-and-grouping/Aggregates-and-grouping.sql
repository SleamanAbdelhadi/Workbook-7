use Northwind;
-- Question 1
Select count(*) AS Suppliers From Suppliers; 

-- Question 2
Select sum(Salary)
from Employees; 

-- Question 3
select min (UnitPrice) 
From products;

-- Question 4
select avg(UnitPrice)
From products;

-- Question 5 
select max(UnitPrice)
from products;

-- Question 6
select SupplierID, count(ProductID)
from products 
group by 