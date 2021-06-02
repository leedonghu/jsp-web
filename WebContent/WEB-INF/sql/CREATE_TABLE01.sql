CREATE TABLE MyTable1 (
	Col1 INT
);
SELECT * FROM MyTable1;
DESC MyTable1;

INSERT into MyTable1
(Col1)
VALUES (888);

DELETE FROM MyTable1
WHERE Col1 = 999;

CREATE TABLE MyTable2 (
	Col1 int, 
    Col2 int
);

DESC MyTable2;

INSERT INTO MyTable2
(Col1, Col2)
VALUES
(987, 654);
SELECT * FROM MyTable2;
