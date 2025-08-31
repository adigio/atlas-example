-- atlas:import ../cuoco.sql
-- atlas:import meal_preps.sql
-- atlas:import users.sql

-- create "user_meal_preps" table
CREATE TABLE `cuoco`.`user_meal_preps` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `meal_prep_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_user_meal_prep_meal_prep_id` (`meal_prep_id`),
  INDEX `FK_user_meal_prep_user_id` (`user_id`),
  CONSTRAINT `FK_user_meal_prep_meal_prep_id` FOREIGN KEY (`user_id`) REFERENCES `cuoco`.`users` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FK_user_meal_prep_user_id` FOREIGN KEY (`meal_prep_id`) REFERENCES `cuoco`.`meal_preps` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci AUTO_INCREMENT 2;
