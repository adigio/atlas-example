-- atlas:import ../cuoco.sql
-- atlas:import recipes.sql

-- create "recipe_steps" table
CREATE TABLE `cuoco`.`recipe_steps` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `recipe_id` bigint NOT NULL,
  `number` int NULL,
  `title` varchar(255) NULL,
  `description` text NULL,
  `image_name` varchar(255) NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_recipe_steps__recipe_id` (`recipe_id`),
  CONSTRAINT `FK_recipe_steps__recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `cuoco`.`recipes` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
