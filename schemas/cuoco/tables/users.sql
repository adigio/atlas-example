-- atlas:import ../cuoco.sql
-- atlas:import plans.sql

-- create "users" table
CREATE TABLE `cuoco`.`users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NULL,
  `email` varchar(255) NULL,
  `password` varchar(255) NULL,
  `active` bit NULL,
  `plan_id` int NULL,
  `created_at` datetime(6) NULL,
  `updated_at` datetime(6) NULL,
  `deleted_at` datetime(6) NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_user_plan_id` (`plan_id`),
  CONSTRAINT `FK_user_plan_id` FOREIGN KEY (`plan_id`) REFERENCES `cuoco`.`plans` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
