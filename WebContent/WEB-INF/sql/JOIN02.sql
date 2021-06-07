-- http://joins.spathon.com/

CREATE TABLE Users
(
id INT,
name VARCHAR(255)
);

CREATE TABLE Likes
(
userId INT,
`like` VARCHAR(255)
);

INSERT INTO Users
(id, name)
VALUES
(5, 'Elizabeth');

INSERT INTO Likes
(userId, `like`)
VALUES
(4, 'Apples');



SELECT * FROM Users;
SELECT * FROM Likes;

SELECT * FROM Users, Likes;

-- inner join = join  
SELECT * FROM Users JOIN Likes
on Users.id = Likes.userId;

-- left join
SELECT * FROM Users LEFT JOIN Likes 
ON Users.id = Likes.userId;

-- right join
SELECT * FROM Users RIGHT JOIN Likes
on Users.id = Likes.userId;

-- full (outer) join

SELECT * FROM Users FULL JOIN Likes 
on Users.id = Likes.userId;

-- 좋아하는 것이 없는 사용자
SELECT * FROM Users LEFT JOIN Likes
on Users.id = Likes.userId
WHERE Likes.userId is NULL;

-- 사용자들이 좋아하지 않는 것
SELECT * FROM Users RIGHT JOIN Likes
on Users.id = Likes.userId
WHERE Users.id is null;