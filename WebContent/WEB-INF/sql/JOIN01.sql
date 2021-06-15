CREATE TABLE Table01
(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255),
bookId int
);

CREATE TABLE Table02
(
id INT PRIMARY KEY AUTO_INCREMENT,
bookName VARCHAR(255)
);

INSERT INTO Table01
(name, bookId)
VALUES
('park', 4);

INSERT INTO Table02
(bookName)
VALUES
('book4');


SELECT * FROM Table01; -- 4개 record
SELECT * FROM Table02; -- 4개 record

SELECT * FROM Table01, Table02; -- 16개 record

-- join
SELECT * FROM
Table01 JOIN Table02
ON Table01.bookId = Table02.id;

-- alias
-- table
SELECT * FROM 
Table01 as t1 JOIN Table02 as t2 -- 테이블에 별칭 부여
on t1.bookId = t2.id;

SELECT * FROM 
Table01 t1 JOIN Table02 t2 -- as 생략가능
on t1.bookId = t2.id;

-- column

SELECT 
t1.id AS id1, t1.name AS name1, t1.bookId AS bookId, t2.id AS id2, t2.bookName AS bname
FROM 
Table01 t1 JOIN Table02 t2 
on t1.bookId = t2.id;


USE practice;
SELECT productId, productName, sum(amount), price FROM Cart
WHERE customerId = 'aaaaa'
GROUP BY productName;
HAVING customerId = 'aaaaaa'

USE test;
SELECT * FROM Account;




SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Categories;
SELECT * FROM Orders;
SELECT * FROM OrderDetails;