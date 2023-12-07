use northwind;

-- Question 1
select ProductID, ProductName, UnitPrice, CategoryName
from products
join categories
On product.CategoryID + Categories.CategoryID
order by CategoryName, ProductName;


-- Question 2
select ProductID, ProductName, UnitPrice, CompanyName 
from products
join suppliers
ON Products.SupplierID = suppliers.SupplierID
where UnitPrice > 75
Order By ProductName;

-- Question 3
SELECT ProductID, ProductName, UnitPrice, 
  Categories.CategoryName, 
  Suppliers.CompanyName AS SupplierName
FROM Products
JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories
ON Products.CategoryID = Categories.CategoryID
ORDER BY ProductName;

-- Question 4 
select ProductName, CategoryName, UnitPrice
from products
Join categories
where UnitPrice = (Select MAX(UnitPrice) From products)
Order By ProductName;

-- Question 5
select OrderID, ShipName, ShipAddress, shippers.CompanyName, ShipCountry
from orders
join shippers
On Orders.ShipVia = Shippers.ShipperID
where ShipCountry like '%Germany%'
Order BY OrderID;

-- Question 6
SELECT Orders.OrderID, Orders.OrderDate, 
Orders.ShipName, Orders.ShipAddress, Products.ProductName
FROM Orders
JOIN `Order Details`
ON Orders.OrderID = `Order Details`.OrderID
JOIN Products
ON `Order Details`.ProductID = Products.ProductID
WHERE Products.ProductName LIKE '%Sasquatch Ale%'





