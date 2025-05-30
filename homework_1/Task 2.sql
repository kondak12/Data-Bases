USE `seschool_09`;


CREATE TABLE `Clients`(
	`id`            BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	`first_name`	VARCHAR(50) NOT NULL,
	`last_name` 	VARCHAR(50) NOT NULL,
	`city` 		VARCHAR(50) NOT NULL,
	`age` 		INT UNSIGNED NOT NULL,
	`balance` 	FLOAT DEFAULT 0.00,
	`is_active` 	BOOL DEFAULT FALSE
);


INSERT INTO `Clients`
	(`first_name`, `last_name`, `city`, `age`, `balance`, `is_active`)
VALUES
	('Ivan', 	'Ivanov',	'Moscow', 		34,	15200.50, 	TRUE),
	('Anna', 	'Petrova', 	'SaintPetersburg',	28,	8700.00, 	FALSE),
	('Olga', 	'Sidorova', 	'Novosibirsk', 		45,	21200.00, 	TRUE),
	('Sergey',  	'Kuznetsov',	'Moscow', 		31,	350.00, 	FALSE),
	('Maria', 	'Smirnova', 	'Kazan', 		22,	4200.00, 	TRUE),
	('Dmitry',  	'Popov', 	'Moscow', 		40,	0.00, 		TRUE),
	('Alexey',  	'Lebedev', 	'Omsk', 		50,	10800.00,	FALSE),
	('Elena',   	'Morozova', 	'Kazan', 		38,	18750.00, 	TRUE),
	('Victor',  	'Soloviev', 	'Perm', 		27,	6400.00, 	TRUE),
	('Ekaterina',	'Volkova', 	'Moscow', 		29,	9900.00, 	FALSE);
