-- 1. Show all students
SELECT * FROM students;

-- 2. Show all professors
SELECT * FROM professors;

-- 3. Show all courses
SELECT * FROM courses;

-- 4. Show all enrollments
SELECT * FROM enrollments;

-- 5. Courses with professors
SELECT
c.name AS course,
p.first_name,
p.last_name
FROM courses c
JOIN professors p
ON c.professor_id = p.id;

-- 6. Students with courses
SELECT
s.first_name,
s.last_name,
c.name
FROM enrollments e
JOIN students s
ON e.student_id = s.id
JOIN courses c
ON e.course_id = c.id;

-- 7. Number of students
SELECT COUNT(*) AS total_students
FROM students;

-- 8. Number of professors
SELECT COUNT(*) AS total_professors
FROM professors;

-- 9. Number of courses
SELECT COUNT(*) AS total_courses
FROM courses;

-- 10. Students per course
SELECT
c.name,
COUNT(e.student_id) AS student_count
FROM courses c
LEFT JOIN enrollments e
ON c.id = e.course_id
GROUP BY c.name;

-- 11. Courses taught by each professor
SELECT
p.first_name,
COUNT(c.id) AS total_courses
FROM professors p
LEFT JOIN courses c
ON p.id = c.professor_id
GROUP BY p.first_name;

-- 12. Students not enrolled in any course
SELECT *
FROM students s
WHERE NOT EXISTS (
SELECT 1
FROM enrollments e
WHERE e.student_id = s.id
);

-- 13. Courses with no students
SELECT *
FROM courses c
WHERE NOT EXISTS (
SELECT 1
FROM enrollments e
WHERE e.course_id = c.id
);

-- 14. Students ordered alphabetically
SELECT *
FROM students
ORDER BY first_name;

-- 15. Most popular course
SELECT
c.name,
COUNT(e.student_id) AS enrollments
FROM courses c
LEFT JOIN enrollments e
ON c.id = e.course_id
GROUP BY c.name
ORDER BY enrollments DESC
LIMIT 1;
-- 1. Show all students
SELECT * FROM students;

-- 2. Show all professors
SELECT * FROM professors;

-- 3. Show all courses
SELECT * FROM courses;

-- 4. Show all enrollments
SELECT * FROM enrollments;

-- 5. Courses with professors
SELECT
c.name AS course,
p.first_name,
p.last_name
FROM courses c
JOIN professors p
ON c.professor_id = p.id;

-- 6. Students with courses
SELECT
s.first_name,
s.last_name,
c.name
FROM enrollments e
JOIN students s
ON e.student_id = s.id
JOIN courses c
ON e.course_id = c.id;

-- 7. Number of students
SELECT COUNT(*) AS total_students
FROM students;

-- 8. Number of professors
SELECT COUNT(*) AS total_professors
FROM professors;

-- 9. Number of courses
SELECT COUNT(*) AS total_courses
FROM courses;

-- 10. Students per course
SELECT
c.name,
COUNT(e.student_id) AS student_count
FROM courses c
LEFT JOIN enrollments e
ON c.id = e.course_id
GROUP BY c.name;

-- 11. Courses taught by each professor
SELECT
p.first_name,
COUNT(c.id) AS total_courses
FROM professors p
LEFT JOIN courses c
ON p.id = c.professor_id
GROUP BY p.first_name;

-- 12. Students not enrolled in any course
SELECT *
FROM students s
WHERE NOT EXISTS (
SELECT 1
FROM enrollments e
WHERE e.student_id = s.id
);

-- 13. Courses with no students
SELECT *
FROM courses c
WHERE NOT EXISTS (
SELECT 1
FROM enrollments e
WHERE e.course_id = c.id
);

-- 14. Students ordered alphabetically
SELECT *
FROM students
ORDER BY first_name;

-- 15. Most popular course
SELECT
c.name,
COUNT(e.student_id) AS enrollments
FROM courses c
LEFT JOIN enrollments e
ON c.id = e.course_id
GROUP BY c.name
ORDER BY enrollments DESC
LIMIT 1;

