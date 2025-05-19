USE `seschool_09`;


-- Задачи № 1, 2, 3 были сделаны в классе.


-- №4
SELECT `Customers`.`Name`, `Dishes`.`Name`, `Order_Dishes`.`quantity` AS `Количество` FROM `Customers`
	INNER JOIN `Orders` ON (`Orders`.`customer_id` = `Customers`.`id`)
	INNER JOIN `Order_Dishes` ON (`Orders`.`id` = `Order_Dishes`.`order_id`)
	INNER JOIN `Dishes` ON (`Order_Dishes`.`dish_id` = `Dishes`.`id`)
	ORDER BY `Количество` DESC;


-- №5
SELECT `Dishes`.`name`, `Order_Dishes`.`quantity` AS `Количество` FROM `Customers`
	INNER JOIN `Orders` ON (`Orders`.`customer_id` = `Customers`.`id`)
	INNER JOIN `Order_Dishes` ON (`Orders`.`id` = `Order_Dishes`.`order_id`)
	INNER JOIN `Dishes` ON (`Order_Dishes`.`dish_id` = `Dishes`.`id`)
	GROUP BY `Dishes`.`name`;


-- №6
SELECT `Customers`.`Name` FROM `Customers`
	INNER JOIN `Orders` ON (`Orders`.`customer_id` = `Customers`.`id`)
	INNER JOIN `Order_Dishes` ON (`Orders`.`id` = `Order_Dishes`.`order_id`)
	INNER JOIN `Dishes` ON (`Order_Dishes`.`dish_id` = `Dishes`.`id`)
	WHERE `Dishes`.`price` > 50;


-- №7
SELECT `Customers`.`Name`, `Orders`.`order_date`, `Order_Dishes`.`quantity` AS `Количество` FROM `Customers`
	INNER JOIN `Orders` ON (`Orders`.`customer_id` = `Customers`.`id`)
	INNER JOIN `Order_Dishes` ON (`Orders`.`id` = `Order_Dishes`.`order_id`)
	INNER JOIN `Dishes` ON (`Order_Dishes`.`dish_id` = `Dishes`.`id`)
	ORDER BY `Customers`.`Name` DESC, `Orders`.`order_date` DESC;


-- №8
SELECT `Dishes`.`category`, `Order_Dishes`.`quantity` FROM `Customers`
	INNER JOIN `Orders` ON (`Orders`.`customer_id` = `Customers`.`id`)
	INNER JOIN `Order_Dishes` ON (`Orders`.`id` = `Order_Dishes`.`order_id`)
	INNER JOIN `Dishes` ON (`Order_Dishes`.`dish_id` = `Dishes`.`id`)
	GROUP BY `Dishes`.`category`
	ORDER BY `Order_Dishes`.`quantity` DESC;