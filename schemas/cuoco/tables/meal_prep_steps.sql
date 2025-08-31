-- atlas:import ../cuoco.sql
-- atlas:import meal_preps.sql

-- create "meal_prep_steps" table
CREATE TABLE `cuoco`.`meal_prep_steps` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` text NULL,
  `image_name` varchar(255) NULL,
  `number` int NULL,
  `time` varchar(255) NULL,
  `title` varchar(255) NULL,
  `meal_prep_id` bigint NULL,
  PRIMARY KEY (`id`),
  INDEX `FK3owxpdlopjox6bk0cg4pdhhmx` (`meal_prep_id`),
  CONSTRAINT `FK3owxpdlopjox6bk0cg4pdhhmx` FOREIGN KEY (`meal_prep_id`) REFERENCES `cuoco`.`meal_preps` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
