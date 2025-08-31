-- atlas:import ../cuoco.sql
-- atlas:import meal_types.sql
-- atlas:import recipes.sql

-- create "recipe_meal_types" table
CREATE TABLE `cuoco`.`recipe_meal_types` (
  `meal_type_id` int NOT NULL,
  `recipe_id` bigint NOT NULL,
  INDEX `FK_recipe_meal_types_meal_type_id` (`meal_type_id`),
  INDEX `FK_recipe_meal_types_recipe_id` (`recipe_id`),
  CONSTRAINT `FK_recipe_meal_types_meal_type_id` FOREIGN KEY (`meal_type_id`) REFERENCES `cuoco`.`meal_types` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FK_recipe_meal_types_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `cuoco`.`recipes` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
