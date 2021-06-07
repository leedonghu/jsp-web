SELECT * FROM Customers;
SELECT * FROM Orders;

SELECT * FROM Customers JOIN Orders
on Customers.CustomerID = Orders.CustomerID;

SELECT o.OrderID, c.CustomerName
from Customers c JOIN Orders o
on c.CustomerID = o.CustomerID;

-- 
SELECT c.CustomerName
FROM Customers c LEFT JOIN Orders o
on c.CustomerID = o.CustomerID
WHERE o.CustomerID is NULL;