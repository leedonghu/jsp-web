SELECT LastName, FirstName, Age, City, Country from Friends
WHERE LastName like '김%'
limit 5, 5;

SELECT LastName, FirstName, Age, City, Country from Friends
WHERE LastName like '김%';

INSERT into Friends
(LastName, FirstName, Age, City, Country)
VALUES
('이', '동준', 35, '가평', '대한민국');

INSERT into Friends
(FirstName)
VALUES
('동후');

DESC Friends;


CREATE TABLE Account (
	id VARCHAR(255),
    password VARCHAR(255),
    name VARCHAR(255),
    birth DATE,
    inserted TIMESTAMP
);

