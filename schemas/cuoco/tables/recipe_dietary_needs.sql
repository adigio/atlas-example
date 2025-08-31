-- atlas:import ../cuoco.sql
-- atlas:import dietary_needs.sql
-- atlas:import recipes.sql

-- create "recipe_dietary_needs" table
CREATE TABLE `cuoco`.`recipe_dietary_needs` (
  `dietary_need_id` int NOT NULL,
  `recipe_id` bigint NOT NULL,
  INDEX `FK_recipe_dietary_needs_dietary_need_id` (`dietary_need_id`),
  INDEX `FK_recipe_dietary_needs_recipe_id` (`recipe_id`),
  CONSTRAINT `FK_recipe_dietary_needs_dietary_need_id` FOREIGN KEY (`dietary_need_id`) REFERENCES `cuoco`.`dietary_needs` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FK_recipe_dietary_needs_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `cuoco`.`recipes` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
