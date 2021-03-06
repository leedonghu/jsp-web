-- ALTER TABLE

CREATE TABLE MyTable16
(
id INT,
title VARCHAR(255),
body VARCHAR(255)
);
INSERT INTO MyTable16
(id, title, body)
VALUES
(1, 'GOOD', 'BETTER');

-- add column
ALTER TABLE MyTable16
ADD inserted TIMESTAMP;

-- drop column
ALTER TABLE MyTable16
DROP COLUMN inserted;

-- modify column
ALTER TABLE MyTable16
MODIFY COLUMN body VARCHAR(1023);

-- ADD NOT NULL
ALTER TABLE MyTable16
MODIFY title VARCHAR(255) NOT NULL;

ALTER TABLE MyTable16
MODIFY body VARCHAR(1023) NOT NULL;

-- ADD UNIQUE
ALTER TABLE MyTable16
ADD UNIQUE (id);

-- add primary ket
ALTER TABLE MyTable16
add PRIMARY KEY (id);

SELECT * FROM MyTable16;
DESC MyTable16;

ALTER TABLE MyTable16
DROP PRIMARY KEY;

-- add auto_increment
ALTER TABLE MyTable16
MODIFY id INT AUTO_INCREMENT