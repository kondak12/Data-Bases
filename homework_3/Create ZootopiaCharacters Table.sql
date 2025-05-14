USE `seschool_09`;


CREATE TABLE `ZootopiaCharacters` (
	`CharacterID` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`CharacterName` VARCHAR(75) UNIQUE NOT NULL,
	`Species` VARCHAR(25) NOT NULL,
	`Role` VARCHAR(50) NOT NULL DEFAULT 'Второстепенный персонаж',
	`Occupation` VARCHAR(100),
	`Catchphrase` VARCHAR(255)
);


INSERT INTO `ZootopiaCharacters` (`CharacterName`, `Species`, `Role`, `Occupation`, `Catchphrase`)
	VALUES ('Judy Hopps', 'Кролик', 'Главный герой', 'Полицейский', 'Сначала попробуй!'),
   ('Nick Wilde', 'Лиса', 'Главный герой', 'Полицейский', 'Скользкий как лиса!'),
   ('Chief Bogo', 'Буйвол', 'Второстепенный персонаж', 'Шеф полиции', NULL),
   ('Bellwether', 'Овца', 'Антагонист', 'Мэр', NULL),
   ('Flash', 'Ленивец', 'Второстепенный персонаж', 'Сотрудник DMV', NULL),
   ('Mr. Big', 'Полярный медведь', 'Второстепенный персонаж', 'Босс мафии', 'Твое слово — мое слово'),
   ('Finnick', 'Лиса', 'Второстепенный персонаж', 'Мошенник', NULL),
   ('Clawhauser', 'Гепард', 'Второстепенный персонаж', 'Сотрудник полиции', 'Добро пожаловать в Зверополис!'),
   ('Duke Weaselton', 'Ласка', 'Второстепенный персонаж', 'Контрабандист', NULL),
   ('Yax', 'Як', 'Второстепенный персонаж', 'Управляющий спа-салоном', NULL);