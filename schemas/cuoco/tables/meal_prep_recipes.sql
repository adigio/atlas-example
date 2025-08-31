-- atlas:import ../cuoco.sql
-- atlas:import meal_preps.sql
-- atlas:import recipes.sql

-- create "meal_prep_recipes" table
CREATE TABLE `cuoco`.`meal_prep_recipes` (
  `meal_prep_id` bigint NOT NULL,
  `recipe_id` bigint NOT NULL,
  INDEX `FK4pfrkpegltixbtlirq15j1dpm` (`recipe_id`),
  INDEX `FKce9pal4yoo0o6tgchu1a5ikn2` (`meal_prep_id`),
  CONSTRAINT `FK4pfrkpegltixbtlirq15j1dpm` FOREIGN KEY (`recipe_id`) REFERENCES `cuoco`.`recipes` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FKce9pal4yoo0o6tgchu1a5ikn2` FOREIGN KEY (`meal_prep_id`) REFERENCES `cuoco`.`meal_preps` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
