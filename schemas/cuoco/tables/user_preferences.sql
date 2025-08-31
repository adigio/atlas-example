-- atlas:import ../cuoco.sql
-- atlas:import cook_levels.sql
-- atlas:import diets.sql
-- atlas:import users.sql

-- create "user_preferences" table
CREATE TABLE `cuoco`.`user_preferences` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `diet_id` int NULL,
  `cook_level_id` int NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_user_preferences_cook_level_id` (`cook_level_id`),
  INDEX `FK_user_preferences_diet_id` (`diet_id`),
  INDEX `FK_user_preferences_user_id` (`user_id`),
  CONSTRAINT `FK_user_preferences_cook_level_id` FOREIGN KEY (`cook_level_id`) REFERENCES `cuoco`.`cook_levels` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FK_user_preferences_diet_id` FOREIGN KEY (`diet_id`) REFERENCES `cuoco`.`diets` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FK_user_preferences_user_id` FOREIGN KEY (`user_id`) REFERENCES `cuoco`.`users` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
