INSERT INTO students
(first_name,last_name,email)
VALUES
('Ahmed','Ali','[ahmed@uni.com](mailto:ahmed@uni.com)'),
('Sara','Karim','[sara@uni.com](mailto:sara@uni.com)'),
('Youssef','Brahim','[youssef@uni.com](mailto:youssef@uni.com)');

INSERT INTO professors
(first_name,last_name,department)
VALUES
('John','Smith','Computer Science'),
('Alice','Brown','Mathematics');

INSERT INTO courses
(name,professor_id)
VALUES
('Database Systems',1),
('Algorithms',1),
('Calculus',2);

INSERT INTO enrollments
(student_id,course_id)
VALUES
(1,1),
(1,2),
(2,1),
(3,3);

