SELECT * FROM Customers
where EXISTS (SELECT NOW()); -- EXISTS 뒤에 오는 SUBQUERY가 존재하면 

SELECT * FROM Customers
where NOT EXISTS (SELECT NOW());-- 존재하지 않으면 아무것도 가져오지 않음

SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName 
FROM Products 
WHERE Products.SupplierID = Suppliers.supplierID 
AND Price < 20);

-- SUBQUERY
SELECT ProductName 
FROM Products 
WHERE Products.SupplierID = 1 -- Suppliers.SupplierID가 1 일때
AND Price < 20;

SELECT ProductName 
FROM Products 
WHERE Products.SupplierID = 2 -- Suppliers.SupplierID가 2 일때
AND Price < 20;

SELECT ProductName 
FROM Products 
WHERE Products.SupplierID = 3 -- Suppliers.SupplierID가 3 일때
AND Price < 20; -- 출력되지 않음

