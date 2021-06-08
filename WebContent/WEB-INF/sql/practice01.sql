CREATE TABLE Fruit
(
name VARCHAR(255) PRIMARY KEY,
price INT,
amount INT DEFAULT 50
);

drop TABLE ab;



SELECT * FROM Fruit;

INSERT INTO Fruit
(name, price)
VALUES
('avocado', 3000);
SELECT * FROM Account;