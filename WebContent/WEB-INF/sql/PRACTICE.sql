SELECT LastName, FirstName, Age, City, Country from Friends
WHERE LastName like '김%';


SELECT LastName, FirstName, Age, City, Country from Friends;

WHERE LastName like '이%'

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

CREATE TABLE Account
(
id VARCHAR(255) PRIMARY KEY,
name VARCHAR(255) not NULL,
password VARCHAR(255) NOT NULL,
mobileNum VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
address VARCHAR(255) NOT NULL,
birth DATE NOT NULL

);

SELECT * FROM Account;
DESC Account;
SELECT * FROM Board;

SELECT * FROM Member;
DESC Board;

ALTER TABLE Board
ADD FOREIGN KEY (memberId)
REFERENCES Member(id);

SELECT id, title, memberId, inserted
from Board
where title = '가나다라';

CREATE TABLE Auto
(
a INT PRIMARY KEY AUTO_INCREMENT,
b int AUTO_INCREMENT,
c VARCHAR(255)
);

