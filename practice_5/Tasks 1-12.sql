USE `seschool_09`;


-- №1
SELECT `product_id` FROM `Products`
	WHERE `price` > (SELECT AVG(`price`) FROM `Products`);


-- №2
SELECT `Categories`.`category_id` FROM `Products`
	INNER JOIN `Categories` ON (`Categories`.`category_id` = `Products`.`category_id`)
	WHERE `Products`.`price` > 100
	GROUP BY `Categories`.`category_id`;


-- №3
SELECT `product_name`,
(
SELECT COUNT(*) FROM `Products`
	WHERE `category_id` = `p`.`category_id`
)
FROM `Products` `p`;


-- №4
SELECT `product_id` FROM `Products` `p`
	WHERE `price` > (SELECT AVG(`price`) FROM `Products` WHERE `p`.`category_id` = `category_id`);


-- №5
SELECT `category_id` FROM `Products`
	GROUP BY `category_id`
	HAVING AVG(`price`) > (SELECT AVG(`price`) FROM `Products`);


-- №6
SELECT `Categories`.`category_name`, MAX(`price`) FROM `Products`
	INNER JOIN `Categories` ON (`Categories`.`category_id` = `Products`.`category_id`)
	GROUP BY `Products`.`category_id`;


-- №7
SELECT `product_id` FROM `Products` `p`
	WHERE `price` = (SELECT MAX(`price`) FROM `Products` WHERE `p`.`category_id` = `category_id`);


-- №8
SELECT `category_id` FROM `Products`
	GROUP BY `category_id`
	HAVING COUNT(`Products`.`product_id`) > (SELECT COUNT(`Products`.`product_id`) / COUNT(`category_id`) FROM `Products`);


-- №9
SELECT `p`.`product_id` FROM `Products` `p`
	WHERE `p`.`price` > (SELECT AVG(`price`) FROM `Products` WHERE `category_id` = `p`.`category_id`);


-- №10
SELECT `category_id` FROM `Products` `p`
	GROUP BY `category_id`
	HAVING MIN(`price`) > (SELECT AVG(`price`) FROM `Products` WHERE `category_id` = `p`.`category_id`);


-- №11
SELECT `product_id` FROM `Products` `p`
	WHERE `price` < (SELECT MIN(`price`) FROM `Products` WHERE `category_id` != `p`.`category_id`);


-- №12
SELECT `Categories`.`category_id` FROM `Categories`
	INNER JOIN `Products` ON (`Categories`.`category_id` = `Products`.`category_id`)
	GROUP BY `Categories`.`category_id`
	ORDER BY COUNT(`Products`.`product_id`) DESC
	LIMIT 1;