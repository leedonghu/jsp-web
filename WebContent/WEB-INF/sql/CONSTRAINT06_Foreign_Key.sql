CREATE TABLE MyTable17
(
id VARCHAR(255) PRIMARY KEY,
name VARCHAR(255) NOT NULL

);

DROP TABLE MyTable18;
CREATE TABLE MyTable18
(
id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(255) NOT NULL,
t17Id VARCHAR(255) NOT NULL,
FOREIGN KEY(t17Id) REFERENCES MyTable17(id)
);

INSERT INTO MyTable17
(id, name)
VALUES
('good', 'better');

INSERT INTO MyTable18
(title, t17Id)
VALUES
('best', 'good'); -- t17Id는 테이블17의 id와 같아야함
INSERT INTO MyTable18
(title, t17Id)
VALUES
('best', 'better'); -- t17Id가 테이블17의 id값과 다르면 입력이 되지 않음
					
                    
DELETE FROM MyTable17
WHERE id = 'good';     -- 삭제할때는 테이블18이 먼저 삭제되어야함       

DELETE FROM MyTable18
WHERE t17Id = 'good';        

SELECT * FROM MyTable17;
SELECT * FROM MyTable18;