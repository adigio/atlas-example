-- atlas:import ../cuoco.sql
-- atlas:import ingredients.sql
-- atlas:import recipes.sql

-- create "recipe_ingredients" table
CREATE TABLE `cuoco`.`recipe_ingredients` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `recipe_id` bigint NULL,
  `ingredient_id` bigint NULL,
  `quantity` double NULL,
  `optional` bit NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_recipe_ingredients_ingredient_id` (`ingredient_id`),
  INDEX `FK_recipe_ingredients_recipe_id` (`recipe_id`),
  CONSTRAINT `FK_recipe_ingredients_ingredient_id` FOREIGN KEY (`ingredient_id`) REFERENCES `cuoco`.`ingredients` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FK_recipe_ingredients_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `cuoco`.`recipes` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
