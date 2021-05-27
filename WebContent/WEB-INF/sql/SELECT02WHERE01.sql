select * FROM Customers where CustomerID=1;
SELECT * FROM Products
WHERE Price = 18;

SELECT * FROM Products
WHERE Price > 30;

SELECT * FROM Products
WHERE Price < 30;

SELECT * FROM Products
WHERE Price <> 18;

SELECT * FROM Products
WHERE Price BETWEEN 50 AND 60;

SELECT * FROM Customers
WHERE City LIKE 's%';

select * FROM Customers
WHERE City LIKE '%G';

select * from Customers
where City like '%z%';

select * from Customers
where Country like '%us%';


SELECT * FROM Customers
WHERE City IN ('Paris','London');

SELECT * FROM Products
WHERE Price >= 30;

SELECT * FROM Products
WHERE Price <= 30;

select * from Customers
where city = 'Berlin';

select * from Customers
where City !='Berlin'; 

select * from Customers
where not City ='Berlin';

select * from Customers
where City <>'Berlin' ;

select * from Customers
where not City like '%on';

select * from Customers
where CustomerID = 32;

select * from Customers
where Country='Germany' and City='berlin';

select * from Customers
where City="Berlin" or City='München';

select * from Customers
where Country = 'Germany' or (CustomerID Like '%s%' and City like '%ch%');

select * from Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');

SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';

SELECT * FROM Customers
WHERE City = 'Berlin' AND PostalCode = 12209;

SELECT * FROM Customers
WHERE City = 'Berlin' OR City = 'London';

