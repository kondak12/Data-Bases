USE `seschool_09`;


CREATE TABLE `books_table`(
	`Name` VARCHAR(64) NOT NULL PRIMARY KEY,
	`Author` VARCHAR(64),
	`Year` INT UNSIGNED,
	`Reader` VARCHAR(64)
);

INSERT INTO `books_table`(`Name`, `Author`, `Year`, `Reader`) VALUES
	('Война и мир', 'Толстой Л.Н.', 1990, 'Сидоров И.Д.'),
	('Капитанская дочка', 'Пушкин А.С.', 2004, 'Дмитриев С.Л.');

INSERT INTO `books_table`(`Name`, `Author`, `Year`) VALUES
	('Горе от ума', 'Грибоедов А.С.', 2012);

ALTER TABLE `books_table` ADD `Publisher` VARCHAR(64);

ALTER TABLE `books_table` MODIFY `Publisher` VARCHAR(64) DEFAULT 'Художественная литература';

INSERT INTO `books_table` (`Name`, `Author`, `Year`, `Reader`) VALUES
	('Три сестры', 'Чехов А.П.', 2000, 'Малинин Д.С.');

UPDATE `books_table`
	SET `Reader` = 'Иванов А.В.',
	`Publisher` = 'Русская литература'
	WHERE `Name` = 'Горе от ума';

DELETE FROM `books_table`
	WHERE Name = 'Война и мир';

DELETE FROM `books_table`;

DROP TABLE `books_table`;