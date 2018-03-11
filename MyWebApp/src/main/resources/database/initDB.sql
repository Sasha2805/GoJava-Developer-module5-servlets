# Creating database
CREATE SCHEMA development DEFAULT CHARACTER SET utf8mb4;
USE development;

# Creating a developer table
CREATE TABLE `development`.`developers`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`first_name` VARCHAR(50) NOT NULL,
	`last_name` VARCHAR(100) NOT NULL,
	`age` INT,
	`gender` ENUM('MALE', 'FEMALE') NOT NULL,
	`salary` DECIMAL(10, 2)
);

# Creating a skill table
CREATE TABLE `development`.`skills`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`skill` VARCHAR(50) NOT NULL,
	`skill_level` ENUM('JUNIOR', 'MIDDLE', 'SENIOR') NOT NULL,
	UNIQUE (`skill`, `skill_level`)
);

# Creating a project table
CREATE TABLE `development`.`projects`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(100) NOT NULL,
	`info` VARCHAR(150),
	`cost` DECIMAL(10, 2)
);

# Creating a company table
CREATE TABLE `development`.`companies`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(100) NOT NULL,
	`info` VARCHAR(150)
);

# Creating a customer table
CREATE TABLE `development`.`customers`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`first_name` VARCHAR(50) NOT NULL,
	`last_name` VARCHAR(100) NOT NULL,
	`info` VARCHAR(150)
);

# Creating a developer_projects table
CREATE TABLE `development`.`developer_projects`(
	`developer_id` INT NOT NULL,
	`project_id` INT NOT NULL,
	PRIMARY KEY(`developer_id`, `project_id`),
	FOREIGN KEY(`developer_id`) REFERENCES developers (`id`),
	FOREIGN KEY(`project_id`) REFERENCES projects (`id`)
);

# Creating a developer_skills table
CREATE TABLE `development`.`developer_skills`(
	`developer_id` INT NOT NULL,
	`skill_id` INT NOT NULL,
	PRIMARY KEY(`developer_id`, `skill_id`),
	FOREIGN KEY(`developer_id`) REFERENCES developers (`id`),
	FOREIGN KEY(`skill_Id`) REFERENCES skills (`id`)
);

# Creating a company_projects table
CREATE TABLE `development`.`company_projects`(
	`company_id` INT NOT NULL,
	`project_id` INT NOT NULL,
	PRIMARY KEY(`company_id`, `project_id`),
	FOREIGN KEY(`company_id`) REFERENCES companies (`id`),
	FOREIGN KEY(`project_id`) REFERENCES projects (`id`)
);

# Creating a customer_projects table
CREATE TABLE `development`.`customer_projects`(
	`customer_id` INT NOT NULL,
	`project_id` INT NOT NULL,
	PRIMARY KEY(`customer_id`, `project_id`),
	FOREIGN KEY(`customer_id`) REFERENCES customers (`id`),
	FOREIGN KEY(`project_id`) REFERENCES projects (`id`)
);

