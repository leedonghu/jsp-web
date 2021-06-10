SELECT * FROM Customers;

SELECT count(*)   FROM Customers;
SELECT count(*) cnt, Country
FROM Customers
GROUP BY Country
ORDER BY cnt DESC ;