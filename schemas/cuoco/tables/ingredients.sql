-- atlas:import ../cuoco.sql
-- atlas:import categories.sql
-- atlas:import units.sql

-- create "ingredients" table
CREATE TABLE `cuoco`.`ingredients` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NULL,
  `category_id` int NULL,
  `unit_id` int NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_ingredient_category_id` (`category_id`),
  INDEX `FK_ingredient_unit_id` (`unit_id`),
  CONSTRAINT `FK_ingredient_category_id` FOREIGN KEY (`category_id`) REFERENCES `cuoco`.`categories` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FK_ingredient_unit_id` FOREIGN KEY (`unit_id`) REFERENCES `cuoco`.`units` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
