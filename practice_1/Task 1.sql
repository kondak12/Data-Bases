USE `seschool_09`;


CREATE TABLE `MonsterIncEmployees` (
	`EmployeeID` BIGINT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`MonsterName` VARCHAR(75) NOT NULL,
	`Type` VARCHAR NOT NULL DEFAULT 'Монстр',
	`Department` VARCHAR(100) NOT NULL DEFAULT 'Нулевой отдел',
	`MonsterColor` VARCHAR(50) NOT NULL
);



ALTER TABLE `MonsterIncEmployees`
	DROP COLUMN `MonsterColor`,
	ADD COLUMN `ScareLevel` INT UNSIGNED CHECK(`ScareLevel` BETWEEN 1 AND 10);



INSERT INTO `MonsterIncEmployees` (`MonsterName`, `Type`, `Department`, `ScareLevel`) VALUES
		('Mike Wazowski', 1, 'Отдел пуганий', 7),
		('James P. Sullivan', 'Пугало', 'Отдел пуганий', 10),
		('Randall Boggs', 'Пугало', 'Отдел пуганий', 8),
		('Celia Mae', 'Администратор', 'Отдел поддержки', 3),
		('Roz', 'Администратор', 'Отдел документации', 2),
		('George Sanderson', 'Пугало', 'Отдел пуганий', 5),
		('Henry J. Waternoose', 'Администратор', 'Управление', 4),
		('Fungus', 'Помощник', 'Отдел пуганий', 6),
		('Needleman', 'Помощник', 'Отдел документации', 4),
		('Smitty', 'Помощник', 'Отдел поддержки', 5);