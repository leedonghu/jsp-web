SELECT * FROM Account;
ORDER BY id DESC;

SELECT * FROM Board b JOIN Comment c ON c.boardId = b.id
ORDER BY b.id DESC;

SELECT * FROM Board b LEFT JOIN Comment c ON c.boardId = b.id
ORDER BY b.id DESC;

SELECT b.*, count(c.id) FROM Board b LEFT JOIN Comment c ON c.boardId = b.id
GROUP BY b.id
ORDER BY b.id DESC;

SELECT * FROM Comment;

SELECT b.id boardId, 
        b.title title, 
        m.name name,
        count(c.id) numberOfComment,
       b.inserted 
FROM Board b 
JOIN Member m 
ON b.memberId = m.id  
LEFT JOIN Comment c on b.id=c.boardId
GROUP BY b.id
ORDER BY boardId DESC ;
SELECT count(Board.id) FROM Board;
WHERE memberId ='asd'

SELECT * FROM Comment
WHERE memberId ='asd';

SELECT m.*, COUNT(DISTINCT b.id), count(DISTINCT c.id) FROM Member m LEFT JOIN Board b ON m.id = b.memberId
LEFT JOIN Comment c on m.id = c.memberId
WHERE m.id = 'asd';

SELECT m.*, COUNT(b.id), count(c.id) FROM Member m LEFT JOIN Board b ON m.id = b.memberId
LEFT JOIN Comment c on m.id = c.memberId
WHERE m.id = 'asd';

SELECT m.*, count(b.id), count(c.id) FROM Member m RIGHT JOIN Board b ON m.id = b.memberId LEFT JOIN Comment c on m.id = c.memberId;
WHERE m.id = 'asd';

SELECT m.*, count(c.id) FROM Member m LEFT JOIN Comment c ON m.id = c.memberId 
WHERE m.id = c.memberId
;
CREATE TABLE Fruit
(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
price INT not null,
amount INT DEFAULT 50 
);

INSERT INTO Fruit
(name, price)
VALUES
('watermelon', 2700);

SELECT * FROM Fruit
LIMIT 5*(1-1), 5;

