SELECT * FROM Employees;

SELECT * FROM Customers;

UPDATE Customers
SET CustomerName = '스파이더맨'
WHERE CustomerID = 1;

UPDATE Customers
SET CustomerName = '아이언맨'
WHERE CustomerID = 2;

UPDATE Customers
SET CustomerName = '토르',
ContactName = '천둥갓',
Address = '아스가르드'
WHERE CustomerID = 3;

UPDATE Customers 
SET CustomerName = '?', ContactName= '?', Address ='?', City ='?', PostalCode ='?', Country ='?'
WHERE CustomerID ='?'; 
