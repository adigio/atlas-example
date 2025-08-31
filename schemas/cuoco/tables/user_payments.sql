-- atlas:import ../cuoco.sql
-- atlas:import payment_status.sql
-- atlas:import plans.sql
-- atlas:import users.sql

-- create "user_payments" table
CREATE TABLE `cuoco`.`user_payments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `to_plan_id` int NULL,
  `status_id` int NULL,
  `external_id` varchar(255) NULL,
  `external_reference` varchar(255) NULL,
  `checkout_url` varchar(255) NULL,
  `created_at` datetime(6) NULL,
  `updated_at` datetime(6) NULL,
  `deleted_at` datetime(6) NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_user_payments_plan_id` (`to_plan_id`),
  INDEX `FK_user_payments_status_id` (`status_id`),
  INDEX `FK_user_payments_user_id` (`user_id`),
  CONSTRAINT `FK_user_payments_plan_id` FOREIGN KEY (`to_plan_id`) REFERENCES `cuoco`.`plans` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FK_user_payments_status_id` FOREIGN KEY (`status_id`) REFERENCES `cuoco`.`payment_status` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `FK_user_payments_user_id` FOREIGN KEY (`user_id`) REFERENCES `cuoco`.`users` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
