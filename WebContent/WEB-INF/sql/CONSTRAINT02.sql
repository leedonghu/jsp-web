CREATE TABLE MyTable9
(
id int UNIQUE,
name VARCHAR(255)
);

INSERT INTO MyTable9
(id, name)
VALUES
(3, 'good');

INSERT INTO MyTable9
(id, name)
VALUES
(4, 'good');

INSERT INTO MyTable9
(name)
VALUES
('better');

select * from MyTable9;

drop table MyTable10;
CREATE TABLE MyTable10
(
id int UNIQUE not null,
name VARCHAR(255) not null
);

INSERT INTO MyTable10
(id)
VALUES
(1);


-- null

SELECT* from MyTable9
where id = 3;

SELECT* from MyTable9
where id is null; -- id 가 null인 로우들

SELECT* from MyTable9
where id is NOT NULL;-- id가 null이 아닌 로우들

-- IFNULL
SELECT ifnull(id, 0), name FROM MyTable9;

CREATE TABLE MyTable10
(
id INT UNIQUE NOT null,
name VARCHAR(255) NOT NULL
);