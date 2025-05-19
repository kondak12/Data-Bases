USE `seschool_09`;


-- №1
SELECT `Users`.`ID_user` FROM `Users`
	INNER JOIN `Orders` ON (`Users`.`ID_user` = `Orders`.`ID_user`)
	INNER JOIN `Reports` ON (`Users`.`ID_user` = `Reports`.`ID_user`)
	WHERE `Reports`.`rate` > 4;


-- №2
SELECT `Users`.`ID_user`, `Users`.`age` FROM `Users`
	INNER JOIN `Orders` ON (`Users`.`ID_user` = `Orders`.`ID_user`)
	WHERE `Order`.`sum_order` > 1000
GROUP BY `Users`.`ID_user`;


-- №3
SELECT `Orders`.`ID_order`, `Users`.`name` FROM `Users`
	INNER JOIN `Orders` ON (`Users`.`ID_user` = `Orders`.`ID_user`);


-- №4
SELECT `Users`.`name`, `Users`.`country` FROM `Users`
	INNER JOIN `Reports` ON (`Users`.`ID_user` = `Reports`.`ID_user`)
GROUP BY `Users`.`ID_user`
	HAVING COUNT(`Reports`.`rate`) > 1;


-- №5
SELECT `Orders`.`ID_order` FROM `Users`
	INNER JOIN `Reports` ON (`Users`.`ID_user` = `Reports`.`ID_user`)
GROUP BY `Reports`.`ID_report`
	HAVING `Reports`.`rate` < 3;


-- №6
SELECT `Users`.`ID_user`, `Reports`.`report_text` FROM `Users`
	INNER JOIN `Orders` ON (`Users`.`ID_user` = `Orders`.`ID_user`)
	INNER JOIN `Reports` ON (`Users`.`ID_user` = `Reports`.`ID_user`)
GROUP BY `Users`.`ID_user`
	HAVING `Orders`.`date_order` > '2024-09-02';


-- №7
SELECT AVG(`Orders`.`price`) FROM `Users`
	INNER JOIN `Orders` ON (`Users`.`ID_user` = `Orders`.`ID_user`)
GROUP BY `Users`.`ID_user`;


-- №8
SELECT `Users`.`ID_user` FROM `Users`
	INNER JOIN `Orders` ON (`Users`.`ID_user` = `Orders`.`ID_user`)
	INNER JOIN `Reports` ON (`Users`.`ID_user` = `Reports`.`ID_user`)
	WHERE `Users`.`country` = 'Россия'
<<<<<<< HEAD
GROUP BY `Users`.`ID_user`
=======
	GROUP BY `Users`.`ID_user`
>>>>>>> 1072d5b4bbb0d7c55652874ab70deea0ce5ecd8b
	HAVING `Reports`.`rate` > 3;


-- №9
SELECT `Users`.`name` FROM `Users`
<<<<<<< HEAD
	LEFT JOIN `Reports` ON (`Users`.`ID_user` = `Reports`.`ID_user`)
	WHERE `Reports`.`ID_user` IS NULL;
=======
	INNER JOIN `Reports` ON (`Users`.`ID_user` = `Reports`.`ID_user`)
	WHERE `Reports`.`ID_report` IS NULL;
>>>>>>> 1072d5b4bbb0d7c55652874ab70deea0ce5ecd8b


-- №10
SELECT `Reports`.`report_text` FROM `Users`
	INNER JOIN `Orders` ON (`Users`.`ID_user` = `Orders`.`ID_user`)
	INNER JOIN `Reports` ON (`Users`.`ID_user` = `Reports`.`ID_user`)
	WHERE `Order`.`sum_order` < 2000;