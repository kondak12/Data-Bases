USE `seschool_09`;


-- №1
SELECT `first_name`, `last_name` FROM `Students`
	WHERE `enrollment_year` = 2022;


-- №2
SELECT `course_name`, `credit_hours` FROM `Courses`
	WHERE `instructor` = 'Dr. Smith';


-- №3
SELECT `first_name`, `last_name` FROM `Students`
	INNER JOIN `Enrollments` ON (`Students`.`student_id` = `Enrollments`.`student_id`)
	INNER JOIN `Courses` ON (`Courses`.`course_id` = `Enrollments`.`course_id`)
	WHERE `Courses`.`course_name` = 'Mathematics';


-- №4
SELECT COUNT(*) AS `Количество` FROM `Students`
	INNER JOIN `Enrollments` ON (`Students`.`student_id` = `Enrollments`.`student_id`)
	INNER JOIN `Courses` ON (`Courses`.`course_id` = `Enrollments`.`course_id`)
	WHERE `Courses`.`course_name` = 'Physics';


-- №5
SELECT `Courses`.`course_name` AS `Название курса` FROM `Students`
	INNER JOIN `Enrollments` ON (`Students`.`student_id` = `Enrollments`.`student_id`)
	INNER JOIN `Courses` ON (`Courses`.`course_id` = `Enrollments`.`course_id`)
	WHERE `Students`.`last_name` = 'Johnson';


-- №6
SELECT `first_name`, `last_name`, `Courses`.`course_name`, `Enrollments`.`grade` FROM `Students`
	INNER JOIN `Enrollments` ON (`Students`.`student_id` = `Enrollments`.`student_id`)
	INNER JOIN `Courses` ON (`Courses`.`course_id` = `Enrollments`.`course_id`);

-- №7
SELECT DISTINCT `Courses`.`course_name` AS `Название курса`, `Courses`.`instructor` FROM `Students`
	INNER JOIN `Enrollments` ON (`Students`.`student_id` = `Enrollments`.`student_id`)
	INNER JOIN `Courses` ON (`Courses`.`course_id` = `Enrollments`.`course_id`)
	WHERE `Courses`.`credit_hours` > 3;