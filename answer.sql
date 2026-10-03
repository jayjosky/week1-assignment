SELECT checkNumber, paymentDate, amount
FROM payments;

SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;

SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

SELECT *
```sql
-- ==========================================
-- WEEK 1 ASSIGNMENT
-- SCHOOL MANAGEMENT DATABASE
-- ==========================================

-- 1. Create the database
CREATE DATABASE school_management;

-- 2. Select the database
USE school_management;

-- 3. Create the teachers table
CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20)
);

-- 4. Create the classes table
CREATE TABLE classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL,
    room_number VARCHAR(20),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

-- 5. Create the students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    gender VARCHAR(10),
    email VARCHAR(100) UNIQUE,
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES classes(class_id)
);

-- 6. Create the enrollments table
CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    class_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (class_id) REFERENCES classes(class_id)
);

-- 7. Insert sample teachers
INSERT INTO teachers (first_name, last_name, email, phone)
VALUES
('John', 'Kamau', 'john@example.com', '0712345678'),
('Mary', 'Achieng', 'mary@example.com', '0723456789'),
('Peter', 'Otieno', 'peter@example.com', '0734567890');

-- 8. Insert sample classes
INSERT INTO classes (class_name, room_number, teacher_id)
VALUES
('Grade 7', 'Room 101', 1),
('Grade 8', 'Room 102', 2),
('Grade 9', 'Room 103', 3);

-- 9. Insert sample students
INSERT INTO students
(first_name, last_name, date_of_birth, gender, email, class_id)
VALUES
('James', 'Mwangi', '2010-05-12', 'Male', 'james@example.com', 1),
('Sarah', 'Wanjiku', '2011-08-20', 'Female', 'sarah@example.com', 2),
('David', 'Otieno', '2009-03-15', 'Male', 'david@example.com', 3);

-- 10. Insert sample enrollments
INSERT INTO enrollments (student_id, class_id, enrollment_date)
VALUES
(1, 1, '2026-01-10'),
(2, 2, '2026-01-10'),
(3, 3, '2026-01-10');

-- 11. Display all teachers
SELECT * FROM teachers;

-- 12. Display all classes
SELECT * FROM classes;

-- 13. Display all students
SELECT * FROM students;

-- 14. Display all enrollments
SELECT * FROM enrollments;

-- 15. Display database tables
SHOW TABLES;
```
