
###Done By Sahil####
SELECT Student.name FROM Student  WHERE Student.id = v1;
SELECT Student.name FROM Student WHERE Student.id BETWEEN v2 AND v3;
SET @courseid = 738; SELECT s.name FROM Student as s, Course as c, Transcript as t WHERE c.crsCode = @courseId AND t.crsCode = @courseId AND t.studId = s.id

####Done By Alec####
#Query 4 can't be optimized, but some indices can be added to speed things up:
#ALTER TABLE `Professor` ADD INDEX `professor_name` (`name`);
#ALTER TABLE `Student` ADD INDEX `student_id_name` (`id`,`name`);
#ALTER TABLE `Teaching` ADD INDEX `teaching_profid` (`profId`);
#ALTER TABLE `Transcript` ADD INDEX `transcript_crscode` (`crsCode`);

#The only way that I can think to optimize query 5 would be to add some more indices as in the last question