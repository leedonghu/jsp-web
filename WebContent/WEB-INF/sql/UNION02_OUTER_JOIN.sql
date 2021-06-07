-- OUTER JOIN
SELECT * FROM Users;
SELECT * FROM Likes;

SELECT * FROM Users u LEFT JOIN Likes l on u.id = l.userId
UNION
SELECT * FROM Users u RIGHT JOIN Likes l on u.id = l.userId;