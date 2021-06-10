SELECT * FROM Products
ORDER BY Price; 

DESC Products;
-- min
SELECT min(Price) FROM Products;

-- max
SELECT max(Price) FROM Products;

-- COUNT 
SELECT count(*) FROM Products;

-- avg
SELECT avg(Price) FROM Products;

-- sum 
SELECT sum(Price) FROM Products;