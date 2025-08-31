-- atlas:import ../cuoco.sql

-- create "plan_configuration" table
CREATE TABLE `cuoco`.`plan_configuration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NULL,
  `description` varchar(255) NULL,
  `quantity` int NULL,
  `price` decimal(10,2) NULL,
  `currency` varchar(255) NULL,
  PRIMARY KEY (`id`)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
