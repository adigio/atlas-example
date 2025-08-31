-- atlas:import ../cuoco.sql
-- atlas:import users.sql

-- create "user_calendars" table
CREATE TABLE `cuoco`.`user_calendars` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `planned_date` date NULL,
  `user_id` bigint NULL,
  PRIMARY KEY (`id`),
  INDEX `FK8864rfbfp3ktqjtshw5f2jypl` (`user_id`),
  CONSTRAINT `FK8864rfbfp3ktqjtshw5f2jypl` FOREIGN KEY (`user_id`) REFERENCES `cuoco`.`users` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
