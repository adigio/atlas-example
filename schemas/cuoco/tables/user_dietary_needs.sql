-- atlas:import ../cuoco.sql
-- atlas:import dietary_needs.sql
-- atlas:import users.sql

-- create "user_dietary_needs" table
CREATE TABLE `cuoco`.`user_dietary_needs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NULL,
  `dietary_need_id` int NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_user_dietary_needs_dietary_need_id` (`dietary_need_id`),
  INDEX `FK_user_dietary_needs_user_id` (`user_id`),
  CONSTRAINT `FK_user_dietary_needs_dietary_need_id` FOREIGN KEY (`dietary_need_id`) REFERENCES `cuoco`.`dietary_needs` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FK_user_dietary_needs_user_id` FOREIGN KEY (`user_id`) REFERENCES `cuoco`.`users` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
