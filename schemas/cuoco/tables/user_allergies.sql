-- atlas:import ../cuoco.sql
-- atlas:import allergies.sql
-- atlas:import users.sql

-- create "user_allergies" table
CREATE TABLE `cuoco`.`user_allergies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NULL,
  `allergy_id` int NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_user_allergies_allergy_id` (`allergy_id`),
  INDEX `FK_user_allergies_user_id` (`user_id`),
  CONSTRAINT `FK_user_allergies_allergy_id` FOREIGN KEY (`allergy_id`) REFERENCES `cuoco`.`allergies` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FK_user_allergies_user_id` FOREIGN KEY (`user_id`) REFERENCES `cuoco`.`users` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
