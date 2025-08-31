-- atlas:import ../cuoco.sql

-- create "meal_preps" table
CREATE TABLE `cuoco`.`meal_preps` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `estimated_cooking_time` varchar(255) NULL,
  `freeze` bit NULL,
  `servings` int NULL,
  `title` varchar(255) NULL,
  PRIMARY KEY (`id`)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
