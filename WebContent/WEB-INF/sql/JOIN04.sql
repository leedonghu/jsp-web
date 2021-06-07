-- 게시물을 작성하지 않은 Member 의 id, name를 나열
SELECT m.id, m.name
FROM Member m LEFT JOIN Board b on m.id = b.memberId
WHERE b.id is NULL;

SELECT m.id, m.name
FROM Board b RIGHT JOIN Member m on b.memberId = m.id
where b.memberId is null;


SELECT * FROM Member;
SELECT * FROM Board;