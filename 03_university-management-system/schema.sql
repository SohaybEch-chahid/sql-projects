CREATE TABLE students (
id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100) UNIQUE
);

CREATE TABLE professors (
id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
department VARCHAR(100)
);

CREATE TABLE courses (
id SERIAL PRIMARY KEY,
name VARCHAR(100),
professor_id INT REFERENCES professors(id)
);

CREATE TABLE enrollments (
student_id INT REFERENCES students(id),
course_id INT REFERENCES courses(id),
enrollment_date DATE DEFAULT CURRENT_DATE,
PRIMARY KEY (student_id, course_id)
);
