USE `seschool_09`;


-- №1
SELECT
	`id`,
	`first_name` AS `Имя`,
	`last_name` AS `Фамилия`,
	`balance` AS `Баланс`,
	`city` AS `Город`
FROM
	`Clients`
WHERE
	`city` = 'Moscow'
	AND `balance` > 5000
ORDER BY
	`balance` DESC
LIMIT 3;


-- №2
SELECT
	`id`,
	`first_name` AS `Имя`,
	`last_name` AS `Фамилия`,
	`balance` AS `Баланс`,
	`is_active` AS `Активность`
FROM
	`Clients`
WHERE 
	`first_name` LIKE 'K%' OR 'P%'
	AND `last_name` LIKE '%a'
	AND `is_active` IS FALSE;



-- №3
SELECT
	`id`,
	`first_name` AS `Имя`,
	`last_name` AS `Фамилия`,
	`balance` AS `Баланс`
FROM
	`Clients`
WHERE
	`balance` > 0
	AND `balance` > `balance`;
-- idk


-- №4
SELECT
	`id`,
	`first_name` AS `Имя`,
	`last_name` AS `Фамилия`,
	`balance` AS `Баланс`,
	`is_active` AS `Активность`
FROM
	`Clients`
WHERE
	`is_active` = FALSE
ORDER BY
	`balance` DESC
LIMIT 1;


-- №5
SELECT
	`id`,
	`first_name` AS `Имя`,
	`last_name` AS `Фамилия`,
	`balance` AS `Баланс`
FROM
	`Clients`
WHERE
	`balance` > 1000
ORDER BY
	`age` ASC
LIMIT 3;


-- №6
SELECT
	`city`
FROM
	`Clients`
WHERE
	`balance` > 10000;