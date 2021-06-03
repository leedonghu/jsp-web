DESC Member;
SELECT * FROM Member;
ALTER TABLE Member
add PRIMARY KEY(id);

ALTER TABLE Member
MODIFY inserted TIMESTAMP not null DEFAULT NOW();

INSERT INTO Member
(id, password, name, birth)
VALUES
(1, 'better', 'best', '2021-06-03');