USE `seschool_09`;


-- №1
SELECT
	`id`,
	`first_name` AS `Имя`,
	`last_name` AS `Фамилия`,
	`balance` AS `Баланс`
FROM
	`Clients`
ORDER BY
	`balance` DESC;


-- №2
SELECT
	`id`,
	`first_name` AS `Имя`,
	`last_name` AS `Фамилия`,
	`balance` AS `Баланс`
FROM
	`Clients`
ORDER BY
	`balance` DESC
LIMIT 3;


-- №3
SELECT
	`id`,
	`first_name` AS `Имя`,
	`last_name` AS `Фамилия`,
	`balance` AS `Баланс`
FROM
	`Clients`
ORDER BY
	`balance` DESC
LIMIT 2
OFFSET 2;


-- №4
SELECT
	DISTINCT `city`
FROM
	`Clients`;


-- №5
SELECT
	`id`,
	`first_name` AS `Имя`,
	`last_name` AS `Фамилия`,
	`balance` AS `Баланс`,
	`is_active` AS `Активность`
FROM
	`Clients`
WHERE
	`balance` > 10000
	AND `is_active` = TRUE;


-- №6
SELECT
	`id`,
	`first_name` AS `Имя`,
	`last_name` AS `Фамилия`
FROM
	`Clients`
WHERE
	`first_name` LIKE 'E%';