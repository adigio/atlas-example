-- atlas:import ../cuoco.sql
-- atlas:import cook_levels.sql
-- atlas:import diets.sql
-- atlas:import preparation_times.sql

-- create "recipes" table
CREATE TABLE `cuoco`.`recipes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NULL,
  `subtitle` varchar(255) NULL,
  `description` varchar(255) NULL,
  `image_url` varchar(255) NULL,
  `cook_level_id` int NULL,
  `diet_id` int NULL,
  `preparation_time_id` int NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_recipe_cook_level_id` (`cook_level_id`),
  INDEX `FK_recipe_diet_id` (`diet_id`),
  INDEX `FK_recipe_preparation_time_id` (`preparation_time_id`),
  CONSTRAINT `FK_recipe_cook_level_id` FOREIGN KEY (`cook_level_id`) REFERENCES `cuoco`.`cook_levels` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FK_recipe_diet_id` FOREIGN KEY (`diet_id`) REFERENCES `cuoco`.`diets` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FK_recipe_preparation_time_id` FOREIGN KEY (`preparation_time_id`) REFERENCES `cuoco`.`preparation_times` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
