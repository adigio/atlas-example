-- atlas:import ../cuoco.sql
-- atlas:import ingredients.sql
-- atlas:import meal_preps.sql

-- create "meal_prep_ingredients" table
CREATE TABLE `cuoco`.`meal_prep_ingredients` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` double NULL,
  `ingredient_id` bigint NULL,
  `meal_prep_id` bigint NULL,
  PRIMARY KEY (`id`),
  INDEX `FKdjqsje8lm7vfsyayqfh72wdcx` (`ingredient_id`),
  INDEX `FKhbtcwsiysp8xh9b6wqelw97cb` (`meal_prep_id`),
  CONSTRAINT `FKdjqsje8lm7vfsyayqfh72wdcx` FOREIGN KEY (`ingredient_id`) REFERENCES `cuoco`.`ingredients` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FKhbtcwsiysp8xh9b6wqelw97cb` FOREIGN KEY (`meal_prep_id`) REFERENCES `cuoco`.`meal_preps` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
