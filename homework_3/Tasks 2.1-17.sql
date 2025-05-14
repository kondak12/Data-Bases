USE `seschool_09`;


-- №2.1
SELECT `CharacterName`, `Occupation` FROM `ZootopiaCharacters`;


-- №2.2
SELECT `CharacterName` FROM `ZootopiaCharacters`
	WHERE `Species` = 'Лиса';


-- №2.3
SELECT `CharacterName` FROM `ZootopiaCharacters`
	WHERE `Species` IN ('Буйвол', 'Кролик');


-- №2.4
SELECT `CharacterName` FROM `ZootopiaCharacters`
	WHERE `Occupation` IS NOT NULL
	ORDER BY `Occupation` ASC
	LIMIT 3;


-- №2.5
SELECT DISTINCT `Occupation` FROM `ZootopiaCharacters`
	ORDER BY `Role` DESC;


-- №2.6
SELECT `CharacterName` FROM `ZootopiaCharacters`
	WHERE `CharacterName` LIKE '%a%'
	ORDER BY `CharacterName` DESC;


-- №2.7
SELECT DISTINCT `Role` FROM `ZootopiaCharacters`
	ORDER BY `Role` ASC;


-- №2.8
SELECT `CharacterName` FROM `ZootopiaCharacters`
	WHERE `Catchphrase` IS NOT NULL
	ORDER BY `CharacterName` ASC
	LIMIT 5;


-- №2.9
SELECT `CharacterName` FROM `ZootopiaCharacters`
	WHERE `Species` = 'Кролик'
	LIMIT 1
	OFFSET 2;


-- №2.10
SELECT COUNT(*) AS `Количество персонажей` FROM `ZootopiaCharacters`;


-- №2.10
SELECT COUNT(*) AS `Количество персонажей` FROM `ZootopiaCharacters`
	GROUP BY `Role`;


-- №2.11
SELECT COUNT(*) AS `Количество` FROM `ZootopiaCharacters`
	GROUP BY `Occupation`;


-- №2.12
SELECT `Occupation` AS `Профессия`, COUNT(*) AS `Количество` FROM `ZootopiaCharacters`
	GROUP BY `Occupation`
	ORDER BY `Количество` DESC;


-- №2.13
SELECT `Species` AS `Вид`, COUNT(*) AS `Количество главных героев` FROM `ZootopiaCharacters`
	WHERE `Role` = 'Главный герой'
	GROUP BY `Species`;


-- №2.14
SELECT `CharacterName`, `Occupation` FROM `ZootopiaCharacters`
	GROUP BY `Occupation`
	HAVING COUNT(`Occupation`) = 1;


-- №2.15
SELECT `CharacterName` FROM `ZootopiaCharacters`
	GROUP BY `Occupation`
	HAVING `Occupation` IS NOT NULL
	ORDER BY `CharacterName` ASC
	LIMIT 5
	OFFSET 5;


-- №2.16
SELECT `Occupation`, COUNT(*) AS `Количество` FROM `ZootopiaCharacters`
	GROUP BY `Occupation`
	HAVING COUNT(*) > 1
	ORDER BY `Occupation` ASC;


-- №2.17
SELECT `Species`, `Occupation`, COUNT(*) AS `Количество` FROM `ZootopiaCharacters`
	GROUP BY `Species`
	HAVING `Occupation`
	ORDER BY COUNT(*) DESC
	LIMIT 3;