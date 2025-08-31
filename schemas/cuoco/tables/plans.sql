-- atlas:import ../cuoco.sql

-- create "plans" table
CREATE TABLE `cuoco`.`plans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NULL,
  `configuration_id` int NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_plan_configuration_id` (`configuration_id`),
  CONSTRAINT `FK_plan_configuration_id` FOREIGN KEY (`configuration_id`) REFERENCES `cuoco`.`plans` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
