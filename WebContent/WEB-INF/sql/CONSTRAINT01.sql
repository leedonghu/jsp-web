select * from Member;

CREATE TABLE MyTable7
(
id int,
name VARCHAR(255)
);

SELECT * from MyTable7;

INSERT INTO MyTable7
(id, name)
VALUES
(3, 'hello');

INSERT INTO MyTable7
(id)
VALUES
(4);

INSERT INTO MyTable7
(name)
VALUES
('good');

-- NOT NULL
DROP TABLE MyTable8;
CREATE TABLE MyTable8
(
id INT not null,
name VARCHAR(255) NOT NULL

);
SELECT * from MyTable8;

INSERT INTO MyTable8
(id, name)
VALUES
(3, 'best');

INSERT INTO MyTable8
(id)
VALUES
(4);-- x

INSERT INTO MyTable8
(name)
VALUES
('better'); -- x

DESC MyTable8;
