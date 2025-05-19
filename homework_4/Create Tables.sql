USE `seschool_09`;


CREATE TABLE `Students` (
	`student_id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	`first_name` VARCHAR(50) NOT NULL,
	`last_name` VARCHAR(50) NOT NULL,
	`enrollment_year` INT NOT NULL
);


CREATE TABLE `Courses` (
	`course_id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	`course_name` VARCHAR(100) NOT NULL,
	`instructor` VARCHAR(50) NOT NULL,
	`credit_hours` INT NOT NULL
);


CREATE TABLE `Enrollments` (
	`enrollment_id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	`student_id` INT UNSIGNED,
	`course_id` INT UNSIGNED,
	`grade` VARCHAR(1),
	FOREIGN KEY (`student_id`)
	REFERENCES `Students`(`student_id`),
	FOREIGN KEY (`course_id`)
	REFERENCES `Courses`(`course_id`)
);


-- Заполнение таблицы Students
INSERT INTO `Students` (`student_id`, `first_name`, `last_name`, `enrollment_year`) VALUES
(1, 'Alice', 'Smith', 2022),
(2, 'Bob', 'Johnson', 2021),
(3, 'Charlie', 'Williams', 2020),
(4, 'David', 'Brown', 2022),
(5, 'Eva', 'Davis', 2023);

-- Заполнение таблицы Courses
INSERT INTO `Courses` (`course_id`, `course_name`, `instructor`, `credit_hours`) VALUES
(101, 'Mathematics', 'Dr. Smith', 3),
(102, 'Physics', 'Dr. Brown', 4),
(103, 'Chemistry', 'Dr. White', 3),
(104, 'Biology', 'Dr. Green', 4),
(105, 'History', 'Dr. Black', 2);

-- Заполнение таблицы Enrollments
INSERT INTO `Enrollments` (`enrollment_id`, `student_id`, `course_id`, `grade`) VALUES
(1, 1, 101, 'A'),
(2, 1, 102, 'B'),
(3, 2, 101, 'C'),
(4, 2, 103, 'B'),
(5, 3, 104, 'A'),
(6, 3, 105, 'B'),
(7, 4, 101, 'A'),
(8, 4, 103, 'A'),
(9, 5, 102, 'B'),
(10, 5, 104, 'C');