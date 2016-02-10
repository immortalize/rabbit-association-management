CREATE TABLE `db_name`.`prefix_building` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45),
  `address` VARCHAR(100)
  PRIMARY KEY (`id`)
);

CREATE TABLE `db_name`.`prefix_expense` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `building_id` INT UNSIGNED NOT NULL,
  `expense_category_id` INT UNSIGNED NOT NULL,
  `name` varchar(45),
  `dt` DATE NOT NULL,
  `amount` NUMBER,
  `currency` char(2),
  `expense_term` char(2),
  PRIMARY KEY (`id`)
);

CREATE TABLE `db_name`.`prefix_expense_category` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` varchar(45),
  PRIMARY KEY (`id`)
);

CREATE TABLE `db_name`.`prefix_house` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `building_id` INT UNSIGNED NOT NULL,
  `door_number` INT UNSIGNED NOT NULL,
  `type` varchar(45), -- home, office, etc...
  PRIMARY KEY (`id`)
);

CREATE TABLE `db_name`.`prefix_resident` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `person_id` INT UNSIGNED NOT NULL,
  `house_id` INT UNSIGNED NOT NULL,
  `door_number` INT UNSIGNED NOT NULL,
  `ownership_type` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `db_name`.`prefix_ownership_type` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` varchar(45),
  PRIMARY KEY (`id`)
);

CREATE TABLE `db_name`.`prefix_person` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45),
  `last_name` varchar(45),
  PRIMARY KEY (`id`)
);
