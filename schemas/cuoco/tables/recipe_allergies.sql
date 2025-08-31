-- atlas:import ../cuoco.sql
-- atlas:import allergies.sql
-- atlas:import recipes.sql

-- create "recipe_allergies" table
CREATE TABLE `cuoco`.`recipe_allergies` (
  `allergy_id` int NOT NULL,
  `recipe_id` bigint NOT NULL,
  INDEX `FK_recipe_allergies_allergy_id` (`allergy_id`),
  INDEX `FK_recipe_allergies_recipe_id` (`recipe_id`),
  CONSTRAINT `FK_recipe_allergies_allergy_id` FOREIGN KEY (`allergy_id`) REFERENCES `cuoco`.`allergies` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FK_recipe_allergies_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `cuoco`.`recipes` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
