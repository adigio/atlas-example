-- atlas:import ../cuoco.sql
-- atlas:import meal_types.sql
-- atlas:import recipes.sql
-- atlas:import user_calendars.sql

-- create "user_calendar_recipes" table
CREATE TABLE `cuoco`.`user_calendar_recipes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_calendar_id` bigint NULL,
  `meal_type_id` int NULL,
  `recipe_id` bigint NULL,
  PRIMARY KEY (`id`),
  INDEX `FK1iudrw8c41jdte59ax3lufc5` (`meal_type_id`),
  INDEX `FK5ufnqyqfcwl0vwbvrprdyf3or` (`user_calendar_id`),
  INDEX `FKek0xg955pngx0qtr8eix6a92o` (`recipe_id`),
  CONSTRAINT `FK1iudrw8c41jdte59ax3lufc5` FOREIGN KEY (`meal_type_id`) REFERENCES `cuoco`.`meal_types` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FK5ufnqyqfcwl0vwbvrprdyf3or` FOREIGN KEY (`user_calendar_id`) REFERENCES `cuoco`.`user_calendars` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FKek0xg955pngx0qtr8eix6a92o` FOREIGN KEY (`recipe_id`) REFERENCES `cuoco`.`recipes` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
