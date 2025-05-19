USE `seschool_09`;


CREATE TABLE `Customers`(
	`id` BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(50) NOT NULL,
	`gender` VARCHAR(1) NOT NULL,
	`age` INT UNSIGNED NOT NULL
);


CREATE TABLE `Orders`(
	`id` BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	`customer_id` BIGINT UNSIGNED,
	`order_date` DATE NOT NULL,
	CONSTRAINT `fk_orders_customers`
	FOREIGN KEY (`customer_id`)
	REFERENCES `Customers`(`id`)
	ON UPDATE RESTRICT ON DELETE RESTRICT
);


-- Таблица Dishes имеется. В ней так же есть много картежей.


CREATE TABLE `Order_Dishes`(
	`order_id` BIGINT UNSIGNED,
	`dish_id` INT UNSIGNED,
	`quantity` INT NOT NULL,
	FOREIGN KEY (`dish_id`)
	REFERENCES `Dishes`(`id`),
	FOREIGN KEY (`order_id`)
	REFERENCES `Orders`(`id`)
);