-- atlas:import ../mis_tareas.sql

-- create "Tasks" table
CREATE TABLE `mis_tareas`.`Tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `completed` bool NULL DEFAULT 0,
  `created_at` datetime(6) NULL,
  PRIMARY KEY (`id`)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
