INSERT INTO user (id, active, email, password, username) VALUES(1, true, 'xaviercobain88', 'xaviercobain88', 'xaviercobain88');

INSERT INTO `superliga_db`.`role`(`id`, `active`, `description`, `role_name`)
VALUES(1, true, 'Championship Mananager', 'championshipMananager')
GO

INSERT INTO `superliga_db`.`role`(`id`, `active`, `description`, `role_name`)
VALUES(2, true, 'Player', 'player')
GO

INSERT INTO `superliga_db`.`role`(`id`, `active`, `description`, `role_name`)
VALUES(3, true, 'Referee', 'referee')
GO

INSERT INTO `superliga_db`.`role`(`id`, `active`, `description`, `role_name`)
VALUES(4, true, 'Anonymous', 'Anonymous')
GO

INSERT INTO `superliga_db`.`role`(`id`, `active`, `description`, `role_name`)
VALUES(5, true, 'Club Manager', 'clubManager')
GO

INSERT INTO `superliga_db`.`user_role`(`user_id`, `role_id`)
VALUES(1, 1)
GO

INSERT INTO `superliga_db`.`user_role`(`user_id`, `role_id`)
VALUES(1, 2)
GO

INSERT INTO `superliga_db`.`permission`(`id`, `active`, `menu_type`, `permission_name`, `permission_type`)
VALUES(1, true, 'STATIC_LINK', 'home', 'READ')
GO

INSERT INTO `superliga_db`.`permission`(`id`, `active`, `menu_type`, `permission_name`, `permission_type`)
VALUES(2, true, 'STATIC_LINK', 'club', 'READ')
GO

INSERT INTO `superliga_db`.`permission`(`id`, `active`, `menu_type`, `permission_name`, `permission_type`)
VALUES(3, true, 'STATIC_LINK', 'championship', 'READ')
GO

INSERT INTO `superliga_db`.`permission`(`id`, `active`, `menu_type`, `permission_name`, `permission_type`)
VALUES(4, true, 'STATIC_LINK', 'profile', 'READ')
GO

INSERT INTO `superliga_db`.`permission`(`id`, `active`, `menu_type`, `permission_name`, `permission_type`)
VALUES(5, true, 'STATIC_LINK', 'refereeManagement', 'READ')
GO

INSERT INTO `superliga_db`.`permission`(`id`, `active`, `menu_type`, `permission_name`, `permission_type`)
VALUES(8, true, 'STATIC_LINK', 'news', 'READ')
GO

INSERT INTO `superliga_db`.`permission`(`id`, `active`, `menu_type`, `permission_name`, `permission_type`)
VALUES(7, true, 'STATIC_LINK', 'notifications', 'READ')
GO

INSERT INTO `superliga_db`.`permission`(`id`, `active`, `menu_type`, `permission_name`, `permission_type`)
VALUES(6, true, 'STATIC_LINK', 'championshipManagement', 'READ')
GO

INSERT INTO `superliga_db`.`permission`(`id`, `active`, `menu_type`, `permission_name`, `permission_type`)
VALUES(9, true, 'STATIC_LINK', 'search', 'READ')
GO

INSERT INTO `superliga_db`.`permission`(`id`, `active`, `menu_type`, `permission_name`, `permission_type`, `parent_permission_id`)
VALUES(10, true, 'STATIC_LINK', 'clubManagement', 'READ', NULL)
GO

INSERT INTO `superliga_db`.`permission`(`id`, `active`, `menu_type`, `permission_name`, `permission_type`)
VALUES(11, true, 'STATIC_LINK', 'registration', 'READ')
GO

INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(3, 7)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(1, 9)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(1, 8)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(1, 7)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(1, 6)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(1, 4)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(1, 3)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(1, 2)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(1, 1)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(5, 10)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(5, 9)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(5, 8)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(5, 7)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(5, 4)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(5, 3)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(5, 2)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(5, 1)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(3, 5)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(3, 4)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(3, 1)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(2, 9)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(2, 8)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(2, 7)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(2, 4)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(2, 3)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(2, 2)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(2, 1)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(3, 8)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(4, 11)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(4, 9)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(4, 8)
GO
INSERT INTO `superliga_db`.`role_permission`(`role_id`, `permission_id`)
VALUES(3, 9)
GO
