use northwind; 

/* 2nd question from exercise
select ProductID, ProductName, UnitPrice from products;
*/

/* 3rd question from exercise 
select ProductID, ProductName, UnitPrice FROM products 
Order BY UnitPrice ASC;
*/

/* 4th question from exercise 
we carry products that are ProductID 33,24,13,52, and 54
which are a unit price of $7.50 or less 

select ProductID, UnitPrice FROM products WHERE UnitPrice <= 7.50;
*/

/* 5th question from exercise 
select UnitsInStock, UnitPrice FROM products  Where UnitsInStock <= 100 AND UnitsInStock > 0
Order BY UnitPrice desc;
*/

/* 6th question from exercise */
select * from products
where UnitPrice