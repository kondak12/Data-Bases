USE `seschool_09`;


CREATE TABLE `categories`(
	`category_id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	`category_name` VARCHAR(100) NOT NULL
);

INSERT INTO `categories` (`category_name`) VALUES
	('Категория 1'),
	('Категория 2'),
	('Категория 3');


CREATE TABLE `products`(
	`product_id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	`product_name` VARCHAR(100) NOT NULL,
	`category_id` INT UNSIGNED NOT NULL,
	`price` FLOAT NOT NULL,
	FOREIGN KEY (`category_id`)
	REFERENCES `categories`(`category_id`)
);

INSERT INTO `products`(`product_name`, `category_id`, `price`) VALUES
	('Продукт A', 1, 50),
	('Продукт B', 1, 30),
	('Продукт C', 2, 20),
	('Продукт D', 2, 70),
	('Продукт E', 3, 100);