SELECT * FROM Customers;
SELECT * FROM Suppliers;

SELECT Country FROM Customers
UNION ALL
SELECT Country From Suppliers
ORDER BY Country;