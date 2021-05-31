SELECT * FROM Customers;

SELECT * FROM Customers
LIMIT 10;

SELECT * FROM Customers
ORDER BY Country
LIMIT 10;

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 10;

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 10, 10; -- 앞의 숫자는 인덱스 번호, 10번부터 10개

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 20, 10; -- 20번부터 10개
