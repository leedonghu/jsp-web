CREATE TABLE Table03
(
id3 int,
name VARCHAR(255)
);

CREATE TABLE Table04
(
id4 int,
city VARCHAR(255)
);

INSERT INTO Table03
(id3, name)
VALUES
(3, 'redvelvet');

INSERT INTO Table04
(id4, city)
VALUES
(30, 'london');

-- union  column의 갯수와 type이 유사해야함
SELECT * FROM Table03
UNION -- 중복되는 원소는 빠짐, 합집합
SELECT * FROM Table04;

SELECT id3 id, name nc FROM Table03
UNION ALL -- 모든 원소 나옴
SELECT * FROM Table04;

-- alias
SELECT id3 id, name nc FROM Table03
UNION
SELECT * FROM Table04;

-- OUTER JOIN
SELECT * FROM Users;
SELECT * FROM Likes;


SELECT * FROM Table03;
SELECT * FROM Table04;
