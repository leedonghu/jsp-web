
-- 1번 고객의 나라
SELECT Country FROM Customers
where CustomerID =1;

-- germany

SELECT * FROM Customers
WHERE Country ='Germany';

-- subquery
SELECT * FROM Customers
WHERE Country = (SELECT Country FROM Customers WHERE CustomerID = 1);

SELECT * FROM Suppliers
WHERE Country = (SELECT Country FROM Customers WHERE CustomerID =1);

-- 1번고객과 다른 나라에 사는 고객들 목록
SELECT * FROM Customers
WHERE Country <> (SELECT Country FROM Customers WHERE CustomerID = 1);

SELECT * FROM Employees;

-- 직원 fuller 보다 나이가 많은 사람
SELECT * FROM Employees
where BirthDate < '1952-02-19';

SELECT * FROM Employees
WHERE BirthDate < (SELECT BirthDate FROM Employees WHERE EmployeeID = 2);

SELECT * FROM Suppliers;