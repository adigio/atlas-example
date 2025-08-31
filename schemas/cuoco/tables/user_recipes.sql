-- atlas:import ../cuoco.sql
-- atlas:import recipes.sql
-- atlas:import users.sql

-- create "user_recipes" table
CREATE TABLE `cuoco`.`user_recipes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `favorite` bit NULL,
  `recipe_id` bigint NULL,
  `user_id` bigint NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_user_recipes_recipe_id` (`recipe_id`),
  INDEX `FK_user_recipes_user_id` (`user_id`),
  CONSTRAINT `FK_user_recipes_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `cuoco`.`recipes` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FK_user_recipes_user_id` FOREIGN KEY (`user_id`) REFERENCES `cuoco`.`users` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci AUTO_INCREMENT 3;
