USE `seschool_09`;


-- №1
SELECT
	`Фамилия` AS `Студентки`
FROM
	`students_table`
WHERE
	`Пол` = 'ж';


-- №2
SELECT
	`Фамилия` AS `Студентов третьего курса`
FROM
	`students_table`
WHERE
	`Курс` = 3;


-- №3
SELECT
	`Фамилия` AS `Студенты, родившиеся позже 1994-02-03`
FROM
	`students_table`
WHERE
	`Дата рождения` > '1994-02-03';


-- №4
SELECT
	`Фамилия` AS `Студенты со сред. баллом >70 и <85`
FROM
	`students_table`
WHERE
	`Средний балл` BETWEEN 70 AND 85;


SELECT
	`Фамилия` AS `Студенты со сред. баллом >70 и <85`
FROM
	`students_table`
WHERE
	`Средний балл` >= 70
	AND `Средний балл` <= 85;


-- №5
SELECT
	`Фамилия` AS `Студенты 2 и 3 курса`
FROM
	`students_table`
WHERE
	`Курс` IN (2, 3);


SELECT
	`Фамилия` AS `Студенты 2 и 3 курса` FROM `students_table`
WHERE 
	`Курс` = 2
	OR `Курс` = 3;


-- №6
SELECT
	`Фамилия` AS `Студенты с началом фамилии на 'С' и 'К'`
FROM
	`students_table`
WHERE
	`Фамилия` LIKE 'С%'
	OR `Фамилия` LIKE 'К%';


-- №7
SELECT
	`Фамилия` AS `Студентки групп АУС`
FROM
	`students_table`
WHERE
	`Пол` = 'ж'
	AND `Группа` LIKE 'АУС%';


-- №8
SELECT
	`Фамилия` AS `Студенты без хобби` 
FROM 
	`students_table`
WHERE 
	`Хобби` IS NULL;


-- №9
SELECT DISTINCT
	`Курс` 
FROM 
	`students_table`;


-- №10
SELECT
	`Фамилия` AS `ТОП 5 студентов с наивысшим сред. баллом`
FROM
	`students_table`
ORDER BY 
	`Средний балл` DESC
LIMIT 5;


-- №11
SELECT 
	`Фамилия` AS `ТОП 10 студентов с наименьшим сред. баллом`
FROM
	`students_table`
ORDER BY
	`Средний балл` ASC,
	`Фамилия` ASC
LIMIT 10;


-- №12
SELECT
	COUNT(*) AS `Число всех студентов`,
	COUNT(*) - COUNT(`Хобби`) AS `Число студентов без хобби`,
	MAX(`Средний балл`) AS `Максимальный средний балл`,
	MIN(`Средний балл`) AS `Минимальный средний балл`,
	SUM(`Средний балл`) / COUNT(`Средний балл`) AS `Среднее значение всех средних баллов`
FROM
	`students_table`;


-- №13
SELECT
	`Курс`,
	COUNT(*) AS `Количество человек`
FROM
	`students_table`
GROUP BY
	`Курс`;


-- №14
SELECT
	`Пол`,
	COUNT(*) AS `Количество человек`
FROM
	`students_table`
GROUP BY
	`Пол`;


-- №15
SELECT
	MAX(`Средний балл`) AS `Макс. средний балл`
FROM
	`students_table`
WHERE
	`Курс` = 3
	AND `Дата рождения` >= 1993-01-01;


-- №16
SELECT
	`Фамилия`,
	`Средний балл`,
	CASE
		WHEN `Средний балл` BETWEEN 81 AND 100 THEN 'Отлично'
		WHEN `Средний балл` BETWEEN 61 AND 80 THEN 'Хорошо'
		WHEN `Средний балл` BETWEEN 41 AND 60 THEN 'Удовлетворительно'
		ELSE 'Неудовлетворительно'
	END AS `Оценка`
FROM
	`students_table`;