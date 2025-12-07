CREATE TABLE IF NOT EXISTS `savana_bossmenu_permissions` (
  `staff_id` varchar(255) NOT NULL,
  `shop_id` varchar(255) NOT NULL,
  `permission` text DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`staff_id`,`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

CREATE TABLE IF NOT EXISTS `savana_bossmenu_shops` (
  `id` varchar(255) NOT NULL,
  `money` decimal(10,2) DEFAULT 0.00,
  `type` enum('job','gang') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

CREATE TABLE IF NOT EXISTS `savana_bossmenu_staffs` (
  `id` varchar(255) NOT NULL,
  `shop_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `gang` varchar(255) DEFAULT NULL,
  `duty` enum('on','off') DEFAULT 'off',
  `time` int(11) DEFAULT 0,
  `image` longtext DEFAULT 'public/avatar.png',
  PRIMARY KEY (`id`),
  KEY `shop_id` (`shop_id`),
  CONSTRAINT `savana_bossmenu_staffs_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `savana_bossmenu_shops` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

CREATE TABLE IF NOT EXISTS `savana_bossmenu_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` varchar(255) DEFAULT NULL,
  `type` enum('deposit','withdraw') DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_id` (`shop_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `savana_bossmenu_shops` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
