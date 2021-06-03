-- DEFAULT

CREATE TABLE MyTable13
(
id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(255) NOT NULL,
body VARCHAR(255) NOT NULL,
inserted TIMESTAMP
);

INSERT INTO MyTable13
(title, body, inserted)
VALUES
('title1', 'body1', now());

SELECT * FROM MyTable13;

CREATE TABLE MyTable14
(
id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(255) not null,
body VARCHAR(255) NOT NULL,
inserted TIMESTAMP DEFAULT NOW()
);

INSERT INTO MyTable14
(title, body)
VALUES
('title1', 'body1');

SELECT * FROM MyTable15;

CREATE TABLE MyTable15
(
id INT DEFAULT 10,
title VARCHAR(255) DEFAULT 'hello'

);
INSERT INTO MyTable15
(id)
VALUES
(30);
INSERT INTO MyTable15
(title)
VALUES
('good');

