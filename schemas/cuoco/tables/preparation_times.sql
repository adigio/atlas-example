-- atlas:import ../cuoco.sql

-- create "preparation_times" table
CREATE TABLE `cuoco`.`preparation_times` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NULL,
  PRIMARY KEY (`id`)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
