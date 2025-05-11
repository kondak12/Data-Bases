USE `seschool_09`;


-- №1
SELECT
	`id`,
	`first_name` AS `Имя`,
	`last_name` AS `Фамилия`,
	`balance` AS `Баланс`
FROM
	`Clients`
WHERE
	`balance` = 0;


-- №2
SELECT
	`id`,
	`first_name` AS `Имя`,
	`last_name` AS `Фамилия`,
	`city` AS `Город`
FROM
	`Clients`
WHERE
	`city` != 'Moscow';


-- №3
SELECT
	`id`,
	`first_name` AS `Имя`,
	`last_name` AS `Фамилия`,
	`balance` AS `Баланс`,
	`is_active` AS `Активность`
FROM
	`Clients`
ORDER BY `is_active` DESC, `balance` DESC;


-- №4
SELECT
	`id`,
	`first_name` AS `Имя`,
	`last_name` AS `Фамилия`,
	`balance` AS `Баланс`,
	`city` AS `Город`
FROM
	`Clients`
WHERE
	`city` IN ('SaintPetersburg', 'Novosibirsk')
	AND `balance` > 8000;



-- №5
SELECT
	`id`,
	`first_name` AS `Имя`,
	`last_name` AS `Фамилия`,
	`age` AS `Возраст`,
	`balance` AS `Баланс`
FROM
	`Clients`
ORDER BY `age` DESC
LIMIT 5;


-- №6
SELECT
	`id`,
	`first_name` AS `Имя`,
	`last_name` AS `Фамилия`,
	`age` AS `Возраст`,
	`balance` AS `Баланс`
FROM
	`Clients`
WHERE
	`age` > 30
ORDER BY `last_name`;


-- №7
SELECT
	`id`,
	`first_name` AS `Имя`,
	`last_name` AS `Фамилия`,
	`balance` AS `Баланс`,
	`age` AS `Возраст`,
	`is_active` AS `Активность`
FROM
	`Clients`
WHERE
	`is_active` IS FALSE
	AND `balance` < 5000
ORDER BY `age` DESC;