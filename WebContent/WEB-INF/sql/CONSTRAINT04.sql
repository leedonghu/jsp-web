CREATE TABLE MyTable12
(
title VARCHAR(255) not null,
body VARCHAR(255) NOT NULL,
id INT PRIMARY KEY AUTO_INCREMENT
);

-- auto_increment 자동 증가

INSERT INTO MyTable12
(title, body)
VALUES
('good', 'better');

SELECT * FROM MyTable12;