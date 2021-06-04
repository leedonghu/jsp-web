-- DATA TYPE

-- NUMBER
-- INT, DECIMAL
CREATE TABLE MyTable3
(
Col1 int,
Col2 DECIMAL
);
DESC MyTable3;
INSERT INTO MyTable3
(Col1, Col2)
VALUES
(55, 3.14);

CREATE TABLE MyTable4
(
Col1 DECIMAL,
Col2 DECIMAL(10,2),
Col3 DECIMAL(3,1)
);
-- 괄호 안의 첫 번째 숫자는 총 자릿수, 뒤에 있는 숫자는 소수점 자릿수

INSERT into MyTable4
(Col1, Col2, Col3)
VALUES
(3.14, 3.14, 3.14);

SELECT * FROM MyTable4;

INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES
(333.14, 333.14, 33.1);

-- CHAR(STRING)

CREATE TABLE MyTable5
(
Col1 CHAR(5), -- 고정 자리수
Col2 VARCHAR(5)  -- 가변 자리수
);

INSERT into MyTable5
(Col1, Col2)
VALUES
('ABC ', 'ABC');

INSERT into MyTable5
(Col1, Col2)
VALUES
('ABC E', 'ABC E');

INSERT into MyTable5
(Col1, Col2)
VALUES
('ABCDEF', 'ABCDEF');

SELECT * FROM MyTable5;

CREATE TABLE Friends
(
LastName varchar(100),
FirstName varchar(100),
Age INT,
City VARCHAR(100),
Country VARCHAR(100)
);

SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH';
SET sql_mode = '';


-- DATE, DATETIME

CREATE TABLE MyTable6
(
Col1 DATE,
Col2 DATETIME,
Col3 TIMESTAMP

);

INSERT INTO MyTable6
(Col1, Col2, Col3)
VALUES
('2021-06-02', '2021-06-02 11:07:30', '2021-06-02 11:08:30');

SELECT * FROM MyTable6;




