SELECT name FROM Student WHERE id=v1;
SELECT * FROM Student WHERE id BETWEEN v2 AND v3;
SELECT Student.name FROM Student WHERE EXISTS (SELECT 1 FROM Transcript INNER JOIN Course ON Transcript.crsCode = 768 WHERE Student.id = Transcript.studId);

###Done By Alec####
SELECT s.name FROM Student as s, Professor as p, Teaching as tc, Transcript as tr WHERE p.name = "Joany Yost" AND p.id = tc.profId AND tc.crsCode = tr.crsCode AND tr.studId = s.id;
SELECT DISTINCT(s.name), c.deptId
FROM Student as s, Course as c, Transcript as t
WHERE c.deptId = 47
AND t.crsCode = c.crsCode
AND t.studId = s.id
AND t.studId NOT IN (
SELECT DISTINCT(s.id)
FROM Student as s, Course as c, Transcript as t
WHERE c.deptId = 20
AND t.crsCode = c.crsCode
AND t.studId = s.id
)