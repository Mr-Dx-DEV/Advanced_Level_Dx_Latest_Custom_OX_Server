-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               12.1.2-MariaDB - MariaDB Server
-- Server OS:                    Win64
-- HeidiSQL Version:             12.11.0.7065
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for dx_advanced
CREATE DATABASE IF NOT EXISTS `dx_advanced` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci */;
USE `dx_advanced`;

-- Dumping structure for table dx_advanced.0r_clothing_image_data
CREATE TABLE IF NOT EXISTS `0r_clothing_image_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

-- Dumping data for table dx_advanced.0r_clothing_image_data: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.0r_clothing_saved_outfits
CREATE TABLE IF NOT EXISTS `0r_clothing_saved_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL,
  `skin` text DEFAULT NULL,
  `model` varchar(50) NOT NULL,
  `tags` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.0r_clothing_saved_outfits: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.0r_clothing_tattoos
CREATE TABLE IF NOT EXISTS `0r_clothing_tattoos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

-- Dumping data for table dx_advanced.0r_clothing_tattoos: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.bank_accounts_new
CREATE TABLE IF NOT EXISTS `bank_accounts_new` (
  `id` varchar(50) NOT NULL,
  `amount` int(11) DEFAULT 0,
  `transactions` longtext DEFAULT NULL,
  `auth` longtext DEFAULT NULL,
  `isFrozen` int(11) DEFAULT 0,
  `creator` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.bank_accounts_new: ~25 rows (approximately)
INSERT INTO `bank_accounts_new` (`id`, `amount`, `transactions`, `auth`, `isFrozen`, `creator`) VALUES
	('ambulance', 0, '[]', '[]', 0, NULL),
	('ballas', 0, '[]', '[]', 0, NULL),
	('bcso', 0, '[]', '[]', 0, NULL),
	('burgershot', 0, '[]', '[]', 0, NULL),
	('bus', 0, '[]', '[]', 0, NULL),
	('cardealer', 0, '[]', '[]', 0, NULL),
	('cartel', 0, '[]', '[]', 0, NULL),
	('casino', 0, '[]', '[]', 0, NULL),
	('catcafe', 0, '[]', '[]', 0, NULL),
	('families', 0, '[]', '[]', 0, NULL),
	('garbage', 0, '[]', '[]', 0, NULL),
	('hotdog', 0, '[]', '[]', 0, NULL),
	('judge', 0, '[]', '[]', 0, NULL),
	('lawyer', 0, '[]', '[]', 0, NULL),
	('lostmc', 0, '[]', '[]', 0, NULL),
	('mechanic', 3403, '[]', '[]', 0, NULL),
	('none', 0, '[]', '[]', 0, NULL),
	('police', 0, '[]', '[]', 0, NULL),
	('realestate', 0, '[]', '[]', 0, NULL),
	('reporter', 0, '[]', '[]', 0, NULL),
	('sasp', 0, '[]', '[]', 0, NULL),
	('taxi', 0, '[]', '[]', 0, NULL),
	('tow', 0, '[]', '[]', 0, NULL),
	('triads', 0, '[]', '[]', 0, NULL),
	('trucker', 0, '[]', '[]', 0, NULL),
	('unemployed', 0, '[]', '[]', 0, NULL),
	('vagos', 0, '[]', '[]', 0, NULL),
	('vineyard', 0, '[]', '[]', 0, NULL);

-- Dumping structure for table dx_advanced.bans
CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `bannedby` varchar(255) NOT NULL DEFAULT 'LeBanhammer',
  PRIMARY KEY (`id`),
  KEY `license` (`license`),
  KEY `discord` (`discord`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.bans: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.casino_cache
CREATE TABLE IF NOT EXISTS `casino_cache` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovak_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.casino_cache: ~1 rows (approximately)
INSERT INTO `casino_cache` (`ID`, `Settings`) VALUES
	(1, '{"PodiumPriceProps":{"engineHealth":1,"modOrnaments":-1,"pearlescentColor":111,"neonColor":[255,0,255],"modFender":-1,"extras":{"1":false},"modFrame":-1,"model":819197656,"xenonColor":12,"modExhaust":0,"modTurbo":1,"bodyHealth":1,"color2":111,"modHydrolic":-1,"modTrimB":-1,"modShifterLeavers":-1,"dirtLevel":1,"color1":111,"modDial":-1,"modXenon":1,"modAPlate":-1,"modTank":-1,"modRoof":2,"modEngineBlock":-1,"modFrontBumper":1,"modArchCover":-1,"modSpoilers":3,"modAirFilter":-1,"wheelColor":111,"modSteeringWheel":-1,"modHood":0,"modStruts":-1,"modDashboard":-1,"modSeats":-1,"modEngine":3,"modWindows":-1,"modRearBumper":0,"modSideSkirt":-1,"modAerials":-1,"modVanityPlate":-1,"modTrimA":-1,"modFrontWheels":-1,"modDoorSpeaker":-1,"tyreSmokeColor":[1,1,1],"modBrakes":2,"modSuspension":-1,"modPlateHolder":-1,"modLivery":1,"tankHealth":1,"modBackWheels":-1,"windowTint":6,"modSpeakers":-1,"fuelLevel":1,"modGrille":-1,"modTransmission":2,"modHorns":57,"wheels":5,"modSmokeEnabled":1,"neonEnabled":[false,false,false,false],"podiumName":"SHEAVA","plateIndex":0,"modRightFender":-1,"modTrunk":-1,"modArmor":4}}');

-- Dumping structure for table dx_advanced.casino_players
CREATE TABLE IF NOT EXISTS `casino_players` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(128) NOT NULL,
  `properties` longtext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.casino_players: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.cd_dispatch
CREATE TABLE IF NOT EXISTS `cd_dispatch` (
  `identifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `callsign` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.cd_dispatch: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.dealers
CREATE TABLE IF NOT EXISTS `dealers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createdby` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.dealers: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.dealership_data
CREATE TABLE IF NOT EXISTS `dealership_data` (
  `name` varchar(100) NOT NULL,
  `label` varchar(255) NOT NULL,
  `balance` float NOT NULL DEFAULT 0,
  `owner_id` varchar(255) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `employee_commission` int(11) DEFAULT 10,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.dealership_data: ~5 rows (approximately)
INSERT INTO `dealership_data` (`name`, `label`, `balance`, `owner_id`, `owner_name`, `employee_commission`) VALUES
	('air', '', 0, NULL, NULL, 10),
	('boats', '', 0, NULL, NULL, 10),
	('luxury', '', 0, NULL, NULL, 10),
	('pdm', '', 0, NULL, NULL, 10),
	('truck', '', 0, NULL, NULL, 10);

-- Dumping structure for table dx_advanced.dealership_dispveh
CREATE TABLE IF NOT EXISTS `dealership_dispveh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dealership` varchar(100) NOT NULL,
  `vehicle` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `coords` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dispveh_dealership` (`dealership`),
  KEY `fk_dispveh_vehicle` (`vehicle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.dealership_dispveh: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.dealership_employees
CREATE TABLE IF NOT EXISTS `dealership_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `dealership` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL,
  `joined` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_employees_dealership` (`dealership`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.dealership_employees: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.dealership_orders
CREATE TABLE IF NOT EXISTS `dealership_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(100) NOT NULL,
  `dealership` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `cost` float NOT NULL DEFAULT 0,
  `delivery_time` int(11) NOT NULL,
  `order_created` datetime NOT NULL DEFAULT current_timestamp(),
  `fulfilled` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `orders_vehicle_fk` (`vehicle`),
  KEY `orders_dealership_fk` (`dealership`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.dealership_orders: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.dealership_sales
CREATE TABLE IF NOT EXISTS `dealership_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dealership` varchar(255) NOT NULL,
  `vehicle` varchar(100) NOT NULL,
  `plate` varchar(255) NOT NULL,
  `player` varchar(255) NOT NULL,
  `seller` varchar(255) DEFAULT NULL,
  `purchase_type` varchar(50) NOT NULL,
  `paid` float NOT NULL DEFAULT 0,
  `owed` float NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_sales_vehicle` (`vehicle`),
  KEY `fk_sales_dealership` (`dealership`),
  KEY `fk_sales_player` (`player`),
  KEY `fk_sales_plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.dealership_sales: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.dealership_stock
CREATE TABLE IF NOT EXISTS `dealership_stock` (
  `dealership` varchar(100) NOT NULL,
  `vehicle` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`dealership`,`vehicle`),
  KEY `vehicle_fk` (`vehicle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.dealership_stock: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.dealership_vehicles
CREATE TABLE IF NOT EXISTS `dealership_vehicles` (
  `spawn_code` varchar(100) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `hashkey` varchar(100) DEFAULT NULL,
  `category` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`spawn_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.dealership_vehicles: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.houselocations
CREATE TABLE IF NOT EXISTS `houselocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(2) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `defaultPrice` int(11) DEFAULT NULL,
  `tier` smallint(6) DEFAULT NULL,
  `garage` text DEFAULT NULL,
  `garageShell` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `mlo` text DEFAULT NULL,
  `ipl` text DEFAULT NULL,
  `console` int(11) DEFAULT NULL,
  `board` text DEFAULT NULL,
  `for_sale` int(11) DEFAULT 1,
  `extra_imgs` text DEFAULT NULL,
  `description` text NOT NULL DEFAULT '',
  `creatorJob` varchar(50) DEFAULT NULL,
  `blip` text DEFAULT NULL,
  `upgrades` text DEFAULT NULL,
  `apartmentCount` int(11) DEFAULT NULL,
  `creatorGotMoney` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table dx_advanced.houselocations: ~0 rows (approximately)
INSERT INTO `houselocations` (`id`, `name`, `label`, `coords`, `owned`, `price`, `defaultPrice`, `tier`, `garage`, `garageShell`, `creator`, `mlo`, `ipl`, `console`, `board`, `for_sale`, `extra_imgs`, `description`, `creatorJob`, `blip`, `upgrades`, `apartmentCount`, `creatorGotMoney`) VALUES
	(4, 'dx', 'Edwood Way', '{"shellCoords":{"x":-828.0302734375,"z":29.16627502441406,"y":120.87413024902344,"h":276.9985656738281},"cam":{"z":55.98701477050781,"x":-830.5248413085938,"yaw":-10.0,"y":115.08242797851563,"h":277.3704833984375},"enter":{"x":-830.5248413085938,"z":55.98701477050781,"y":115.08242797851563,"h":277.3704833984375},"PolyZone":{"points":[{"x":-858.2362670898438,"y":128.3479461669922,"z":56.0},{"x":-854.7201538085938,"y":90.55252075195313,"z":56.0},{"x":-853.5621948242188,"y":87.61969757080078,"z":56.0},{"x":-823.9224853515625,"y":93.45967864990235,"z":56.0},{"x":-799.7846069335938,"y":101.28761291503906,"z":56.0},{"x":-782.3178100585938,"y":104.86344146728516,"z":56.0},{"x":-767.1876220703125,"y":106.78765869140625,"z":56.0},{"x":-755.6005249023438,"y":107.62509155273438,"z":56.0},{"x":-750.3351440429688,"y":108.63025665283203,"z":56.0},{"x":-749.6284790039063,"y":111.57450866699219,"z":56.0},{"x":-750.494140625,"y":114.11028289794922,"z":56.0},{"x":-751.1514282226563,"y":116.56442260742188,"z":56.0},{"x":-752.8214111328125,"y":119.30387878417969,"z":56.0},{"x":-753.880859375,"y":121.58565521240235,"z":56.0},{"x":-758.9622192382813,"y":125.28800964355469,"z":56.0},{"x":-763.93212890625,"y":128.3826446533203,"z":56.0},{"x":-776.28955078125,"y":130.9502410888672,"z":56.0},{"x":-797.6286010742188,"y":132.4446258544922,"z":56.0}],"thickness":25.0},"interiorCoords":{"x":-828.0302734375,"y":120.87413024902344,"z":29.16627502441406,"w":276.9985656738281},"exit":{"x":-847.839111328125,"z":38.60669326782226,"y":109.36221313476563,"h":276.9985656738281}}', 1, 30, 30, 175, NULL, NULL, 'M4X2I85Y', NULL, NULL, NULL, '{"phone":"2051557364","name":"Mr Dx","object":"qs_salesign_01","coords":{"x":0.0,"y":0.0,"z":0.0,"w":276.9985656738281}}', 1, NULL, '', 'realestate', NULL, NULL, 0, 1);

-- Dumping structure for table dx_advanced.izzy_banlist
CREATE TABLE IF NOT EXISTS `izzy_banlist` (
  `name` varchar(255) DEFAULT NULL,
  `admin` varchar(255) DEFAULT NULL,
  `steam` varchar(255) DEFAULT NULL,
  `rockstar` varchar(255) DEFAULT NULL,
  `xbox` varchar(255) DEFAULT NULL,
  `live` varchar(255) DEFAULT NULL,
  `discord` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.izzy_banlist: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lapraces
CREATE TABLE IF NOT EXISTS `lapraces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `records` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `raceid` (`raceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lapraces: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_ambulance_accounts
CREATE TABLE IF NOT EXISTS `lbtablet_ambulance_accounts` (
  `id` varchar(100) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `callsign` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_ambulance_accounts: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_ambulance_bulletin
CREATE TABLE IF NOT EXISTS `lbtablet_ambulance_bulletin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `pinned` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `lbtablet_ambulance_bulletin_fk_1` FOREIGN KEY (`created_by`) REFERENCES `lbtablet_ambulance_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_ambulance_bulletin: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_ambulance_conditions
CREATE TABLE IF NOT EXISTS `lbtablet_ambulance_conditions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `severity` varchar(25) NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `severity` (`severity`,`category_id`,`title`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `lbtablet_ambulance_conditions_fk_1` FOREIGN KEY (`category_id`) REFERENCES `lbtablet_ambulance_conditions_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_ambulance_conditions: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_ambulance_conditions_categories
CREATE TABLE IF NOT EXISTS `lbtablet_ambulance_conditions_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_ambulance_conditions_categories: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_ambulance_logs
CREATE TABLE IF NOT EXISTS `lbtablet_ambulance_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `related_id` varchar(500) DEFAULT NULL,
  `log_action` varchar(25) NOT NULL,
  `log_type` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_ambulance_logs: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_ambulance_profiles
CREATE TABLE IF NOT EXISTS `lbtablet_ambulance_profiles` (
  `id` varchar(100) NOT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `notes` text NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_ambulance_profiles: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_ambulance_profile_conditions
CREATE TABLE IF NOT EXISTS `lbtablet_ambulance_profile_conditions` (
  `profile_id` varchar(100) NOT NULL,
  `condition_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`profile_id`,`condition_id`),
  KEY `condition_id` (`condition_id`),
  CONSTRAINT `lbtablet_ambulance_profile_conditions_fk_1` FOREIGN KEY (`profile_id`) REFERENCES `lbtablet_ambulance_profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lbtablet_ambulance_profile_conditions_fk_2` FOREIGN KEY (`condition_id`) REFERENCES `lbtablet_ambulance_conditions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_ambulance_profile_conditions: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_ambulance_profile_tags
CREATE TABLE IF NOT EXISTS `lbtablet_ambulance_profile_tags` (
  `id` varchar(100) NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `lbtablet_ambulance_profile_tags_fk_1` FOREIGN KEY (`tag_id`) REFERENCES `lbtablet_ambulance_tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_ambulance_profile_tags: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_ambulance_reports
CREATE TABLE IF NOT EXISTS `lbtablet_ambulance_reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) NOT NULL,
  `patient` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `report_type` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `lbtablet_ambulance_reports_fk_1` FOREIGN KEY (`created_by`) REFERENCES `lbtablet_ambulance_accounts` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_ambulance_reports: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_ambulance_reports_attachments
CREATE TABLE IF NOT EXISTS `lbtablet_ambulance_reports_attachments` (
  `report_id` int(10) unsigned NOT NULL,
  `attachment` varchar(500) NOT NULL,
  PRIMARY KEY (`report_id`,`attachment`),
  CONSTRAINT `lbtablet_ambulance_reports_attachments_fk_1` FOREIGN KEY (`report_id`) REFERENCES `lbtablet_ambulance_reports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_ambulance_reports_attachments: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_ambulance_reports_conditions
CREATE TABLE IF NOT EXISTS `lbtablet_ambulance_reports_conditions` (
  `report_id` int(10) unsigned NOT NULL,
  `condition_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`report_id`,`condition_id`),
  KEY `condition_id` (`condition_id`),
  CONSTRAINT `lbtablet_ambulance_reports_conditions_fk_1` FOREIGN KEY (`report_id`) REFERENCES `lbtablet_ambulance_reports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lbtablet_ambulance_reports_conditions_fk_2` FOREIGN KEY (`condition_id`) REFERENCES `lbtablet_ambulance_conditions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_ambulance_reports_conditions: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_ambulance_reports_doctors
CREATE TABLE IF NOT EXISTS `lbtablet_ambulance_reports_doctors` (
  `report_id` int(10) unsigned NOT NULL,
  `doctor` varchar(100) NOT NULL,
  PRIMARY KEY (`report_id`,`doctor`),
  KEY `doctor` (`doctor`),
  CONSTRAINT `lbtablet_ambulance_reports_doctors_fk_1` FOREIGN KEY (`report_id`) REFERENCES `lbtablet_ambulance_reports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lbtablet_ambulance_reports_doctors_fk_2` FOREIGN KEY (`doctor`) REFERENCES `lbtablet_ambulance_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_ambulance_reports_doctors: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_ambulance_reports_tags
CREATE TABLE IF NOT EXISTS `lbtablet_ambulance_reports_tags` (
  `report_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`report_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `lbtablet_ambulance_reports_tags_fk_1` FOREIGN KEY (`report_id`) REFERENCES `lbtablet_ambulance_reports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lbtablet_ambulance_reports_tags_fk_2` FOREIGN KEY (`tag_id`) REFERENCES `lbtablet_ambulance_tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_ambulance_reports_tags: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_ambulance_tags
CREATE TABLE IF NOT EXISTS `lbtablet_ambulance_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `color` varchar(10) NOT NULL,
  `tag_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_ambulance_tags: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_apps_loggedin
CREATE TABLE IF NOT EXISTS `lbtablet_apps_loggedin` (
  `tablet_id` varchar(100) NOT NULL,
  `app` varchar(25) NOT NULL,
  `account` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tablet_id`,`app`,`account`),
  CONSTRAINT `lbtablet_apps_loggedin_fk_1` FOREIGN KEY (`tablet_id`) REFERENCES `lbtablet_tablets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_apps_loggedin: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_chat_rooms
CREATE TABLE IF NOT EXISTS `lbtablet_chat_rooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `terminal_type` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `icon` varchar(500) DEFAULT NULL,
  `private` tinyint(1) NOT NULL DEFAULT 0,
  `creator` varchar(100) NOT NULL,
  `last_message` text DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_chat_rooms: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_chat_rooms_members
CREATE TABLE IF NOT EXISTS `lbtablet_chat_rooms_members` (
  `room_id` int(10) unsigned NOT NULL,
  `account` varchar(100) NOT NULL,
  `notifications` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`room_id`,`account`),
  CONSTRAINT `lbtablet_chat_rooms_members_fk_1` FOREIGN KEY (`room_id`) REFERENCES `lbtablet_chat_rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_chat_rooms_members: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_chat_rooms_messages
CREATE TABLE IF NOT EXISTS `lbtablet_chat_rooms_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` int(10) unsigned NOT NULL,
  `author` varchar(100) NOT NULL,
  `message` text DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `sent_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `room_id` (`room_id`),
  CONSTRAINT `lbtablet_chat_rooms_messages_fk_1` FOREIGN KEY (`room_id`) REFERENCES `lbtablet_chat_rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_chat_rooms_messages: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_clock_alarms
CREATE TABLE IF NOT EXISTS `lbtablet_clock_alarms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tablet_id` varchar(100) NOT NULL,
  `hours` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `minutes` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `label` varchar(50) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `tablet_id` (`tablet_id`),
  CONSTRAINT `lbtablet_clock_alarms_fk_1` FOREIGN KEY (`tablet_id`) REFERENCES `lbtablet_tablets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_clock_alarms: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_notes
CREATE TABLE IF NOT EXISTS `lbtablet_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tablet_id` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` mediumtext NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `tablet_id` (`tablet_id`),
  CONSTRAINT `lbtablet_notes_fk_1` FOREIGN KEY (`tablet_id`) REFERENCES `lbtablet_tablets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_notes: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_notifications
CREATE TABLE IF NOT EXISTS `lbtablet_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tablet_id` varchar(100) NOT NULL,
  `app` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(500) NOT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `show_avatar` tinyint(1) NOT NULL DEFAULT 0,
  `custom_data` text DEFAULT NULL,
  `received_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `tablet_id` (`tablet_id`),
  CONSTRAINT `lbtablet_notifications_fk_1` FOREIGN KEY (`tablet_id`) REFERENCES `lbtablet_tablets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_notifications: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_photos
CREATE TABLE IF NOT EXISTS `lbtablet_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tablet_id` varchar(100) NOT NULL,
  `link` varchar(500) DEFAULT NULL,
  `is_video` tinyint(1) DEFAULT 0,
  `size` float NOT NULL DEFAULT 0,
  `metadata` varchar(20) DEFAULT NULL,
  `is_favourite` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `tablet_id` (`tablet_id`),
  CONSTRAINT `lbtablet_photos_fk_1` FOREIGN KEY (`tablet_id`) REFERENCES `lbtablet_tablets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_photos: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_photo_albums
CREATE TABLE IF NOT EXISTS `lbtablet_photo_albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tablet_id` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tablet_id` (`tablet_id`),
  CONSTRAINT `lbtablet_photo_albums_fk_1` FOREIGN KEY (`tablet_id`) REFERENCES `lbtablet_tablets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_photo_albums: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_photo_album_photos
CREATE TABLE IF NOT EXISTS `lbtablet_photo_album_photos` (
  `album_id` int(10) unsigned NOT NULL,
  `photo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`album_id`,`photo_id`),
  KEY `photo_id` (`photo_id`),
  CONSTRAINT `lbtablet_photo_album_photos_fk_1` FOREIGN KEY (`album_id`) REFERENCES `lbtablet_photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lbtablet_photo_album_photos_fk_2` FOREIGN KEY (`photo_id`) REFERENCES `lbtablet_photos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_photo_album_photos: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_accounts
CREATE TABLE IF NOT EXISTS `lbtablet_police_accounts` (
  `id` varchar(100) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `callsign` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_accounts: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_bulletin
CREATE TABLE IF NOT EXISTS `lbtablet_police_bulletin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `pinned` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `lbtablet_police_bulletin_fk_1` FOREIGN KEY (`created_by`) REFERENCES `lbtablet_police_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_bulletin: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_cases
CREATE TABLE IF NOT EXISTS `lbtablet_police_cases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `lbtablet_police_cases_fk_1` FOREIGN KEY (`created_by`) REFERENCES `lbtablet_police_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_cases: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_cases_charges
CREATE TABLE IF NOT EXISTS `lbtablet_police_cases_charges` (
  `case_id` int(10) unsigned NOT NULL,
  `criminal` varchar(100) NOT NULL,
  `offence_id` int(10) unsigned NOT NULL,
  `charges` tinyint(3) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`case_id`,`criminal`,`offence_id`),
  KEY `offence_id` (`offence_id`),
  CONSTRAINT `lbtablet_police_cases_charges_fk_1` FOREIGN KEY (`case_id`, `criminal`) REFERENCES `lbtablet_police_cases_criminals` (`case_id`, `id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lbtablet_police_cases_charges_fk_2` FOREIGN KEY (`offence_id`) REFERENCES `lbtablet_police_offences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_cases_charges: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_cases_criminals
CREATE TABLE IF NOT EXISTS `lbtablet_police_cases_criminals` (
  `case_id` int(10) unsigned NOT NULL,
  `id` varchar(100) NOT NULL,
  `fine` int(10) unsigned NOT NULL DEFAULT 0,
  `jail_time` int(10) unsigned NOT NULL DEFAULT 0,
  `fined` tinyint(1) NOT NULL DEFAULT 0,
  `jailed` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`case_id`,`id`),
  CONSTRAINT `lbtablet_police_cases_criminals_fk_1` FOREIGN KEY (`case_id`) REFERENCES `lbtablet_police_cases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_cases_criminals: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_cases_evidence
CREATE TABLE IF NOT EXISTS `lbtablet_police_cases_evidence` (
  `case_id` int(10) unsigned NOT NULL,
  `attachment` varchar(500) NOT NULL,
  PRIMARY KEY (`case_id`,`attachment`),
  CONSTRAINT `lbtablet_police_cases_evidence_fk_1` FOREIGN KEY (`case_id`) REFERENCES `lbtablet_police_cases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_cases_evidence: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_cases_involved
CREATE TABLE IF NOT EXISTS `lbtablet_police_cases_involved` (
  `case_id` int(10) unsigned NOT NULL,
  `involved` varchar(100) NOT NULL,
  `involvement` varchar(50) NOT NULL,
  PRIMARY KEY (`case_id`,`involved`),
  CONSTRAINT `lbtablet_police_cases_involved_fk_1` FOREIGN KEY (`case_id`) REFERENCES `lbtablet_police_cases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_cases_involved: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_cases_linked_reports
CREATE TABLE IF NOT EXISTS `lbtablet_police_cases_linked_reports` (
  `case_id` int(10) unsigned NOT NULL,
  `report_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`case_id`,`report_id`),
  KEY `report_id` (`report_id`),
  CONSTRAINT `lbtablet_police_cases_linked_reports_fk_1` FOREIGN KEY (`case_id`) REFERENCES `lbtablet_police_cases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lbtablet_police_cases_linked_reports_fk_2` FOREIGN KEY (`report_id`) REFERENCES `lbtablet_police_reports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_cases_linked_reports: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_cases_tags
CREATE TABLE IF NOT EXISTS `lbtablet_police_cases_tags` (
  `case_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`case_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `lbtablet_police_cases_tags_fk_1` FOREIGN KEY (`case_id`) REFERENCES `lbtablet_police_cases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lbtablet_police_cases_tags_fk_2` FOREIGN KEY (`tag_id`) REFERENCES `lbtablet_police_tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_cases_tags: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_jail
CREATE TABLE IF NOT EXISTS `lbtablet_police_jail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prisoner` varchar(100) NOT NULL,
  `jailed_by` varchar(100) DEFAULT NULL,
  `reason` varchar(100) NOT NULL,
  `original_time` int(10) unsigned NOT NULL,
  `jail_time` int(10) unsigned NOT NULL,
  `jailed_at` datetime NOT NULL DEFAULT current_timestamp(),
  `related_case` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `related_case` (`related_case`),
  CONSTRAINT `lbtablet_police_jail_fk_1` FOREIGN KEY (`related_case`) REFERENCES `lbtablet_police_cases` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_jail: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_logs
CREATE TABLE IF NOT EXISTS `lbtablet_police_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) DEFAULT NULL,
  `related_id` varchar(500) DEFAULT NULL,
  `log_action` varchar(50) NOT NULL,
  `log_type` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_logs: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_offences
CREATE TABLE IF NOT EXISTS `lbtablet_police_offences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `class` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `fine` int(10) unsigned NOT NULL DEFAULT 0,
  `jail_time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_id` (`category_id`,`class`,`title`),
  CONSTRAINT `lbtablet_police_offences_fk_1` FOREIGN KEY (`category_id`) REFERENCES `lbtablet_police_offences_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_offences: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_offences_categories
CREATE TABLE IF NOT EXISTS `lbtablet_police_offences_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_offences_categories: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_phone_unlocks
CREATE TABLE IF NOT EXISTS `lbtablet_police_phone_unlocks` (
  `phone_number` varchar(15) NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `unlocked` tinyint(1) NOT NULL DEFAULT 0,
  `finished_at` datetime NOT NULL,
  PRIMARY KEY (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_phone_unlocks: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_profiles
CREATE TABLE IF NOT EXISTS `lbtablet_police_profiles` (
  `id` varchar(100) NOT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `notes` text NOT NULL DEFAULT '',
  `profile_type` varchar(50) NOT NULL DEFAULT 'player',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_profiles: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_profile_tags
CREATE TABLE IF NOT EXISTS `lbtablet_police_profile_tags` (
  `id` varchar(100) NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `lbtablet_police_profile_tags_fk_1` FOREIGN KEY (`tag_id`) REFERENCES `lbtablet_police_tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_profile_tags: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_reports
CREATE TABLE IF NOT EXISTS `lbtablet_police_reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `report_type` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `lbtablet_police_reports_fk_1` FOREIGN KEY (`created_by`) REFERENCES `lbtablet_police_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_reports: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_reports_attachments
CREATE TABLE IF NOT EXISTS `lbtablet_police_reports_attachments` (
  `report_id` int(10) unsigned NOT NULL,
  `attachment` varchar(500) NOT NULL,
  PRIMARY KEY (`report_id`,`attachment`),
  CONSTRAINT `lbtablet_police_reports_attachments_fk_1` FOREIGN KEY (`report_id`) REFERENCES `lbtablet_police_reports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_reports_attachments: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_reports_involved
CREATE TABLE IF NOT EXISTS `lbtablet_police_reports_involved` (
  `report_id` int(10) unsigned NOT NULL,
  `involved` varchar(100) NOT NULL,
  `involvement` varchar(50) NOT NULL,
  PRIMARY KEY (`report_id`,`involved`),
  CONSTRAINT `lbtablet_police_reports_involved_fk_1` FOREIGN KEY (`report_id`) REFERENCES `lbtablet_police_reports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_reports_involved: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_reports_tags
CREATE TABLE IF NOT EXISTS `lbtablet_police_reports_tags` (
  `report_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`report_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `lbtablet_police_reports_tags_fk_1` FOREIGN KEY (`report_id`) REFERENCES `lbtablet_police_reports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lbtablet_police_reports_tags_fk_2` FOREIGN KEY (`tag_id`) REFERENCES `lbtablet_police_tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_reports_tags: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_tags
CREATE TABLE IF NOT EXISTS `lbtablet_police_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `color` varchar(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_tags: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_warrants
CREATE TABLE IF NOT EXISTS `lbtablet_police_warrants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) NOT NULL,
  `warrant_type` varchar(100) NOT NULL,
  `warrant_status` varchar(50) NOT NULL DEFAULT 'active',
  `priority` varchar(50) NOT NULL DEFAULT 'low',
  `title` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `linked_profile_id` varchar(100) DEFAULT NULL,
  `linked_profile_type` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `lbtablet_police_warrants_fk_1` FOREIGN KEY (`created_by`) REFERENCES `lbtablet_police_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_warrants: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_warrants_attachments
CREATE TABLE IF NOT EXISTS `lbtablet_police_warrants_attachments` (
  `warrant_id` int(10) unsigned NOT NULL,
  `attachment` varchar(500) NOT NULL,
  PRIMARY KEY (`warrant_id`,`attachment`),
  CONSTRAINT `lbtablet_police_warrants_attachments_fk_1` FOREIGN KEY (`warrant_id`) REFERENCES `lbtablet_police_warrants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_warrants_attachments: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_warrants_linked_reports
CREATE TABLE IF NOT EXISTS `lbtablet_police_warrants_linked_reports` (
  `warrant_id` int(10) unsigned NOT NULL,
  `report_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`warrant_id`,`report_id`),
  KEY `report_id` (`report_id`),
  CONSTRAINT `lbtablet_police_warrants_linked_reports_fk_1` FOREIGN KEY (`warrant_id`) REFERENCES `lbtablet_police_warrants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lbtablet_police_warrants_linked_reports_fk_2` FOREIGN KEY (`report_id`) REFERENCES `lbtablet_police_reports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_warrants_linked_reports: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_warrants_tags
CREATE TABLE IF NOT EXISTS `lbtablet_police_warrants_tags` (
  `warrant_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`warrant_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `lbtablet_police_warrants_tags_fk_1` FOREIGN KEY (`warrant_id`) REFERENCES `lbtablet_police_warrants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lbtablet_police_warrants_tags_fk_2` FOREIGN KEY (`tag_id`) REFERENCES `lbtablet_police_tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_warrants_tags: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_weapons
CREATE TABLE IF NOT EXISTS `lbtablet_police_weapons` (
  `serial_number` varchar(100) NOT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `weapon_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`serial_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_weapons: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_wiretaps
CREATE TABLE IF NOT EXISTS `lbtablet_police_wiretaps` (
  `phone_number` varchar(15) NOT NULL,
  `creator_tablet_id` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`phone_number`),
  KEY `creator_tablet_id` (`creator_tablet_id`),
  CONSTRAINT `lbtablet_police_wiretaps_fk_1` FOREIGN KEY (`creator_tablet_id`) REFERENCES `lbtablet_tablets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_wiretaps: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_police_wiretaps_subscribers
CREATE TABLE IF NOT EXISTS `lbtablet_police_wiretaps_subscribers` (
  `tablet_id` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`tablet_id`,`phone_number`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `lbtablet_police_wiretaps_subscribers_fk_1` FOREIGN KEY (`tablet_id`) REFERENCES `lbtablet_tablets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lbtablet_police_wiretaps_subscribers_fk_2` FOREIGN KEY (`phone_number`) REFERENCES `lbtablet_police_wiretaps` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_police_wiretaps_subscribers: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_tablets
CREATE TABLE IF NOT EXISTS `lbtablet_tablets` (
  `id` varchar(100) NOT NULL,
  `tablet_name` varchar(50) NOT NULL,
  `settings` longtext DEFAULT NULL,
  `battery` tinyint(3) unsigned NOT NULL DEFAULT 100,
  `is_setup` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_tablets: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.lbtablet_voice_memo_recordings
CREATE TABLE IF NOT EXISTS `lbtablet_voice_memo_recordings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tablet_id` varchar(100) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `file_url` varchar(500) NOT NULL,
  `file_length` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `tablet_id` (`tablet_id`),
  CONSTRAINT `lbtablet_voice_memo_recordings_fk_1` FOREIGN KEY (`tablet_id`) REFERENCES `lbtablet_tablets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.lbtablet_voice_memo_recordings: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.management_outfits
CREATE TABLE IF NOT EXISTS `management_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `minrank` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT 'Cool Outfit',
  `gender` varchar(50) NOT NULL DEFAULT 'male',
  `model` varchar(50) DEFAULT NULL,
  `props` text DEFAULT NULL,
  `components` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.management_outfits: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.mechanic_data
CREATE TABLE IF NOT EXISTS `mechanic_data` (
  `name` varchar(100) NOT NULL,
  `label` varchar(255) NOT NULL,
  `balance` float NOT NULL DEFAULT 0,
  `owner_id` varchar(255) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.mechanic_data: ~5 rows (approximately)
INSERT INTO `mechanic_data` (`name`, `label`, `balance`, `owner_id`, `owner_name`) VALUES
	('AutoRepair', '', 0, NULL, NULL),
	('Benny', '', 0, NULL, NULL),
	('bennys', '', 0, 'P27MZ277', 'Mr Dx'),
	('grove', '', 0, NULL, NULL),
	('lscustoms', '', 0, NULL, NULL);

-- Dumping structure for table dx_advanced.mechanic_employees
CREATE TABLE IF NOT EXISTS `mechanic_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `mechanic` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL,
  `joined` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.mechanic_employees: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.mechanic_invoices
CREATE TABLE IF NOT EXISTS `mechanic_invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `mechanic` varchar(255) NOT NULL,
  `total` float NOT NULL,
  `data` text NOT NULL,
  `paid` tinyint(1) DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.mechanic_invoices: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.mechanic_orders
CREATE TABLE IF NOT EXISTS `mechanic_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `mechanic` varchar(255) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `amount_paid` float NOT NULL DEFAULT 0,
  `cart` text NOT NULL,
  `props_to_apply` text NOT NULL,
  `installation_progress` text DEFAULT NULL,
  `fulfilled` tinyint(1) DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.mechanic_orders: ~0 rows (approximately)
INSERT INTO `mechanic_orders` (`id`, `identifier`, `mechanic`, `plate`, `amount_paid`, `cart`, `props_to_apply`, `installation_progress`, `fulfilled`, `date`) VALUES
	(1, 'U4N41JY0', 'Benny', '02WBX348', 3403, '{"cosmetics":{"Rear Bumper":{"price":913,"modIndex":1,"desc":"Secondary Color Diffuser"},"Roof":{"price":830,"modIndex":0,"desc":"Roof Scoop"},"Skirt":{"price":830,"modIndex":0,"desc":"Shark Fin Skirts"},"Window Tint":{"price":830,"modIndex":1,"desc":"Pure Black"}}}', '{"performance":[],"headlights":[],"bulletproofTyres":[],"wheels":[],"neonLights":[],"tyreSmoke":[],"stance":[],"repair":[],"extras":[],"respray":[],"cosmetics":{"modRoof":0,"modSideSkirt":0,"windowTint":1,"modRearBumper":1}}', '{"cosmetics":true}', 1, '2025-12-12 08:32:35');

-- Dumping structure for table dx_advanced.mechanic_servicing_history
CREATE TABLE IF NOT EXISTS `mechanic_servicing_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `mechanic` varchar(255) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `serviced_part` varchar(10) NOT NULL,
  `mileage_km` float NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.mechanic_servicing_history: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.mechanic_settings
CREATE TABLE IF NOT EXISTS `mechanic_settings` (
  `identifier` varchar(255) NOT NULL,
  `preferences` text DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.mechanic_settings: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.mechanic_vehicledata
CREATE TABLE IF NOT EXISTS `mechanic_vehicledata` (
  `plate` varchar(10) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.mechanic_vehicledata: ~0 rows (approximately)
INSERT INTO `mechanic_vehicledata` (`plate`, `data`) VALUES
	('02WBX348', '{"enableStance":false,"wheelsAdjIndv":false,"stance":{"height":0.0,"yRot":[-0.0,0.0,-0.0,0.0],"xOffset":[0.8084,0.8033,0.7919,0.7919]},"_sbFromTableSet":true}');

-- Dumping structure for table dx_advanced.npwd_calls
CREATE TABLE IF NOT EXISTS `npwd_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `transmitter` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `is_accepted` tinyint(4) DEFAULT 0,
  `isAnonymous` tinyint(4) NOT NULL DEFAULT 0,
  `start` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.npwd_calls: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.npwd_darkchat_channels
CREATE TABLE IF NOT EXISTS `npwd_darkchat_channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_identifier` varchar(191) NOT NULL,
  `label` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `darkchat_channels_channel_identifier_uindex` (`channel_identifier`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.npwd_darkchat_channels: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.npwd_darkchat_channel_members
CREATE TABLE IF NOT EXISTS `npwd_darkchat_channel_members` (
  `channel_id` int(11) NOT NULL,
  `user_identifier` varchar(255) NOT NULL,
  `is_owner` tinyint(4) NOT NULL DEFAULT 0,
  KEY `npwd_darkchat_channel_members_npwd_darkchat_channels_id_fk` (`channel_id`) USING BTREE,
  CONSTRAINT `npwd_darkchat_channel_members_npwd_darkchat_channels_id_fk` FOREIGN KEY (`channel_id`) REFERENCES `npwd_darkchat_channels` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.npwd_darkchat_channel_members: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.npwd_darkchat_messages
CREATE TABLE IF NOT EXISTS `npwd_darkchat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `user_identifier` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_image` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `darkchat_messages_darkchat_channels_id_fk` (`channel_id`) USING BTREE,
  CONSTRAINT `darkchat_messages_darkchat_channels_id_fk` FOREIGN KEY (`channel_id`) REFERENCES `npwd_darkchat_channels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.npwd_darkchat_messages: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.npwd_marketplace_listings
CREATE TABLE IF NOT EXISTS `npwd_marketplace_listings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `reported` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.npwd_marketplace_listings: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.npwd_match_profiles
CREATE TABLE IF NOT EXISTS `npwd_match_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(90) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bio` varchar(512) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `job` varchar(45) DEFAULT NULL,
  `tags` varchar(255) NOT NULL DEFAULT '',
  `voiceMessage` varchar(512) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `identifier_UNIQUE` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.npwd_match_profiles: ~0 rows (approximately)
INSERT INTO `npwd_match_profiles` (`id`, `identifier`, `name`, `image`, `bio`, `location`, `job`, `tags`, `voiceMessage`, `createdAt`, `updatedAt`) VALUES
	(1, 'P27MZ277', 'Mr Dx', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2025-11-23 15:09:34', '2025-11-23 15:09:34');

-- Dumping structure for table dx_advanced.npwd_match_views
CREATE TABLE IF NOT EXISTS `npwd_match_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `profile` int(11) NOT NULL,
  `liked` tinyint(4) DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `match_profile_idx` (`profile`),
  KEY `identifier` (`identifier`),
  CONSTRAINT `match_profile` FOREIGN KEY (`profile`) REFERENCES `npwd_match_profiles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.npwd_match_views: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.npwd_messages
CREATE TABLE IF NOT EXISTS `npwd_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `conversation_id` varchar(512) NOT NULL,
  `isRead` tinyint(4) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `visible` tinyint(4) NOT NULL DEFAULT 1,
  `author` varchar(255) NOT NULL,
  `is_embed` tinyint(4) NOT NULL DEFAULT 0,
  `embed` varchar(512) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_identifier` (`user_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.npwd_messages: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.npwd_messages_conversations
CREATE TABLE IF NOT EXISTS `npwd_messages_conversations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_list` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `label` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_message_id` int(11) DEFAULT NULL,
  `is_group_chat` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.npwd_messages_conversations: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.npwd_messages_participants
CREATE TABLE IF NOT EXISTS `npwd_messages_participants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) NOT NULL,
  `participant` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `unread_count` int(11) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `message_participants_npwd_messages_conversations_id_fk` (`conversation_id`) USING BTREE,
  CONSTRAINT `message_participants_npwd_messages_conversations_id_fk` FOREIGN KEY (`conversation_id`) REFERENCES `npwd_messages_conversations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.npwd_messages_participants: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.npwd_notes
CREATE TABLE IF NOT EXISTS `npwd_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.npwd_notes: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.npwd_phone_contacts
CREATE TABLE IF NOT EXISTS `npwd_phone_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `display` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.npwd_phone_contacts: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.npwd_phone_gallery
CREATE TABLE IF NOT EXISTS `npwd_phone_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.npwd_phone_gallery: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.npwd_twitter_likes
CREATE TABLE IF NOT EXISTS `npwd_twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `tweet_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_combination` (`profile_id`,`tweet_id`),
  KEY `profile_idx` (`profile_id`),
  KEY `tweet_idx` (`tweet_id`),
  CONSTRAINT `profile` FOREIGN KEY (`profile_id`) REFERENCES `npwd_twitter_profiles` (`id`),
  CONSTRAINT `tweet` FOREIGN KEY (`tweet_id`) REFERENCES `npwd_twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.npwd_twitter_likes: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.npwd_twitter_profiles
CREATE TABLE IF NOT EXISTS `npwd_twitter_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_name` varchar(90) NOT NULL,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `avatar_url` varchar(255) DEFAULT 'https://i.fivemanage.com/images/3ClWwmpwkFhL.png',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile_name_UNIQUE` (`profile_name`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.npwd_twitter_profiles: ~0 rows (approximately)
INSERT INTO `npwd_twitter_profiles` (`id`, `profile_name`, `identifier`, `avatar_url`, `createdAt`, `updatedAt`) VALUES
	(1, 'Mr_Dx', 'P27MZ277', 'https://i.fivemanage.com/images/3ClWwmpwkFhL.png', '2025-11-23 15:09:34', '2025-11-23 15:09:34');

-- Dumping structure for table dx_advanced.npwd_twitter_reports
CREATE TABLE IF NOT EXISTS `npwd_twitter_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `tweet_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_combination` (`profile_id`,`tweet_id`),
  KEY `profile_idx` (`profile_id`),
  KEY `tweet_idx` (`tweet_id`),
  CONSTRAINT `report_profile` FOREIGN KEY (`profile_id`) REFERENCES `npwd_twitter_profiles` (`id`),
  CONSTRAINT `report_tweet` FOREIGN KEY (`tweet_id`) REFERENCES `npwd_twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.npwd_twitter_reports: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.npwd_twitter_tweets
CREATE TABLE IF NOT EXISTS `npwd_twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT 1,
  `images` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `retweet` int(11) DEFAULT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `npwd_twitter_tweets_npwd_twitter_profiles_id_fk` (`profile_id`) USING BTREE,
  CONSTRAINT `npwd_twitter_tweets_npwd_twitter_profiles_id_fk` FOREIGN KEY (`profile_id`) REFERENCES `npwd_twitter_profiles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.npwd_twitter_tweets: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.occasion_vehicles
CREATE TABLE IF NOT EXISTS `occasion_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `mods` text DEFAULT NULL,
  `occasionid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `occasionId` (`occasionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.occasion_vehicles: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.ox_doorlock
CREATE TABLE IF NOT EXISTS `ox_doorlock` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.ox_doorlock: ~6 rows (approximately)
INSERT INTO `ox_doorlock` (`id`, `name`, `data`) VALUES
	(1, 'vangelico_jewellery', '{"maxDistance":2,"groups":{"police":0},"doors":[{"model":1425919976,"coords":{"x":-631.9553833007813,"y":-236.33326721191407,"z":38.2065315246582},"heading":306},{"model":9467943,"coords":{"x":-630.426513671875,"y":-238.4375457763672,"z":38.2065315246582},"heading":306}],"state":1,"coords":{"x":-631.19091796875,"y":-237.38540649414063,"z":38.2065315246582},"hideUi":true}'),
	(2, 'BigBankThermite1', '{"heading":160,"doors":false,"maxDistance":2,"hideUi":true,"groups":{"police":0},"coords":{"x":251.85757446289063,"y":221.0654754638672,"z":101.83240509033203},"model":-1508355822,"state":1,"autolock":1800}'),
	(3, 'BigBankThermite2', '{"coords":{"x":261.3004150390625,"y":214.50514221191407,"z":101.83240509033203},"autolock":1800,"maxDistance":2,"groups":{"police":0},"model":-1508355822,"doors":false,"hideUi":true,"heading":250,"state":1}'),
	(4, 'BigBankLPDoor', '{"coords":{"x":256.3115539550781,"y":220.65785217285157,"z":106.42955780029297},"autolock":1800,"maxDistance":2,"model":-222270721,"doors":false,"lockpick":true,"hideUi":true,"heading":340,"state":1,"lockpickDifficulty":["hard"]}'),
	(5, 'PaletoThermiteDoor', '{"coords":{"x":-106.47130584716797,"y":6476.15771484375,"z":31.95479965209961},"autolock":1800,"maxDistance":2,"groups":{"police":0},"model":1309269072,"doors":false,"hideUi":true,"heading":315,"state":1}'),
	(6, 'BigBankRedCardDoor', '{"coords":{"x":262.1980895996094,"y":222.518798828125,"z":106.42955780029297},"autolock":1800,"maxDistance":2,"groups":{"police":0},"model":746855201,"doors":false,"hideUi":true,"heading":250,"state":1}');

-- Dumping structure for table dx_advanced.ox_inventory
CREATE TABLE IF NOT EXISTS `ox_inventory` (
  `owner` varchar(60) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  UNIQUE KEY `owner` (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.ox_inventory: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_backups
CREATE TABLE IF NOT EXISTS `phone_backups` (
  `id` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_backups_fk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_backups: ~0 rows (approximately)
INSERT INTO `phone_backups` (`id`, `phone_number`) VALUES
	('E49SWS1P', '6029933551'),
	('P27MZ277', '6024956722'),
	('U4N41JY0', '4804410971');

-- Dumping structure for table dx_advanced.phone_clock_alarms
CREATE TABLE IF NOT EXISTS `phone_clock_alarms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `hours` int(2) NOT NULL DEFAULT 0,
  `minutes` int(2) NOT NULL DEFAULT 0,
  `label` varchar(50) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`,`phone_number`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_clock_alarms_fk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_clock_alarms: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_crypto
CREATE TABLE IF NOT EXISTS `phone_crypto` (
  `id` varchar(100) NOT NULL,
  `coin` varchar(15) NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `invested` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`coin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_crypto: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_darkchat_accounts
CREATE TABLE IF NOT EXISTS `phone_darkchat_accounts` (
  `phone_number` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_darkchat_accounts_fk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_darkchat_accounts: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_darkchat_channels
CREATE TABLE IF NOT EXISTS `phone_darkchat_channels` (
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_darkchat_channels: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_darkchat_members
CREATE TABLE IF NOT EXISTS `phone_darkchat_members` (
  `channel_name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`channel_name`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `phone_darkchat_members_fk_1` FOREIGN KEY (`channel_name`) REFERENCES `phone_darkchat_channels` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_darkchat_members_fk_2` FOREIGN KEY (`username`) REFERENCES `phone_darkchat_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_darkchat_members: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_darkchat_messages
CREATE TABLE IF NOT EXISTS `phone_darkchat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(50) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `channel` (`channel`),
  KEY `sender` (`sender`),
  CONSTRAINT `phone_darkchat_messages_fk_1` FOREIGN KEY (`channel`) REFERENCES `phone_darkchat_channels` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_darkchat_messages_fk_2` FOREIGN KEY (`sender`) REFERENCES `phone_darkchat_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_darkchat_messages: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_instagram_accounts
CREATE TABLE IF NOT EXISTS `phone_instagram_accounts` (
  `display_name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile_image` varchar(500) DEFAULT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `post_count` int(11) NOT NULL DEFAULT 0,
  `story_count` int(11) NOT NULL DEFAULT 0,
  `follower_count` int(11) NOT NULL DEFAULT 0,
  `following_count` int(11) NOT NULL DEFAULT 0,
  `phone_number` varchar(15) NOT NULL,
  `private` tinyint(1) DEFAULT 0,
  `verified` tinyint(1) DEFAULT 0,
  `date_joined` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`username`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_instagram_accounts_fk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_instagram_accounts: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_instagram_comments
CREATE TABLE IF NOT EXISTS `phone_instagram_comments` (
  `id` varchar(10) NOT NULL,
  `post_id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `comment` varchar(500) NOT NULL DEFAULT '',
  `like_count` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_instagram_comments_fk_1` FOREIGN KEY (`post_id`) REFERENCES `phone_instagram_posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phone_instagram_comments_fk_2` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_instagram_comments: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_instagram_follows
CREATE TABLE IF NOT EXISTS `phone_instagram_follows` (
  `followed` varchar(20) NOT NULL,
  `follower` varchar(20) NOT NULL,
  PRIMARY KEY (`followed`,`follower`),
  KEY `follower` (`follower`),
  CONSTRAINT `phone_instagram_follows_fk_1` FOREIGN KEY (`followed`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_instagram_follows_fk_2` FOREIGN KEY (`follower`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_instagram_follows: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_instagram_follow_requests
CREATE TABLE IF NOT EXISTS `phone_instagram_follow_requests` (
  `requester` varchar(20) NOT NULL,
  `requestee` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`requester`,`requestee`),
  KEY `requestee` (`requestee`),
  CONSTRAINT `phone_instagram_follow_requests_fk_1` FOREIGN KEY (`requester`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_instagram_follow_requests_fk_2` FOREIGN KEY (`requestee`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_instagram_follow_requests: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_instagram_likes
CREATE TABLE IF NOT EXISTS `phone_instagram_likes` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `is_comment` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `phone_instagram_likes_fk_1` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_instagram_likes: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_instagram_messages
CREATE TABLE IF NOT EXISTS `phone_instagram_messages` (
  `id` varchar(10) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `recipient` varchar(20) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `sender` (`sender`),
  KEY `recipient` (`recipient`),
  CONSTRAINT `phone_instagram_messages_fk_1` FOREIGN KEY (`sender`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_instagram_messages_fk_2` FOREIGN KEY (`recipient`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_instagram_messages: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_instagram_notifications
CREATE TABLE IF NOT EXISTS `phone_instagram_notifications` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `post_id` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `from` (`from`),
  CONSTRAINT `phone_instagram_notifications_fk_1` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_instagram_notifications_fk_2` FOREIGN KEY (`from`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_instagram_notifications: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_instagram_posts
CREATE TABLE IF NOT EXISTS `phone_instagram_posts` (
  `id` varchar(10) NOT NULL,
  `media` text DEFAULT NULL,
  `caption` varchar(500) NOT NULL DEFAULT '',
  `location` varchar(50) DEFAULT NULL,
  `like_count` int(11) NOT NULL DEFAULT 0,
  `comment_count` int(11) NOT NULL DEFAULT 0,
  `username` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_instagram_posts_fk_1` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_instagram_posts: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_instagram_stories
CREATE TABLE IF NOT EXISTS `phone_instagram_stories` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `image` varchar(500) NOT NULL,
  `metadata` longtext DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_instagram_stories_fk_1` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_instagram_stories: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_instagram_stories_views
CREATE TABLE IF NOT EXISTS `phone_instagram_stories_views` (
  `story_id` varchar(50) NOT NULL,
  `viewer` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`story_id`,`viewer`),
  KEY `viewer` (`viewer`),
  CONSTRAINT `phone_instagram_stories_views_fk_1` FOREIGN KEY (`story_id`) REFERENCES `phone_instagram_stories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phone_instagram_stories_views_fk_2` FOREIGN KEY (`viewer`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_instagram_stories_views: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_last_phone
CREATE TABLE IF NOT EXISTS `phone_last_phone` (
  `id` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_last_phone_fk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_last_phone: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_logged_in_accounts
CREATE TABLE IF NOT EXISTS `phone_logged_in_accounts` (
  `phone_number` varchar(15) NOT NULL,
  `app` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`phone_number`,`app`,`username`),
  CONSTRAINT `phone_logged_in_accounts_fk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_logged_in_accounts: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_mail_accounts
CREATE TABLE IF NOT EXISTS `phone_mail_accounts` (
  `address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_mail_accounts: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_mail_deleted
CREATE TABLE IF NOT EXISTS `phone_mail_deleted` (
  `message_id` int(10) unsigned NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`message_id`,`address`),
  KEY `address` (`address`),
  CONSTRAINT `phone_mail_deleted_fk_1` FOREIGN KEY (`message_id`) REFERENCES `phone_mail_messages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phone_mail_deleted_fk_2` FOREIGN KEY (`address`) REFERENCES `phone_mail_accounts` (`address`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_mail_deleted: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_mail_messages
CREATE TABLE IF NOT EXISTS `phone_mail_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recipient` varchar(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `attachments` longtext DEFAULT NULL,
  `actions` longtext DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_recipient` (`recipient`),
  KEY `idx_sender` (`sender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_mail_messages: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_maps_locations
CREATE TABLE IF NOT EXISTS `phone_maps_locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `x_pos` float NOT NULL,
  `y_pos` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_maps_locations_fk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_maps_locations: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_marketplace_posts
CREATE TABLE IF NOT EXISTS `phone_marketplace_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `attachments` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_marketplace_posts_fk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_marketplace_posts: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_message_channels
CREATE TABLE IF NOT EXISTS `phone_message_channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_group` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(50) DEFAULT NULL,
  `last_message` varchar(50) NOT NULL DEFAULT '',
  `last_message_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_message_channels: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_message_members
CREATE TABLE IF NOT EXISTS `phone_message_members` (
  `channel_id` int(11) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `is_owner` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `unread` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`channel_id`,`phone_number`),
  KEY `idx_members_phone_number` (`phone_number`),
  CONSTRAINT `phone_message_members_fk_1` FOREIGN KEY (`channel_id`) REFERENCES `phone_message_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_message_members: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_message_messages
CREATE TABLE IF NOT EXISTS `phone_message_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL,
  `sender` varchar(15) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  CONSTRAINT `phone_message_messages_fk_1` FOREIGN KEY (`channel_id`) REFERENCES `phone_message_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_message_messages: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_music_playlists
CREATE TABLE IF NOT EXISTS `phone_music_playlists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cover` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_music_playlists_fk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_music_playlists: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_music_saved_playlists
CREATE TABLE IF NOT EXISTS `phone_music_saved_playlists` (
  `playlist_id` int(10) unsigned NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`playlist_id`,`phone_number`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_music_saved_playlists_fk_1` FOREIGN KEY (`playlist_id`) REFERENCES `phone_music_playlists` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phone_music_saved_playlists_fk_2` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_music_saved_playlists: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_music_songs
CREATE TABLE IF NOT EXISTS `phone_music_songs` (
  `song_id` varchar(100) NOT NULL,
  `playlist_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`song_id`,`playlist_id`),
  KEY `playlist_id` (`playlist_id`),
  CONSTRAINT `phone_music_songs_fk_1` FOREIGN KEY (`playlist_id`) REFERENCES `phone_music_playlists` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_music_songs: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_notes
CREATE TABLE IF NOT EXISTS `phone_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` longtext DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_notes_fk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_notes: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_notifications
CREATE TABLE IF NOT EXISTS `phone_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `app` varchar(50) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `show_avatar` tinyint(1) DEFAULT 0,
  `custom_data` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_notifications_fk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_notifications: ~4 rows (approximately)
INSERT INTO `phone_notifications` (`id`, `phone_number`, `app`, `title`, `content`, `thumbnail`, `avatar`, `show_avatar`, `custom_data`, `timestamp`) VALUES
	(1, '6029933551', 'Services', 'New Message', 'Unconscious person', NULL, NULL, NULL, NULL, '2025-12-12 02:12:52'),
	(2, '6029933551', 'Services', 'New Message', '<!SENT-LOCATION-X=-319.23Y=-595.55!>', NULL, NULL, NULL, NULL, '2025-12-12 02:12:52'),
	(3, '6029933551', 'Services', 'New Message', 'Unconscious person', NULL, NULL, NULL, NULL, '2025-12-12 02:23:04'),
	(4, '6029933551', 'Services', 'New Message', '<!SENT-LOCATION-X=471.22Y=-985.46!>', NULL, NULL, NULL, NULL, '2025-12-12 02:23:05');

-- Dumping structure for table dx_advanced.phone_phones
CREATE TABLE IF NOT EXISTS `phone_phones` (
  `id` varchar(100) NOT NULL,
  `owner_id` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pin` varchar(4) DEFAULT NULL,
  `face_id` varchar(100) DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `is_setup` tinyint(1) DEFAULT 0,
  `assigned` tinyint(1) DEFAULT 0,
  `battery` int(11) NOT NULL DEFAULT 100,
  `last_seen` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_phones: ~5 rows (approximately)
INSERT INTO `phone_phones` (`id`, `owner_id`, `phone_number`, `name`, `pin`, `face_id`, `settings`, `is_setup`, `assigned`, `battery`, `last_seen`) VALUES
	('E49SWS1P', 'E49SWS1P', '6029933551', 'polo\'s Phone', '0000', NULL, '{"weather":{"celcius":false},"sound":{"callVolume":0.5,"texttone":"default","ringtone":"default","volume":0.5,"silent":false},"display":{"size":0.7,"brightness":1,"automatic":false,"theme":"dark"},"storage":{"total":128000000,"used":8576331},"locale":"en","time":{"twelveHourClock":false},"doNotDisturb":false,"security":{"faceId":false,"pinCode":true},"lockscreen":{"fontStyle":1,"layout":1,"color":"gradient"},"wallpaper":{"blur":false,"background":"cloud8"},"streamerMode":false,"notifications":[],"latestVersion":"2.5.0","phone":{"showCallerId":true},"version":"2.3.7","airplaneMode":false,"apps":[["Phone","Messages","Camera","Photos"],["Settings","AppStore","Clock","Mail","Weather","Wallet","Garage","Home","Maps","Notes","Calculator","VoiceMemo","Music","Services"]],"name":"polo\'s Phone"}', 1, 0, 100, '2025-12-13 15:01:15'),
	('GS2C93RQ', 'GS2C93RQ', '9076233378', NULL, NULL, NULL, NULL, 0, 0, 100, '2025-11-24 14:23:41'),
	('KF9K8Y0W', 'KF9K8Y0W', '5209343587', NULL, NULL, NULL, NULL, 0, 0, 100, '2025-11-24 14:20:38'),
	('license:dd7efc1d5db42797e8b4c351e1b536aee84c43e7', 'license:dd7efc1d5db42797e8b4c351e1b536aee84c43e7', '5205442855', NULL, NULL, NULL, NULL, 0, 0, 100, '2025-11-24 01:19:31'),
	('P27MZ277', 'P27MZ277', '6024956722', 'Mr\'s Phone', NULL, NULL, '{"apps":[["Phone","Messages","Camera","Photos"],["Settings","AppStore","Clock","Mail","Weather","Wallet","Garage","Home","Maps","Notes","Calculator","VoiceMemo","Music","Services"]],"locale":"en","streamerMode":false,"doNotDisturb":false,"latestVersion":"2.3.7","security":{"pinCode":false,"faceId":false},"lockscreen":{"color":"gradient","fontStyle":1,"layout":1},"version":"2.3.7","wallpaper":{"blur":false,"background":"cloud8"},"time":{"twelveHourClock":false},"notifications":[],"storage":{"total":128000000,"used":8576331},"airplaneMode":false,"weather":{"celcius":false},"name":"Mr\'s Phone","phone":{"showCallerId":true},"display":{"automatic":false,"brightness":1,"size":0.7,"theme":"dark"},"sound":{"callVolume":0.5,"texttone":"default","silent":false,"ringtone":"default","volume":0.5}}', 1, 0, 100, '2025-11-24 12:29:51'),
	('U4N41JY0', 'U4N41JY0', '4804410971', 'Mr\'s Phone', NULL, NULL, '{"wallpaper":{"background":"cloud8","blur":false},"streamerMode":false,"storage":{"used":8576331,"total":128000000},"phone":{"showCallerId":true},"doNotDisturb":false,"display":{"theme":"dark","size":0.7,"brightness":1,"automatic":false},"security":{"faceId":false,"pinCode":false},"version":"2.3.7","lockscreen":{"layout":1,"color":"gradient","fontStyle":1},"latestVersion":"2.3.7","apps":[["Phone","Messages","Camera","Photos"],["Settings","AppStore","Clock","Mail","Weather","Wallet","Garage","Home","Maps","Notes","Calculator","VoiceMemo","Music","Services"]],"notifications":[],"sound":{"callVolume":0.5,"ringtone":"default","volume":0.5,"silent":false,"texttone":"default"},"time":{"twelveHourClock":false},"weather":{"celcius":false},"name":"Mr\'s Phone","airplaneMode":false,"locale":"en"}', 1, 0, 100, '2025-12-13 09:33:28');

-- Dumping structure for table dx_advanced.phone_phone_blocked_numbers
CREATE TABLE IF NOT EXISTS `phone_phone_blocked_numbers` (
  `phone_number` varchar(15) NOT NULL,
  `blocked_number` varchar(15) NOT NULL,
  PRIMARY KEY (`phone_number`,`blocked_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_phone_blocked_numbers: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_phone_calls
CREATE TABLE IF NOT EXISTS `phone_phone_calls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caller` varchar(15) NOT NULL,
  `callee` varchar(15) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `answered` tinyint(1) DEFAULT 0,
  `hide_caller_id` tinyint(1) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_calls_missed` (`callee`,`answered`),
  KEY `idx_calls_callee_id` (`callee`),
  KEY `idx_calls_caller_id` (`caller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_phone_calls: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_phone_contacts
CREATE TABLE IF NOT EXISTS `phone_phone_contacts` (
  `contact_phone_number` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL DEFAULT '',
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `profile_image` varchar(500) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `favourite` tinyint(1) DEFAULT 0,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`contact_phone_number`,`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_phone_contacts: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_phone_voicemail
CREATE TABLE IF NOT EXISTS `phone_phone_voicemail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caller` varchar(15) NOT NULL,
  `callee` varchar(15) NOT NULL,
  `url` varchar(500) NOT NULL,
  `duration` int(11) NOT NULL,
  `hide_caller_id` tinyint(1) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_phone_voicemail: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_photos
CREATE TABLE IF NOT EXISTS `phone_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `link` varchar(500) NOT NULL,
  `is_video` tinyint(1) DEFAULT 0,
  `size` float NOT NULL DEFAULT 0,
  `metadata` varchar(20) DEFAULT NULL,
  `is_favourite` tinyint(1) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_photos_fk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_photos: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_photo_albums
CREATE TABLE IF NOT EXISTS `phone_photo_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `title` varchar(100) NOT NULL,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_photo_albums_fk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_photo_albums: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_photo_album_members
CREATE TABLE IF NOT EXISTS `phone_photo_album_members` (
  `album_id` int(11) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`album_id`,`phone_number`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_photo_album_members_fk_1` FOREIGN KEY (`album_id`) REFERENCES `phone_photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_photo_album_members_fk_2` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_photo_album_members: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_photo_album_photos
CREATE TABLE IF NOT EXISTS `phone_photo_album_photos` (
  `album_id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  PRIMARY KEY (`album_id`,`photo_id`),
  KEY `photo_id` (`photo_id`),
  CONSTRAINT `phone_photo_album_photos_fk_1` FOREIGN KEY (`album_id`) REFERENCES `phone_photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_photo_album_photos_fk_2` FOREIGN KEY (`photo_id`) REFERENCES `phone_photos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_photo_album_photos: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_services_channels
CREATE TABLE IF NOT EXISTS `phone_services_channels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `company` varchar(50) NOT NULL,
  `last_message` varchar(100) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_services_channels: ~2 rows (approximately)
INSERT INTO `phone_services_channels` (`id`, `phone_number`, `company`, `last_message`, `timestamp`) VALUES
	(1, '4804410971', 'ambulance', '<!SENT-LOCATION-X=-319.23Y=-595.55!>', '2025-12-12 02:12:52'),
	(2, '6029933551', 'ambulance', '<!SENT-LOCATION-X=471.22Y=-985.46!>', '2025-12-12 02:23:05');

-- Dumping structure for table dx_advanced.phone_services_messages
CREATE TABLE IF NOT EXISTS `phone_services_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel_id` int(10) unsigned NOT NULL,
  `sender` varchar(15) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `x_pos` int(11) DEFAULT NULL,
  `y_pos` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  CONSTRAINT `phone_services_messages_fk_1` FOREIGN KEY (`channel_id`) REFERENCES `phone_services_channels` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_services_messages: ~4 rows (approximately)
INSERT INTO `phone_services_messages` (`id`, `channel_id`, `sender`, `message`, `x_pos`, `y_pos`, `timestamp`) VALUES
	(1, 1, '4804410971', 'Unconscious person', -319, -596, '2025-12-12 02:12:52'),
	(2, 1, '4804410971', '<!SENT-LOCATION-X=-319.23Y=-595.55!>', -319, -596, '2025-12-12 02:12:52'),
	(3, 2, '6029933551', 'Unconscious person', 471, -985, '2025-12-12 02:23:04'),
	(4, 2, '6029933551', '<!SENT-LOCATION-X=471.22Y=-985.46!>', 471, -985, '2025-12-12 02:23:05');

-- Dumping structure for table dx_advanced.phone_tiktok_accounts
CREATE TABLE IF NOT EXISTS `phone_tiktok_accounts` (
  `name` varchar(30) NOT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `follower_count` int(11) NOT NULL DEFAULT 0,
  `following_count` int(11) NOT NULL DEFAULT 0,
  `like_count` int(11) NOT NULL DEFAULT 0,
  `video_count` int(11) NOT NULL DEFAULT 0,
  `twitter` varchar(20) DEFAULT NULL,
  `instagram` varchar(20) DEFAULT NULL,
  `show_likes` tinyint(1) DEFAULT 1,
  `phone_number` varchar(15) NOT NULL,
  `date_joined` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`username`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_tiktok_accounts_fk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_tiktok_accounts: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_tiktok_channels
CREATE TABLE IF NOT EXISTS `phone_tiktok_channels` (
  `id` varchar(10) NOT NULL,
  `last_message` varchar(50) NOT NULL,
  `member_1` varchar(20) NOT NULL,
  `member_2` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_1` (`member_1`,`member_2`),
  KEY `member_2` (`member_2`),
  CONSTRAINT `phone_tiktok_channels_fk_1` FOREIGN KEY (`member_1`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_channels_fk_2` FOREIGN KEY (`member_2`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_tiktok_channels: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_tiktok_comments
CREATE TABLE IF NOT EXISTS `phone_tiktok_comments` (
  `id` varchar(10) NOT NULL,
  `reply_to` varchar(10) DEFAULT NULL,
  `video_id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `comment` varchar(550) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `replies` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `video_id` (`video_id`),
  KEY `username` (`username`),
  KEY `reply_to` (`reply_to`),
  CONSTRAINT `phone_tiktok_comments_fk_1` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_comments_fk_2` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_comments_fk_3` FOREIGN KEY (`reply_to`) REFERENCES `phone_tiktok_comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_tiktok_comments: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_tiktok_comments_likes
CREATE TABLE IF NOT EXISTS `phone_tiktok_comments_likes` (
  `username` varchar(20) NOT NULL,
  `comment_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`comment_id`),
  KEY `comment_id` (`comment_id`),
  CONSTRAINT `phone_tiktok_comments_likes_fk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_comments_likes_fk_2` FOREIGN KEY (`comment_id`) REFERENCES `phone_tiktok_comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_tiktok_comments_likes: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_tiktok_follows
CREATE TABLE IF NOT EXISTS `phone_tiktok_follows` (
  `followed` varchar(20) NOT NULL,
  `follower` varchar(20) NOT NULL,
  PRIMARY KEY (`followed`,`follower`),
  KEY `follower` (`follower`),
  CONSTRAINT `phone_tiktok_follows_fk_1` FOREIGN KEY (`followed`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_follows_fk_2` FOREIGN KEY (`follower`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_tiktok_follows: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_tiktok_likes
CREATE TABLE IF NOT EXISTS `phone_tiktok_likes` (
  `username` varchar(20) NOT NULL,
  `video_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`video_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `phone_tiktok_likes_fk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_likes_fk_2` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_tiktok_likes: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_tiktok_messages
CREATE TABLE IF NOT EXISTS `phone_tiktok_messages` (
  `id` varchar(10) NOT NULL,
  `channel_id` varchar(10) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `content` varchar(500) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  KEY `sender` (`sender`),
  CONSTRAINT `phone_tiktok_messages_fk_1` FOREIGN KEY (`channel_id`) REFERENCES `phone_tiktok_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_messages_fk_2` FOREIGN KEY (`sender`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_tiktok_messages: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_tiktok_notifications
CREATE TABLE IF NOT EXISTS `phone_tiktok_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `video_id` varchar(10) DEFAULT NULL,
  `comment_id` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `from` (`from`),
  KEY `video_id` (`video_id`),
  KEY `comment_id` (`comment_id`),
  CONSTRAINT `phone_tiktok_notifications_fk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_notifications_fk_2` FOREIGN KEY (`from`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_notifications_fk_3` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_notifications_fk_4` FOREIGN KEY (`comment_id`) REFERENCES `phone_tiktok_comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_tiktok_notifications: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_tiktok_pinned_videos
CREATE TABLE IF NOT EXISTS `phone_tiktok_pinned_videos` (
  `username` varchar(20) NOT NULL,
  `video_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`video_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `phone_tiktok_pinned_videos_fk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_pinned_videos_fk_2` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_tiktok_pinned_videos: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_tiktok_saves
CREATE TABLE IF NOT EXISTS `phone_tiktok_saves` (
  `username` varchar(20) NOT NULL,
  `video_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`video_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `phone_tiktok_saves_fk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_saves_fk_2` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_tiktok_saves: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_tiktok_unread_messages
CREATE TABLE IF NOT EXISTS `phone_tiktok_unread_messages` (
  `username` varchar(20) NOT NULL,
  `channel_id` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`username`,`channel_id`),
  KEY `channel_id` (`channel_id`),
  CONSTRAINT `phone_tiktok_unread_messages_fk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_unread_messages_fk_2` FOREIGN KEY (`channel_id`) REFERENCES `phone_tiktok_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_tiktok_unread_messages: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_tiktok_videos
CREATE TABLE IF NOT EXISTS `phone_tiktok_videos` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `src` varchar(500) NOT NULL,
  `caption` varchar(100) DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `music` text DEFAULT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `saves` int(11) NOT NULL DEFAULT 0,
  `pinned_comment` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_tiktok_videos_fk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_tiktok_videos: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_tiktok_views
CREATE TABLE IF NOT EXISTS `phone_tiktok_views` (
  `username` varchar(20) NOT NULL,
  `video_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`video_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `phone_tiktok_views_fk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_views_fk_2` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_tiktok_views: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_tinder_accounts
CREATE TABLE IF NOT EXISTS `phone_tinder_accounts` (
  `name` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `photos` text DEFAULT NULL,
  `bio` varchar(500) DEFAULT NULL,
  `dob` date NOT NULL,
  `is_male` tinyint(1) NOT NULL,
  `interested_men` tinyint(1) NOT NULL,
  `interested_women` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `last_seen` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`phone_number`),
  CONSTRAINT `phone_tinder_accounts_fk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_tinder_accounts: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_tinder_matches
CREATE TABLE IF NOT EXISTS `phone_tinder_matches` (
  `phone_number_1` varchar(15) NOT NULL,
  `phone_number_2` varchar(15) NOT NULL,
  `latest_message` varchar(1000) DEFAULT NULL,
  `latest_message_timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`phone_number_1`,`phone_number_2`),
  KEY `phone_number_2` (`phone_number_2`),
  CONSTRAINT `phone_tinder_matches_fk_1` FOREIGN KEY (`phone_number_1`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tinder_matches_fk_2` FOREIGN KEY (`phone_number_2`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_tinder_matches: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_tinder_messages
CREATE TABLE IF NOT EXISTS `phone_tinder_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(15) NOT NULL,
  `recipient` varchar(15) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `sender` (`sender`),
  KEY `recipient` (`recipient`),
  CONSTRAINT `phone_tinder_messages_fk_1` FOREIGN KEY (`sender`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tinder_messages_fk_2` FOREIGN KEY (`recipient`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_tinder_messages: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_tinder_swipes
CREATE TABLE IF NOT EXISTS `phone_tinder_swipes` (
  `swiper` varchar(15) NOT NULL,
  `swipee` varchar(15) NOT NULL,
  `liked` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`swiper`,`swipee`),
  KEY `swipee` (`swipee`),
  CONSTRAINT `phone_tinder_swipes_fk_1` FOREIGN KEY (`swiper`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tinder_swipes_fk_2` FOREIGN KEY (`swipee`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_tinder_swipes: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_twitter_accounts
CREATE TABLE IF NOT EXISTS `phone_twitter_accounts` (
  `display_name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `profile_image` varchar(500) DEFAULT NULL,
  `profile_header` varchar(500) DEFAULT NULL,
  `pinned_tweet` varchar(50) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `follower_count` int(11) NOT NULL DEFAULT 0,
  `following_count` int(11) NOT NULL DEFAULT 0,
  `private` tinyint(1) DEFAULT 0,
  `date_joined` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`username`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_twitter_accounts_fk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_twitter_accounts: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_twitter_follows
CREATE TABLE IF NOT EXISTS `phone_twitter_follows` (
  `followed` varchar(20) NOT NULL,
  `follower` varchar(20) NOT NULL,
  `notifications` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`followed`,`follower`),
  KEY `follower` (`follower`),
  CONSTRAINT `phone_twitter_follows_fk_1` FOREIGN KEY (`followed`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_twitter_follows_fk_2` FOREIGN KEY (`follower`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_twitter_follows: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_twitter_follow_requests
CREATE TABLE IF NOT EXISTS `phone_twitter_follow_requests` (
  `requester` varchar(20) NOT NULL,
  `requestee` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`requester`,`requestee`),
  KEY `requestee` (`requestee`),
  CONSTRAINT `phone_twitter_follow_requests_fk_1` FOREIGN KEY (`requester`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_twitter_follow_requests_fk_2` FOREIGN KEY (`requestee`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_twitter_follow_requests: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_twitter_hashtags
CREATE TABLE IF NOT EXISTS `phone_twitter_hashtags` (
  `hashtag` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `last_used` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`hashtag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_twitter_hashtags: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_twitter_likes
CREATE TABLE IF NOT EXISTS `phone_twitter_likes` (
  `tweet_id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`tweet_id`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `phone_twitter_likes_fk_1` FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_twitter_likes: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_twitter_messages
CREATE TABLE IF NOT EXISTS `phone_twitter_messages` (
  `id` varchar(10) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `recipient` varchar(20) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `sender` (`sender`),
  KEY `recipient` (`recipient`),
  CONSTRAINT `phone_twitter_messages_fk_1` FOREIGN KEY (`sender`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_twitter_messages_fk_2` FOREIGN KEY (`recipient`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_twitter_messages: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_twitter_notifications
CREATE TABLE IF NOT EXISTS `phone_twitter_notifications` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `tweet_id` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `from` (`from`),
  CONSTRAINT `phone_twitter_notifications_fk_1` FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_twitter_notifications_fk_2` FOREIGN KEY (`from`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_twitter_notifications: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_twitter_promoted
CREATE TABLE IF NOT EXISTS `phone_twitter_promoted` (
  `tweet_id` varchar(50) NOT NULL,
  `promotions` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tweet_id`),
  CONSTRAINT `phone_twitter_promoted_fk_1` FOREIGN KEY (`tweet_id`) REFERENCES `phone_twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_twitter_promoted: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_twitter_retweets
CREATE TABLE IF NOT EXISTS `phone_twitter_retweets` (
  `tweet_id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`tweet_id`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `phone_twitter_retweets_fk_1` FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_twitter_retweets: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_twitter_tweets
CREATE TABLE IF NOT EXISTS `phone_twitter_tweets` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `content` varchar(280) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `reply_to` varchar(50) DEFAULT NULL,
  `like_count` int(11) DEFAULT 0,
  `reply_count` int(11) DEFAULT 0,
  `retweet_count` int(11) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_twitter_tweets_fk_1` FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_twitter_tweets: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_voice_memos_recordings
CREATE TABLE IF NOT EXISTS `phone_voice_memos_recordings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `file_url` varchar(500) NOT NULL,
  `file_length` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_voice_memos_recordings_fk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_voice_memos_recordings: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_wallet_transactions
CREATE TABLE IF NOT EXISTS `phone_wallet_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `amount` int(11) NOT NULL,
  `company` varchar(50) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_wallet_transactions_fk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_wallet_transactions: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.phone_yellow_pages_posts
CREATE TABLE IF NOT EXISTS `phone_yellow_pages_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `attachment` varchar(500) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.phone_yellow_pages_posts: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.players
CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned DEFAULT NULL,
  `citizenid` varchar(50) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` text NOT NULL,
  `charinfo` text DEFAULT NULL,
  `job` text NOT NULL,
  `gang` text DEFAULT NULL,
  `position` text NOT NULL,
  `metadata` text NOT NULL,
  `inventory` longtext DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_logged_out` timestamp NULL DEFAULT NULL,
  `warns` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`citizenid`),
  KEY `id` (`id`),
  KEY `last_updated` (`last_updated`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=591 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.players: ~3 rows (approximately)
INSERT INTO `players` (`id`, `userId`, `citizenid`, `cid`, `license`, `name`, `money`, `charinfo`, `job`, `gang`, `position`, `metadata`, `inventory`, `phone_number`, `last_updated`, `last_logged_out`, `warns`) VALUES
	(464, 2, 'E49SWS1P', 1, 'license2:c13c265f7f23e6bafc2dfc3fbc1381aa4138d5fb', 'TTMPOLO', '{"crypto":0,"bank":9099990879,"cash":10000303}', '{"gender":0,"firstname":"polo","phone":"6545288800","nationality":"United States","id":1,"dob":"2000-10-17","account":"US08QBX7871589696","birthdate":"2000-10-17","lastname":"max","cid":1,"backstory":"placeholder backstory"}', '{"grade":{"name":"Chief","level":4},"type":"ems","isboss":true,"label":"EMS","name":"ambulance","onduty":true,"bankAuth":true,"payment":150}', '{"label":"No Gang","name":"none","grade":{"name":"Unaffiliated","level":0},"bankAuth":false,"isboss":false}', '{"x":-345.3758239746094,"y":-610.3384399414063,"z":37.3341064453125,"w":28.34645652770996}', '{"optin":true,"stress":0,"injail":0,"jailitems":[],"bloodtype":"B+","ishandcuffed":false,"tracker":false,"callsign":"NO CALLSIGN","inside":{"apartment":[]},"fingerprint":"8CZ2V60R73P200V","isdead":false,"status":[],"phone":[],"phonedata":{"SerialNumber":87395238,"InstalledApps":[]},"hunger":83.19999999999999,"inlaststand":false,"health":200,"walletid":"QB-49165406","craftingrep":0,"attachmentcraftingrep":0,"dealerrep":0,"jobrep":{"hotdog":0,"taxi":0,"trucker":0,"tow":0},"armor":0,"licences":{"driver":true,"id":true,"weapon":false},"criminalrecord":{"hasRecord":false},"thirst":84.80000000000001}', '[{"count":1,"slot":1,"name":"phone"},{"count":1,"slot":21,"name":"medbag"},{"count":10000303,"slot":16,"name":"money"},{"count":1,"slot":47,"metadata":{"firstname":"polo","birthdate":"2000-10-17","type":"Class C Driver License","lastname":"max"},"name":"driver_license"},{"count":1,"slot":11,"name":"ifaks"},{"count":2,"slot":5,"name":"cola"},{"count":1,"slot":6,"metadata":{"durability":1766242412,"degrade":10080},"name":"tablet"},{"count":1,"slot":46,"metadata":{"firstname":"polo","citizenid":"E49SWS1P","gender":0,"mugShot":"data:image/png;base64,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","birthdate":"2000-10-17","nationality":"United States","lastname":"max"},"name":"id_card"}]', NULL, '2025-12-13 16:55:15', '2025-12-13 14:57:31', 0),
	(81, 1, 'U4N41JY0', 1, 'license2:a045ed84bc7b147ab67442c4be4c70a4bb7d0ad5', 'DEV Dx', '{"bank":5317,"crypto":0,"cash":753}', '{"id":1,"nationality":"Bosnia and Herzegovina","birthdate":"1995-05-05","backstory":"placeholder backstory","phone":"4085010062","cid":1,"gender":0,"firstname":"Mr","account":"US01QBX4458775620","lastname":"Dx","dob":"1995-05-05"}', '{"name":"mechanic","label":"Mechanic","grade":{"name":"Advanced","level":3},"type":"mechanic","bankAuth":false,"isboss":false,"onduty":true,"payment":125}', '{"name":"none","label":"No Gang","bankAuth":false,"grade":{"name":"Unaffiliated","level":0},"isboss":false}', '{"x":28.54945373535156,"y":-1351.7537841796876,"z":29.3304443359375,"w":107.71653747558594}', '{"inlaststand":false,"fingerprint":"L610DCFI572A1Y4","health":200,"walletid":"QB-52736321","phonedata":{"SerialNumber":36033591,"InstalledApps":[]},"inside":{"apartment":[]},"isdead":false,"jobrep":{"tow":0,"hotdog":0,"taxi":0,"trucker":0},"criminalrecord":{"hasRecord":false},"thirst":73.40000000000002,"status":[],"licences":{"id":true,"driver":true,"weapon":false},"craftingrep":0,"tracker":false,"dealerrep":0,"armor":0,"ishandcuffed":false,"phone":[],"bloodtype":"B+","attachmentcraftingrep":0,"hunger":70.59999999999998,"stress":0,"callsign":"NO CALLSIGN","injail":0,"jailitems":[],"optin":true}', '[{"count":753,"name":"money","slot":1},{"count":1,"name":"phone","slot":2},{"count":1,"metadata":{"gender":0,"firstname":"Mr","birthdate":"1995-05-05","citizenid":"U4N41JY0","lastname":"Dx","nationality":"Bosnia and Herzegovina","mugShot":"data:image/png;base64,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"},"name":"id_card","slot":3},{"count":1,"metadata":{"firstname":"Mr","birthdate":"1995-05-05","lastname":"Dx","type":"Class C Driver License","mugShot":"data:image/png;base64,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"},"name":"driver_license","slot":4},{"count":1,"metadata":{"components":[],"registered":"Mr Dx","serial":"586260POL115347","ammo":0,"durability":100},"name":"WEAPON_PDCM607","slot":5},{"count":1,"name":"mechanic_tablet","slot":6},{"count":1,"name":"ammo-9","slot":10}]', NULL, '2025-12-13 09:34:29', '2025-12-13 09:34:29', 0),
	(460, 1, 'X0472V1A', 1, 'license2:a045ed84bc7b147ab67442c4be4c70a4bb7d0ad5', 'DEV Dx', '{"cash":500,"crypto":0,"bank":5000}', '{"phone":"3571455976","firstname":"Mr","account":"US01QBX2985474969","nationality":"Algeria","backstory":"placeholder backstory","gender":0,"cid":1,"lastname":"Dx","birthdate":"2025-12-10"}', '{"grade":{"name":"Freelancer","level":0},"onduty":true,"bankAuth":false,"name":"unemployed","label":"Civilian","isboss":false,"payment":10}', '{"grade":{"name":"Unaffiliated","level":0},"name":"none","label":"No Gang","bankAuth":false,"isboss":false}', '{"x":-1005.8505249023438,"y":-477.3362731933594,"z":50.02197265625,"w":19.84251976013183}', '{"armor":0,"fingerprint":"W3ZY9T2482MJD3Z","health":200,"tracker":false,"isdead":false,"phonedata":{"SerialNumber":21129431,"InstalledApps":[]},"stress":0,"thirst":100,"status":[],"bloodtype":"B-","inside":{"apartment":[]},"walletid":"QB-29440120","phone":[],"hunger":100,"jobrep":{"trucker":0,"hotdog":0,"tow":0,"taxi":0},"inlaststand":false,"licences":{"id":true,"driver":true,"weapon":false},"ishandcuffed":false,"jailitems":[],"criminalrecord":{"hasRecord":false},"attachmentcraftingrep":0,"callsign":"NO CALLSIGN","craftingrep":0,"injail":0,"optin":false,"dealerrep":0}', '[{"name":"money","slot":1,"count":500}]', NULL, '2025-12-10 02:51:46', '2025-12-10 02:51:46', 0);

-- Dumping structure for table dx_advanced.playerskins
CREATE TABLE IF NOT EXISTS `playerskins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.playerskins: ~4 rows (approximately)
INSERT INTO `playerskins` (`id`, `citizenid`, `model`, `skin`, `active`) VALUES
	(3, 'P27MZ277', 'mp_m_freemode_01', '{"headBlend":{"skinSecond":0,"shapeSecond":0,"skinThird":0,"thirdMix":0,"skinFirst":0,"shapeMix":0,"skinMix":0,"shapeThird":0,"shapeFirst":0},"tattoos":[],"faceFeatures":{"lipsThickness":0,"nosePeakSize":0,"noseBoneTwist":0,"noseBoneHigh":0,"jawBoneBackSize":0,"jawBoneWidth":0,"chinHole":0,"nosePeakLowering":0,"chinBoneLenght":0,"eyeBrownForward":0,"nosePeakHigh":0,"cheeksBoneWidth":0,"eyesOpening":0,"cheeksWidth":0,"noseWidth":0,"chinBoneSize":0,"eyeBrownHigh":0,"chinBoneLowering":0,"cheeksBoneHigh":0,"neckThickness":0},"hair":{"color":-1,"style":-1,"texture":-1,"highlight":-1},"components":[{"drawable":-1,"texture":-1,"component_id":0},{"drawable":-1,"texture":-1,"component_id":1},{"drawable":-1,"texture":-1,"component_id":2},{"drawable":-1,"texture":-1,"component_id":3},{"drawable":-1,"texture":-1,"component_id":4},{"drawable":-1,"texture":-1,"component_id":5},{"drawable":-1,"texture":-1,"component_id":6},{"drawable":-1,"texture":-1,"component_id":7},{"drawable":-1,"texture":-1,"component_id":8},{"drawable":-1,"texture":-1,"component_id":9},{"drawable":-1,"texture":-1,"component_id":10},{"drawable":-1,"texture":-1,"component_id":11}],"headOverlays":{"beard":{"opacity":0,"secondColor":0,"style":0,"color":0},"blemishes":{"opacity":0,"secondColor":0,"style":0,"color":0},"lipstick":{"opacity":0,"secondColor":0,"style":0,"color":0},"chestHair":{"opacity":0,"secondColor":0,"style":0,"color":0},"makeUp":{"opacity":0,"secondColor":0,"style":0,"color":0},"complexion":{"opacity":0,"secondColor":0,"style":0,"color":0},"blush":{"opacity":0,"secondColor":0,"style":0,"color":0},"ageing":{"opacity":0,"secondColor":0,"style":0,"color":0},"moleAndFreckles":{"opacity":0,"secondColor":0,"style":0,"color":0},"eyebrows":{"opacity":0,"secondColor":0,"style":0,"color":0},"sunDamage":{"opacity":0,"secondColor":0,"style":0,"color":0},"bodyBlemishes":{"opacity":0,"secondColor":0,"style":0,"color":0}},"model":"mp_m_freemode_01","eyeColor":-1,"props":[{"drawable":-1,"prop_id":0,"texture":-1},{"drawable":-1,"prop_id":1,"texture":-1},{"drawable":-1,"prop_id":2,"texture":-1},{"drawable":-1,"prop_id":6,"texture":-1},{"drawable":-1,"prop_id":7,"texture":-1}]}', 1),
	(5, 'GS2C93RQ', '1885233650', '{"model":"mp_m_freemode_01","blush":{"texture":1,"defaultItem":-1,"item":-1,"defaultTexture":1},"eye_opening":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"jaw_bone_width":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"chimp_bone_lenght":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"nose_2":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"t-shirt":{"texture":0,"defaultItem":15,"item":164,"defaultTexture":0},"nose_1":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"bag":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"arms":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"shoes":{"texture":0,"defaultItem":1,"item":1,"defaultTexture":0},"facemix":{"skinMix":0,"defaultSkinMix":0.0,"defaultShapeMix":0.0,"shapeMix":0},"cheek_2":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"nose_4":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"bracelet":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0},"chimp_hole":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"hat":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0},"eyebrown_forward":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"ear":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0},"moles":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0},"chimp_bone_lowering":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"eyebrown_high":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"nose_3":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"decals":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"makeup":{"texture":1,"defaultItem":-1,"item":-1,"defaultTexture":1},"vest":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"lipstick":{"texture":1,"defaultItem":-1,"item":-1,"defaultTexture":1},"neck_thikness":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"beard":{"texture":1,"defaultItem":-1,"item":-1,"defaultTexture":1},"migrate":"true","face":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"torso2":{"texture":0,"defaultItem":0,"item":335,"defaultTexture":0},"face2":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"pants":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"cheek_1":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"eyebrows":{"texture":1,"defaultItem":-1,"item":-1,"defaultTexture":1},"mask":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"lips_thickness":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"ageing":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0},"glass":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"accessory":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"nose_5":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"watch":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0},"nose_0":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"eye_color":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0},"jaw_bone_back_lenght":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"chimp_bone_width":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"hair":{"texture":0,"defaultItem":0,"item":42,"defaultTexture":0},"cheek_3":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0}}', 1),
	(14, 'U4N41JY0', 'mp_m_freemode_01', '{"model":"mp_m_freemode_01","hair":{"style":0,"highlight":0,"texture":0,"color":0},"headBlend":{"skinThird":0,"skinSecond":0,"shapeMix":0,"shapeSecond":0,"skinFirst":0,"skinMix":0,"thirdMix":0,"shapeFirst":0,"shapeThird":0},"headOverlays":{"beard":{"style":0,"color":0,"opacity":0,"secondColor":0},"ageing":{"style":0,"color":0,"opacity":0,"secondColor":0},"eyebrows":{"style":0,"color":0,"opacity":0,"secondColor":0},"blush":{"style":0,"color":0,"opacity":0,"secondColor":0},"complexion":{"style":0,"color":0,"opacity":0,"secondColor":0},"blemishes":{"style":0,"color":0,"opacity":0,"secondColor":0},"bodyBlemishes":{"style":0,"color":0,"opacity":0,"secondColor":0},"makeUp":{"style":0,"color":0,"opacity":0,"secondColor":0},"lipstick":{"style":0,"color":0,"opacity":0,"secondColor":0},"moleAndFreckles":{"style":0,"color":0,"opacity":0,"secondColor":0},"sunDamage":{"style":0,"color":0,"opacity":0,"secondColor":0},"chestHair":{"style":0,"color":0,"opacity":0,"secondColor":0}},"eyeColor":0,"faceFeatures":{"nosePeakHigh":0,"noseBoneHigh":0,"jawBoneBackSize":0,"lipsThickness":0,"chinBoneSize":0,"eyesOpening":0,"nosePeakLowering":0,"nosePeakSize":0,"cheeksWidth":0,"noseWidth":0,"eyeBrownForward":0,"chinBoneLowering":0,"neckThickness":0,"cheeksBoneHigh":0,"chinHole":0,"eyeBrownHigh":0,"cheeksBoneWidth":0,"jawBoneWidth":0,"noseBoneTwist":0,"chinBoneLenght":0},"components":[{"component_id":0,"texture":0,"drawable":0},{"component_id":1,"texture":0,"drawable":0},{"component_id":2,"texture":0,"drawable":0},{"component_id":3,"texture":0,"drawable":0},{"component_id":4,"texture":0,"drawable":28},{"component_id":5,"texture":0,"drawable":0},{"component_id":6,"texture":0,"drawable":0},{"component_id":7,"texture":0,"drawable":0},{"component_id":8,"texture":2,"drawable":60},{"component_id":9,"texture":0,"drawable":0},{"component_id":10,"texture":0,"drawable":0},{"component_id":11,"texture":0,"drawable":558}],"tattoos":[],"props":[{"drawable":-1,"prop_id":0,"texture":-1},{"drawable":-1,"prop_id":1,"texture":-1},{"drawable":-1,"prop_id":2,"texture":-1},{"drawable":-1,"prop_id":6,"texture":-1},{"drawable":-1,"prop_id":7,"texture":-1}]}', 1),
	(15, 'E49SWS1P', 'mp_m_freemode_01', '{"headOverlays":{"bodyBlemishes":{"color":0,"style":0,"secondColor":0,"opacity":0},"eyebrows":{"color":0,"style":0,"secondColor":0,"opacity":0},"blush":{"color":0,"style":0,"secondColor":0,"opacity":0},"ageing":{"color":0,"style":0,"secondColor":0,"opacity":0},"beard":{"color":0,"style":0,"secondColor":0,"opacity":0},"complexion":{"color":0,"style":0,"secondColor":0,"opacity":0},"makeUp":{"color":0,"style":0,"secondColor":0,"opacity":0},"moleAndFreckles":{"color":0,"style":0,"secondColor":0,"opacity":0},"lipstick":{"color":0,"style":0,"secondColor":0,"opacity":0},"blemishes":{"color":0,"style":0,"secondColor":0,"opacity":0},"sunDamage":{"color":0,"style":0,"secondColor":0,"opacity":0},"chestHair":{"color":0,"style":0,"secondColor":0,"opacity":0}},"hair":{"color":61,"style":75,"texture":0,"highlight":54},"props":[{"drawable":-1,"texture":-1,"prop_id":0},{"drawable":-1,"texture":-1,"prop_id":1},{"drawable":-1,"texture":-1,"prop_id":2},{"drawable":-1,"texture":-1,"prop_id":6},{"drawable":-1,"texture":-1,"prop_id":7}],"model":"mp_m_freemode_01","faceFeatures":{"noseBoneHigh":0,"nosePeakLowering":0,"chinBoneLowering":0,"jawBoneWidth":0,"cheeksWidth":0,"noseBoneTwist":0,"cheeksBoneHigh":0,"eyesOpening":0,"eyeBrownForward":0,"chinHole":0,"eyeBrownHigh":0,"neckThickness":0,"nosePeakSize":0,"chinBoneLenght":0,"chinBoneSize":0,"noseWidth":0,"jawBoneBackSize":0,"nosePeakHigh":0,"lipsThickness":0,"cheeksBoneWidth":0},"eyeColor":0,"tattoos":[],"components":[{"drawable":0,"texture":0,"component_id":0},{"drawable":0,"texture":0,"component_id":1},{"drawable":75,"texture":0,"component_id":2},{"drawable":0,"texture":0,"component_id":3},{"drawable":142,"texture":0,"component_id":4},{"drawable":0,"texture":0,"component_id":5},{"drawable":112,"texture":0,"component_id":6},{"drawable":0,"texture":0,"component_id":7},{"drawable":0,"texture":0,"component_id":8},{"drawable":0,"texture":0,"component_id":9},{"drawable":0,"texture":0,"component_id":10},{"drawable":526,"texture":0,"component_id":11}],"headBlend":{"shapeFirst":0,"skinThird":0,"thirdMix":0,"skinSecond":1,"shapeMix":0,"shapeSecond":28,"skinFirst":36,"skinMix":0,"shapeThird":7}}', 1);

-- Dumping structure for table dx_advanced.player_groups
CREATE TABLE IF NOT EXISTS `player_groups` (
  `citizenid` varchar(50) NOT NULL,
  `group` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `grade` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`citizenid`,`type`,`group`),
  CONSTRAINT `fk_citizenid` FOREIGN KEY (`citizenid`) REFERENCES `players` (`citizenid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.player_groups: ~2 rows (approximately)
INSERT INTO `player_groups` (`citizenid`, `group`, `type`, `grade`) VALUES
	('E49SWS1P', 'ambulance', 'job', 4),
	('U4N41JY0', 'mechanic', 'job', 3);

-- Dumping structure for table dx_advanced.player_jobs_activity
CREATE TABLE IF NOT EXISTS `player_jobs_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(255) NOT NULL,
  `last_checkin` int(11) NOT NULL,
  `last_checkout` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id` DESC) USING BTREE,
  KEY `last_checkout` (`last_checkout`) USING BTREE,
  KEY `citizenid_job` (`citizenid`,`job`) USING BTREE,
  CONSTRAINT `player_jobs_activity_fk_1` FOREIGN KEY (`citizenid`) REFERENCES `players` (`citizenid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.player_jobs_activity: ~2 rows (approximately)
INSERT INTO `player_jobs_activity` (`id`, `citizenid`, `job`, `last_checkin`, `last_checkout`) VALUES
	(1, 'U4N41JY0', 'unemployed', 1764288615, 1764292870),
	(2, 'U4N41JY0', 'police', 1764431062, 1764433160),
	(3, 'U4N41JY0', 'police', 1764996658, 1765000540),
	(4, 'E49SWS1P', 'ambulance', 1765505521, 1765507998);

-- Dumping structure for table dx_advanced.player_mails
CREATE TABLE IF NOT EXISTS `player_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.player_mails: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.player_outfits
CREATE TABLE IF NOT EXISTS `player_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL DEFAULT '0',
  `model` varchar(50) DEFAULT NULL,
  `props` text DEFAULT NULL,
  `components` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.player_outfits: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.player_outfit_codes
CREATE TABLE IF NOT EXISTS `player_outfit_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outfitid` int(11) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `FK_player_outfit_codes_player_outfits` (`outfitid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.player_outfit_codes: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.player_priv_garages
CREATE TABLE IF NOT EXISTS `player_priv_garages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `owners` longtext DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `z` float DEFAULT NULL,
  `h` float DEFAULT NULL,
  `distance` int(11) DEFAULT 10,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.player_priv_garages: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.player_transactions
CREATE TABLE IF NOT EXISTS `player_transactions` (
  `id` varchar(50) NOT NULL,
  `isFrozen` int(11) DEFAULT 0,
  `transactions` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.player_transactions: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.player_vehicles
CREATE TABLE IF NOT EXISTS `player_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(15) NOT NULL,
  `fakeplate` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` int(11) DEFAULT 1,
  `depotprice` int(11) NOT NULL DEFAULT 0,
  `drivingdistance` int(50) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `glovebox` longtext DEFAULT NULL,
  `trunk` longtext DEFAULT NULL,
  `mileage` float NOT NULL DEFAULT 0,
  `damage` longtext DEFAULT '',
  `in_garage` tinyint(1) DEFAULT 1,
  `garage_id` varchar(255) DEFAULT 'Legion Square',
  `job_vehicle` tinyint(1) DEFAULT 0,
  `job_vehicle_rank` int(10) DEFAULT 0,
  `gang_vehicle` tinyint(1) DEFAULT 0,
  `gang_vehicle_rank` int(10) DEFAULT 0,
  `impound` int(10) DEFAULT 0,
  `impound_retrievable` int(10) DEFAULT 0,
  `impound_data` longtext DEFAULT '',
  `nickname` varchar(255) DEFAULT '',
  `financed` tinyint(1) NOT NULL DEFAULT 0,
  `finance_data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`),
  KEY `citizenid` (`citizenid`),
  CONSTRAINT `player_vehicles_fk_1` FOREIGN KEY (`citizenid`) REFERENCES `players` (`citizenid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.player_vehicles: ~4 rows (approximately)
INSERT INTO `player_vehicles` (`id`, `license`, `citizenid`, `vehicle`, `hash`, `mods`, `plate`, `fakeplate`, `garage`, `fuel`, `engine`, `body`, `state`, `depotprice`, `drivingdistance`, `status`, `coords`, `glovebox`, `trunk`, `mileage`, `damage`, `in_garage`, `garage_id`, `job_vehicle`, `job_vehicle_rank`, `gang_vehicle`, `gang_vehicle_rank`, `impound`, `impound_retrievable`, `impound_data`, `nickname`, `financed`, `finance_data`) VALUES
	(1, 'license2:c13c265f7f23e6bafc2dfc3fbc1381aa4138d5fb', 'E49SWS1P', 'torero', '1504306544', '{"modGrille":-1,"modDashboard":-1,"livery":-1,"modRearBumper":-1,"windowTint":-1,"bulletProofTyres":true,"modArchCover":-1,"wheelColor":156,"modLivery":-1,"wheelSize":0.0,"engineHealth":1000,"xenonColor":255,"interiorColor":0,"modSpoilers":-1,"modFrame":-1,"tyreSmokeColor":[255,255,255],"modHydrolic":-1,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modSpeakers":-1,"modDoorSpeaker":-1,"modKit17":-1,"tankHealth":1000,"modSteeringWheel":-1,"modLightbar":-1,"modStruts":-1,"doors":[],"modCustomTiresF":false,"modAirFilter":-1,"modWindows":-1,"plateIndex":0,"modSideSkirt":-1,"modEngine":-1,"modArmor":-1,"modAPlate":-1,"modDial":-1,"modTrimB":-1,"modXenon":false,"modPlateHolder":-1,"modTrimA":-1,"modKit21":false,"headlightColor":255,"modSmokeEnabled":false,"modHood":-1,"modCustomTiresR":false,"modSubwoofer":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false},"modVanityPlate":-1,"modTrunk":-1,"color1":0,"windowStatus":{"1":true,"2":true,"3":true,"4":false,"5":false,"6":true,"7":true,"0":true},"modBackWheels":-1,"paintType1":0,"modNitrous":-1,"windows":[4,5],"modExhaust":-1,"modFender":-1,"modTransmission":-1,"wheels":7,"modDoorR":-1,"driftTyres":false,"modTank":-1,"plate":"69PWK317","modFrontWheels":-1,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false},"color2":0,"tyres":[],"modBrakes":-1,"extras":[],"modKit49":-1,"bodyHealth":1000,"modKit19":-1,"modEngineBlock":-1,"modShifterLeavers":-1,"fuelLevel":65,"modOrnaments":-1,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"liveryRoof":-1,"modHorns":-1,"modKit47":-1,"modHydraulics":false,"modRoof":-1,"pearlescentColor":0,"neonEnabled":[false,false,false,false],"modRightFender":-1,"model":1504306544,"oilLevel":5,"modRoofLivery":-1,"dirtLevel":3,"neonColor":[255,0,255],"paintType2":0,"modSuspension":-1,"modTurbo":false,"wheelWidth":0.0,"dashboardColor":0,"modSeats":-1,"modAerials":-1,"modFrontBumper":-1}', '69PWK317', NULL, 'Alta Garage', 100, 1000, 1000, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '', 1, 'Legion Square', 0, 0, 0, 0, 0, 0, '', '', 0, NULL),
	(2, 'license2:c13c265f7f23e6bafc2dfc3fbc1381aa4138d5fb', 'E49SWS1P', 'torero', '1504306544', '{"modGrille":-1,"modDashboard":-1,"livery":-1,"modRearBumper":-1,"windowTint":-1,"bulletProofTyres":true,"modArchCover":-1,"wheelColor":156,"modLivery":-1,"wheelSize":0.0,"engineHealth":1000,"xenonColor":255,"interiorColor":0,"modSpoilers":-1,"modFrame":-1,"tyreSmokeColor":[255,255,255],"modHydrolic":-1,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modSpeakers":-1,"modDoorSpeaker":-1,"modKit17":-1,"tankHealth":1000,"modSteeringWheel":-1,"modLightbar":-1,"modStruts":-1,"doors":[],"modCustomTiresF":false,"modAirFilter":-1,"modWindows":-1,"plateIndex":0,"modSideSkirt":-1,"modEngine":-1,"modArmor":-1,"modAPlate":-1,"modDial":-1,"modTrimB":-1,"modXenon":false,"modPlateHolder":-1,"modTrimA":-1,"modKit21":false,"headlightColor":255,"modSmokeEnabled":false,"modHood":-1,"modCustomTiresR":false,"modSubwoofer":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false},"modVanityPlate":-1,"modTrunk":-1,"color1":4,"windowStatus":{"1":true,"2":true,"3":true,"4":false,"5":false,"6":true,"7":true,"0":true},"modBackWheels":-1,"paintType1":0,"modNitrous":-1,"windows":[4,5],"modExhaust":-1,"modFender":-1,"modTransmission":-1,"wheels":7,"modDoorR":-1,"driftTyres":false,"modTank":-1,"plate":"43RBS484","modFrontWheels":-1,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false},"color2":0,"tyres":[],"modBrakes":-1,"extras":[],"modKit49":-1,"bodyHealth":1000,"modKit19":-1,"modEngineBlock":-1,"modShifterLeavers":-1,"fuelLevel":65,"modOrnaments":-1,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"liveryRoof":-1,"modHorns":-1,"modKit47":-1,"modHydraulics":false,"modRoof":-1,"pearlescentColor":111,"neonEnabled":[false,false,false,false],"modRightFender":-1,"model":1504306544,"oilLevel":5,"modRoofLivery":-1,"dirtLevel":5,"neonColor":[255,0,255],"paintType2":0,"modSuspension":-1,"modTurbo":false,"wheelWidth":0.0,"dashboardColor":0,"modSeats":-1,"modAerials":-1,"modFrontBumper":-1}', '43RBS484', NULL, 'Alta Garage', 100, 1000, 1000, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '', 1, 'Legion Square', 0, 0, 0, 0, 0, 0, '', '', 0, NULL),
	(3, 'license2:c13c265f7f23e6bafc2dfc3fbc1381aa4138d5fb', 'E49SWS1P', 'seasparrow3', '1593933419', '{"modGrille":-1,"modDashboard":-1,"livery":-1,"modRearBumper":-1,"windowTint":-1,"bulletProofTyres":false,"modArchCover":-1,"wheelColor":111,"modLivery":-1,"wheelSize":0.0,"engineHealth":1000,"xenonColor":255,"interiorColor":111,"modSpoilers":-1,"modFrame":-1,"tyreSmokeColor":[255,255,255],"modHydrolic":-1,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modSpeakers":-1,"modDoorSpeaker":-1,"modKit17":-1,"tankHealth":1000,"modSteeringWheel":-1,"modLightbar":-1,"modStruts":-1,"doors":[],"modCustomTiresF":false,"modAirFilter":-1,"modWindows":-1,"plateIndex":0,"modSideSkirt":-1,"modEngine":-1,"modArmor":-1,"modAPlate":-1,"modDial":-1,"modTrimB":-1,"modXenon":false,"modPlateHolder":-1,"modTrimA":-1,"modKit21":false,"headlightColor":255,"modSmokeEnabled":false,"modHood":-1,"modCustomTiresR":false,"modSubwoofer":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false},"modVanityPlate":-1,"modTrunk":-1,"color1":5,"windowStatus":{"1":true,"2":false,"3":false,"4":false,"5":false,"6":true,"7":true,"0":true},"modBackWheels":-1,"paintType1":0,"modNitrous":-1,"windows":[2,3,4,5],"modExhaust":-1,"modFender":-1,"modTransmission":-1,"wheels":0,"modDoorR":-1,"driftTyres":false,"modTank":-1,"plate":"62QFI851","modFrontWheels":-1,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false},"color2":2,"tyres":[],"modBrakes":-1,"extras":[0,0,null,null,null,null,0],"modKit49":-1,"bodyHealth":1000,"modKit19":-1,"modEngineBlock":-1,"modShifterLeavers":-1,"fuelLevel":100,"modOrnaments":-1,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"liveryRoof":-1,"modHorns":-1,"modKit47":-1,"modHydraulics":false,"modRoof":-1,"pearlescentColor":5,"neonEnabled":[false,false,false,false],"modRightFender":-1,"model":1593933419,"oilLevel":8,"modRoofLivery":-1,"dirtLevel":6,"neonColor":[255,0,255],"paintType2":0,"modSuspension":-1,"modTurbo":false,"wheelWidth":0.0,"dashboardColor":0,"modSeats":-1,"modAerials":-1,"modFrontBumper":-1}', '62QFI851', NULL, 'Alta Garage', 100, 1000, 1000, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '', 1, 'Legion Square', 0, 0, 0, 0, 0, 0, '', '', 0, NULL),
	(4, 'license2:c13c265f7f23e6bafc2dfc3fbc1381aa4138d5fb', 'E49SWS1P', 'seasparrow3', '1593933419', '{"modGrille":-1,"modDashboard":-1,"livery":-1,"modRearBumper":-1,"windowTint":-1,"bulletProofTyres":false,"modArchCover":-1,"wheelColor":111,"modLivery":-1,"wheelSize":0.0,"engineHealth":1000,"xenonColor":255,"interiorColor":111,"modSpoilers":-1,"modFrame":-1,"tyreSmokeColor":[255,255,255],"modHydrolic":-1,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modSpeakers":-1,"modDoorSpeaker":-1,"modKit17":-1,"tankHealth":1000,"modSteeringWheel":-1,"modLightbar":-1,"modStruts":-1,"doors":[],"modCustomTiresF":false,"modAirFilter":-1,"modWindows":-1,"plateIndex":0,"modSideSkirt":-1,"modEngine":-1,"modArmor":-1,"modAPlate":-1,"modDial":-1,"modTrimB":-1,"modXenon":false,"modPlateHolder":-1,"modTrimA":-1,"modKit21":false,"headlightColor":255,"modSmokeEnabled":false,"modHood":-1,"modCustomTiresR":false,"modSubwoofer":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false},"modVanityPlate":-1,"modTrunk":-1,"color1":5,"windowStatus":{"1":true,"2":false,"3":false,"4":false,"5":false,"6":true,"7":true,"0":true},"modBackWheels":-1,"paintType1":0,"modNitrous":-1,"windows":[2,3,4,5],"modExhaust":-1,"modFender":-1,"modTransmission":-1,"wheels":0,"modDoorR":-1,"driftTyres":false,"modTank":-1,"plate":"43QYO862","modFrontWheels":-1,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false},"color2":2,"tyres":[],"modBrakes":-1,"extras":[0,0,null,null,null,null,0],"modKit49":-1,"bodyHealth":1000,"modKit19":-1,"modEngineBlock":-1,"modShifterLeavers":-1,"fuelLevel":100,"modOrnaments":-1,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"liveryRoof":-1,"modHorns":-1,"modKit47":-1,"modHydraulics":false,"modRoof":-1,"pearlescentColor":5,"neonEnabled":[false,false,false,false],"modRightFender":-1,"model":1593933419,"oilLevel":8,"modRoofLivery":-1,"dirtLevel":2,"neonColor":[255,0,255],"paintType2":0,"modSuspension":-1,"modTurbo":false,"wheelWidth":0.0,"dashboardColor":0,"modSeats":-1,"modAerials":-1,"modFrontBumper":-1}', '1', NULL, '2', 100, 1000, 1000, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '', 1, 'Legion Square', 0, 0, 0, 0, 0, 0, '', '', 0, NULL);

-- Dumping structure for table dx_advanced.properties
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_name` varchar(255) NOT NULL,
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`coords`)),
  `price` int(11) NOT NULL DEFAULT 0,
  `owner` varchar(50) DEFAULT NULL,
  `interior` varchar(255) NOT NULL,
  `keyholders` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT json_object() CHECK (json_valid(`keyholders`)),
  `rent_interval` int(11) DEFAULT NULL,
  `interact_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT json_object() CHECK (json_valid(`interact_options`)),
  `stash_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT json_object() CHECK (json_valid(`stash_options`)),
  `garage` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`garage`)),
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.properties: ~0 rows (approximately)
INSERT INTO `properties` (`id`, `property_name`, `coords`, `price`, `owner`, `interior`, `keyholders`, `rent_interval`, `interact_options`, `stash_options`, `garage`) VALUES
	(1, 'Del Perro Heights Apt 1', '{"x":-1447.3499755859376,"y":-537.8400268554688,"z":34.7400016784668}', 0, 'P27MZ277', 'DellPerroHeightsApt4', '{}', NULL, '[{"type":"logout","coords":{"x":-1454.0799560546876,"y":-553.25,"z":72.83999633789063}},{"type":"clothing","coords":{"x":-1449.8800048828126,"y":-549.25,"z":72.83999633789063}},{"type":"exit","coords":{"x":-1453.02001953125,"y":-539.5,"z":74.04000091552735,"w":35.33000183105469}}]', '[{"maxWeight":150000,"coords":{"x":-1466.8299560546876,"y":-527.030029296875,"z":73.44000244140625},"slots":50}]', NULL);

-- Dumping structure for table dx_advanced.properties_decorations
CREATE TABLE IF NOT EXISTS `properties_decorations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`coords`)),
  `rotation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`rotation`)),
  PRIMARY KEY (`id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `properties_decorations_fk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.properties_decorations: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.queue
CREATE TABLE IF NOT EXISTS `queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` bigint(20) NOT NULL DEFAULT 0,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.queue: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.savana_bossmenu_permissions
CREATE TABLE IF NOT EXISTS `savana_bossmenu_permissions` (
  `staff_id` varchar(255) NOT NULL,
  `shop_id` varchar(255) NOT NULL,
  `permission` text DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`staff_id`,`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.savana_bossmenu_permissions: ~0 rows (approximately)
INSERT INTO `savana_bossmenu_permissions` (`staff_id`, `shop_id`, `permission`, `date`) VALUES
	('U4N41JY0', 'police', '{"money":false,"storage":false,"manager":false,"wardrobe":false}', '2025-12-07 10:57:51');

-- Dumping structure for table dx_advanced.savana_bossmenu_shops
CREATE TABLE IF NOT EXISTS `savana_bossmenu_shops` (
  `id` varchar(255) NOT NULL,
  `money` decimal(10,2) DEFAULT 0.00,
  `type` enum('job','gang') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.savana_bossmenu_shops: ~2 rows (approximately)
INSERT INTO `savana_bossmenu_shops` (`id`, `money`, `type`) VALUES
	('ambulance', 0.00, 'job'),
	('police', 0.00, 'job');

-- Dumping structure for table dx_advanced.savana_bossmenu_staffs
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

-- Dumping data for table dx_advanced.savana_bossmenu_staffs: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.savana_bossmenu_transactions
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

-- Dumping data for table dx_advanced.savana_bossmenu_transactions: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.savana_order
CREATE TABLE IF NOT EXISTS `savana_order` (
  `id` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `billing` longtext NOT NULL,
  `transactions` longtext NOT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  `totalSelling` int(11) NOT NULL DEFAULT 0,
  `totalVisit` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.savana_order: ~0 rows (approximately)
INSERT INTO `savana_order` (`id`, `data`, `billing`, `transactions`, `money`, `totalSelling`, `totalVisit`) VALUES
	(1, '{"menus":[{"items":[{"item":"burgerxl","count":1},{"item":"kurkakola","count":1}],"price":55,"title":"Double Feast","category":1,"image":"https://cdn.discordapp.com/attachments/967292715719073902/1262052969617162250/test1.png?ex=669531eb&is=6693e06b&hm=f4746f836c6c47e7db193fdf46f4e9cfce9106e05d00b43a81854f31dcc8cc42&"},{"items":[{"item":"burgerxl","count":1},{"item":"icetea","count":1}],"price":60,"title":"Double Flavor","category":1,"image":"https://cdn.discordapp.com/attachments/967292715719073902/1262054865694232596/burgerxl__icetea.png?ex=669533af&is=6693e22f&hm=485b872aad6ccc3c91ea0d5b34f0b00c6e16baa8a9e4c1c8bf1ab9115254d79b&"},{"items":[{"item":"burgerxl","count":1},{"item":"water_bottle","count":1}],"price":53,"title":"Hydro Binary","category":1,"image":"https://cdn.discordapp.com/attachments/967292715719073902/1262054970858012723/burgerxl__su.png?ex=669533c8&is=6693e248&hm=31a058761eb7a9c4a21d28215430e9c300184ff53bec5d45bfd4da86b42759f6&"},{"items":[{"item":"chickenburger","count":1},{"item":"kurkakola","count":1}],"price":30,"title":"Chicken Cola Combo","category":2,"image":"https://cdn.discordapp.com/attachments/967292715719073902/1262055078525927545/chickenburger__kola.png?ex=669533e2&is=6693e262&hm=2508b0f4bbb2efdc52ec1e9052ece542289f09bacb36477c947558e4d4fcdf5c&"},{"items":[{"item":"chickenburger","count":1},{"item":"icetea","count":1}],"price":35,"title":"Iced Chicken Delight","image":"https://cdn.discordapp.com/attachments/967292715719073902/1262055092937556129/chickenburger__icetea.png?ex=669533e6&is=6693e266&hm=9092f738c6e95eed6b74c158579a3c8d89bdcb07ffa372ba6235a5a1aa4d6b04&","category":2},{"items":[{"item":"chickenburger","count":1},{"item":"water_bottle","count":1}],"price":28,"title":"Aqua Chicken Meal","image":"https://cdn.discordapp.com/attachments/967292715719073902/1262055103431442544/chickenburger__su.png?ex=669533e8&is=6693e268&hm=fa8048422fd26874e9437cfb0824582287f8d9b567d3dddffb6417bb4dc49c88&","category":2},{"items":[{"item":"tenderloin","count":1},{"item":"kurkakola","count":1}],"price":75,"title":"Steak & Cola Combo","category":1,"image":"https://cdn.discordapp.com/attachments/967292715719073902/1262056444187115650/yeni__kola.png?ex=66953528&is=6693e3a8&hm=5b35be443babe4b53855e9138bf2c78b9dd12c28fc7d94825b780444a862ff6e&"},{"items":[{"item":"tenderloin","count":1},{"item":"icetea","count":1}],"price":80,"title":"Iced Steak Delight","category":1,"image":"https://cdn.discordapp.com/attachments/967292715719073902/1262056444568535211/yeni__icetea.png?ex=66953528&is=6693e3a8&hm=7d54e02a91840c1e8df81a258abdb77f3c7b98c07c18e2dbd88d6af213796c00&"},{"items":[{"item":"tenderloin","count":1},{"item":"water_bottle","count":1}],"price":73,"title":"Aqua Steak Meal","category":1,"image":"https://cdn.discordapp.com/attachments/967292715719073902/1262056445042495551/yeni__su.png?ex=66953528&is=6693e3a8&hm=a12493f18449154d51867cfb2fdeece3f3d3706e6ca0641e2ee952a2913433a1&"},{"items":[{"item":"cookie","count":1},{"item":"icetea","count":1}],"price":25,"title":"Cookie Tea Treat","image":"https://cdn.discordapp.com/attachments/967292715719073902/1262081497045667840/1_ice.png?ex=66954c7d&is=6693fafd&hm=24551f44895921c82e734a577174b0a7d47dc0d6769455ae688543a37d01b258&","category":3},{"items":[{"item":"waffle","count":1},{"item":"water_bottle","count":1}],"price":50,"title":"Waffle Aqua Combo","image":"https://cdn.discordapp.com/attachments/967292715719073902/1262081991331938459/waffle_su.png?ex=66954cf3&is=6693fb73&hm=9b5977011071d094dd1fac78ae28978a247b7453d466f7789a51096770297744&","category":3},{"items":[{"item":"donut","count":1},{"item":"kurkakola","count":1}],"price":30,"title":"Sweet Cola Combo","image":"https://cdn.discordapp.com/attachments/967292715719073902/1262081728227442688/donat_kola.png?ex=66954cb4&is=6693fb34&hm=0c30281b2b9695bd89122e5c9106ab5dbb0ebec895cd635f7f32d66d214c445d&","category":"3"}],"products":[{"item":"burger","price":"100","image":"https://cdn.discordapp.com/attachments/986916753969926144/1262043546500862003/hamburger.png?ex=66952925&is=6693d7a5&hm=f5a9434d2d10648669f1fe50506b5c3df2101ce33f46a049cd530d77111ffd8f&"},{"item":"burgerxl","price":"50","image":"https://cdn.discordapp.com/attachments/986916753969926144/1262043924453785611/burgerxl.png?ex=6695297f&is=6693d7ff&hm=732152c5226eeea778d485a426a6cefcf43fdbded23f071ba3cc42af5de452df&"},{"item":"chickenburger","price":"25","image":"https://cdn.discordapp.com/attachments/986916753969926144/1262043958293565612/tavukburger.png?ex=66952987&is=6693d807&hm=22dce311d677f9772699807ec5f68c12449465bf1aea27cec29510b9408b2780&"},{"item":"chickenpotato","price":"15","image":"https://cdn.discordapp.com/attachments/986916753969926144/1262044033136595034/tavukpatates.png?ex=66952999&is=6693d819&hm=d2f74504c0a821fee9af303e73593df50568d04e4d627d43fa2055bbf85fd690&"},{"item":"crispychicken","price":"20","image":"https://cdn.discordapp.com/attachments/986916753969926144/1262044058742951976/citirtavuk.png?ex=6695299f&is=6693d81f&hm=f01de3af5e08dec932a2c1e70d40c1379c955610cc67548de89330921dee4e21&"},{"item":"tenderloin","price":"70","image":"https://cdn.discordapp.com/attachments/986916753969926144/1262044112614330501/bonfile.png?ex=669529ac&is=6693d82c&hm=1a7c5972f9a94d134995688074e52ca2893f5f204d19de46ac1e59e84ece0999&"},{"item":"onionring","price":"15","image":"https://cdn.discordapp.com/attachments/986916753969926144/1262044168222539879/burgers.png?ex=669529b9&is=6693d839&hm=bbd670b0d8e254ac6fc65c6113598e03b8cff8cb7f3316befc29f654906f1113&"},{"item":"kurkakola","price":"10","image":"https://cdn.discordapp.com/attachments/986916753969926144/1262044207200211120/kurkakola.png?ex=669529c2&is=6693d842&hm=bbc598d466a1cd432a504b337a8fc5a44a1532f1ad71fc0dfc3db41605a8ebfa&"},{"item":"water_bottle","price":"5","image":"https://cdn.discordapp.com/attachments/986916753969926144/1262044380357853255/water_bottle.png?ex=669529eb&is=6693d86b&hm=dbc0ff82a14c89d2b3711cb8204ae294c6ff1adfa36ae9a286125b715bbcfa6b&"},{"item":"coffee","price":"10","image":"https://cdn.discordapp.com/attachments/986916753969926144/1262044450868170783/coffee.png?ex=669529fc&is=6693d87c&hm=e54973e697ef3a4288d479e4f1c7a705024d17699848dc4af06609f9258782d6&"},{"item":"icetea","price":"15","image":"https://cdn.discordapp.com/attachments/986916753969926144/1262044477363589151/icetea.png?ex=66952a03&is=6693d883&hm=9c76f8b14c0099247cbb13d462829e1ea02a28d0c41fc2ea62ef0d268c7cbb65&"},{"item":"milkshake","price":"20","image":"https://cdn.discordapp.com/attachments/986916753969926144/1262044520254668902/pinky.png?ex=66952a0d&is=6693d88d&hm=dd91f702cc1b627b273d4210ff71f9aa7a0f10b349d0e1284a31f6ab84c0cf53&"},{"item":"waffle","price":50,"image":"https://cdn.discordapp.com/attachments/986916753969926144/1262044346056835132/waffle.png?ex=669529e3&is=6693d863&hm=1210d9c246513742222f761745abf2b08b3a7cd44263441e9a45194030731c8c&"},{"item":"coollime","price":"15","image":"https://cdn.discordapp.com/attachments/986916753969926144/1262077245435019335/coollime.png?ex=66954887&is=6693f707&hm=e97d41c532b04d0548136d397b6f4a7636d83833ec69d09c697a8f7e1c5bdd48&"},{"item":"cookie","price":"15","image":"https://cdn.discordapp.com/attachments/986916753969926144/1262077625346818088/cookie.png?ex=669548e2&is=6693f762&hm=6bac67b2bd25ef6654495db1e6967c3c4a8ab47a808889c85a65a3e2e9d350cc&"},{"item":"donut","price":"5","image":"https://cdn.discordapp.com/attachments/986916753969926144/1262044309839024239/donut.png?ex=669529db&is=6693d85b&hm=f3098219bd43d1a1c73ad9f018b9713f11bf5b1262b05aef341c41aeae273344&"}]}', '[]', '[]', 0, 0, 0);

-- Dumping structure for table dx_advanced.savana_restaurant
CREATE TABLE IF NOT EXISTS `savana_restaurant` (
  `citizenid` varchar(50) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `itemname` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.savana_restaurant: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.saved_skins
CREATE TABLE IF NOT EXISTS `saved_skins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `mugshot` longtext NOT NULL,
  `skin` text NOT NULL,
  `skin2` text NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.saved_skins: ~0 rows (approximately)
INSERT INTO `saved_skins` (`id`, `license`, `model`, `mugshot`, `skin`, `skin2`, `type`) VALUES
	(119, 'GS2C93RQ', '1885233650', 'data:image/png;base64,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', '{"lipstick":{"defaultItem":-1,"texture":1,"defaultTexture":1,"item":-1},"eyebrows":{"defaultItem":-1,"texture":1,"defaultTexture":1,"item":-1},"jaw_bone_back_lenght":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"nose_1":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"vest":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"nose_3":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"cheek_2":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"pants":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"face":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"glass":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"facemix":{"shapeMix":0,"skinMix":0,"defaultSkinMix":0.0,"defaultShapeMix":0.0},"eye_color":{"defaultItem":-1,"texture":0,"defaultTexture":0,"item":-1},"bag":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"migrate":"true","hair":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":42},"nose_0":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"nose_4":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"neck_thikness":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"chimp_bone_lowering":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"decals":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"jaw_bone_width":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"arms":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"makeup":{"defaultItem":-1,"texture":1,"defaultTexture":1,"item":-1},"model":"mp_m_freemode_01","ageing":{"defaultItem":-1,"texture":0,"defaultTexture":0,"item":-1},"blush":{"defaultItem":-1,"texture":1,"defaultTexture":1,"item":-1},"ear":{"defaultItem":-1,"texture":0,"defaultTexture":0,"item":-1},"accessory":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"cheek_3":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"eyebrown_forward":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"shoes":{"defaultItem":1,"texture":0,"defaultTexture":0,"item":1},"nose_5":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"chimp_bone_width":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"moles":{"defaultItem":-1,"texture":0,"defaultTexture":0,"item":-1},"eye_opening":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"bracelet":{"defaultItem":-1,"texture":0,"defaultTexture":0,"item":-1},"nose_2":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"face2":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"lips_thickness":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"beard":{"defaultItem":-1,"texture":1,"defaultTexture":1,"item":-1},"chimp_hole":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"watch":{"defaultItem":-1,"texture":0,"defaultTexture":0,"item":-1},"hat":{"defaultItem":-1,"texture":0,"defaultTexture":0,"item":-1},"torso2":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":403},"t-shirt":{"defaultItem":15,"texture":0,"defaultTexture":0,"item":164},"eyebrown_high":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"mask":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"chimp_bone_lenght":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"cheek_1":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0}}', '{"lipstick":{"value":-1,"type":"item","hasTexture":{"1":{"value":0,"max":0},"-1":{"value":1,"max":45},"0":{"value":0,"max":45}},"min":-1,"max":10},"eyebrows":{"value":-1,"type":"item","hasTexture":{"1":{"value":0,"max":0},"-1":{"value":1,"max":45},"0":{"value":0,"max":45}},"min":-1,"max":34},"jaw_bone_back_lenght":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30},"nose_1":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30},"vest":{"value":0,"hasTexture":{"1":{"value":0,"max":0},"0":{"value":0,"max":0}},"type":"item","max":62},"nose_3":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30},"shoes":{"value":1,"hasTexture":{"1":{"value":0,"max":15},"0":{"value":0,"max":15}},"type":"item","max":151},"pants":{"value":0,"hasTexture":{"1":{"value":0,"max":0},"0":{"value":0,"max":15}},"type":"item","max":202},"glass":{"value":0,"type":"item","hasTexture":{"0":{"value":0,"max":11}},"min":0,"max":59},"neck_thikness":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30},"eye_color":{"value":-1,"type":"item","hasTexture":false,"min":-1,"max":31},"bag":{"value":0,"hasTexture":{"1":{"value":0,"max":0},"0":{"value":0,"max":0}},"type":"item","max":111},"makeup":{"value":-1,"type":"item","hasTexture":{"1":{"value":0,"max":0},"-1":{"value":1,"max":45},"0":{"value":0,"max":45}},"min":-1,"max":95},"jaw_bone_width":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30},"nose_0":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30},"nose_4":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30},"chimp_bone_lowering":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30},"torso2":{"value":403,"hasTexture":{"54":{"value":0,"max":3},"476":{"value":0,"max":25},"82":{"value":0,"max":15},"449":{"value":0,"max":0},"86":{"value":0,"max":4},"512":{"value":0,"max":0},"227":{"value":0,"max":13},"345":{"value":0,"max":0},"385":{"value":0,"max":25},"485":{"value":0,"max":0},"267":{"value":0,"max":14},"408":{"value":0,"max":2},"544":{"value":0,"max":14},"444":{"value":0,"max":0},"317":{"value":0,"max":8},"240":{"value":0,"max":11},"109":{"value":0,"max":4},"0":{"value":0,"max":15},"231":{"value":0,"max":0},"394":{"value":0,"max":0},"354":{"value":0,"max":10},"222":{"value":0,"max":23},"399":{"value":0,"max":0},"499":{"value":0,"max":1},"199":{"value":0,"max":25},"290":{"value":0,"max":11},"435":{"value":0,"max":25},"471":{"value":0,"max":25},"41":{"value":0,"max":2},"490":{"value":0,"max":25},"422":{"value":0,"max":0},"277":{"value":0,"max":0},"213":{"value":0,"max":7},"77":{"value":0,"max":3},"27":{"value":0,"max":3},"431":{"value":0,"max":25},"358":{"value":0,"max":9},"177":{"value":0,"max":2},"530":{"value":0,"max":1},"467":{"value":0,"max":0},"413":{"value":0,"max":0},"118":{"value":0,"max":0},"168":{"value":0,"max":1},"403":{"value":0,"max":13},"503":{"value":0,"max":0},"258":{"value":0,"max":5},"272":{"value":0,"max":4},"1":{"value":0,"max":0},"417":{"value":0,"max":1},"18":{"value":0,"max":15},"190":{"value":0,"max":10},"440":{"value":0,"max":0},"145":{"value":0,"max":0},"91":{"value":0,"max":0}},"type":"item","max":544},"nose_5":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30},"blush":{"value":-1,"type":"item","hasTexture":{"1":{"value":0,"max":0},"-1":{"value":1,"max":45},"0":{"value":0,"max":45}},"min":-1,"max":33},"chimp_hole":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30},"accessory":{"value":0,"hasTexture":{"1":{"value":0,"max":0},"0":{"value":0,"max":0}},"type":"item","max":192},"ear":{"value":-1,"type":"item","hasTexture":{"-1":{"value":0,"max":0},"0":{"value":0,"max":0}},"min":-1,"max":42},"chimp_bone_width":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30},"cheek_2":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30},"eyebrown_forward":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30},"arms":{"value":0,"hasTexture":{"1":{"value":0,"max":0},"0":{"value":0,"max":0}},"type":"item","max":214},"moles":{"value":-1,"type":"item","hasTexture":{"1":{"value":0,"max":0},"-1":{"value":0,"max":10},"0":{"value":0,"max":10}},"min":-1,"max":17},"eye_opening":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30},"bracelet":{"value":-1,"type":"item","hasTexture":{"-1":{"value":0,"max":0},"0":{"value":0,"max":0}},"min":-1,"max":16},"chimp_bone_lenght":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30},"lips_thickness":{"value":0,"type":"item","hasTexture":false,"min":-1,"max":30},"cheek_3":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30},"decals":{"value":0,"hasTexture":{"1":{"value":0,"max":0},"0":{"value":0,"max":0}},"type":"item","max":207},"nose_2":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30},"watch":{"value":-1,"type":"item","hasTexture":{"-1":{"value":0,"max":0},"0":{"value":0,"max":0}},"min":-1,"max":49},"hat":{"value":-1,"type":"item","hasTexture":{"-1":{"value":0,"max":0},"0":{"value":0,"max":0}},"min":-1,"max":221},"hair":{"value":42,"type":"item","hasTexture":{"44":{"value":0,"max":45},"43":{"value":0,"max":45},"30":{"value":0,"max":45},"40":{"value":0,"max":45},"32":{"value":0,"max":45},"42":{"value":0,"max":45},"38":{"value":0,"max":45},"17":{"value":0,"max":45},"28":{"value":0,"max":45},"29":{"value":0,"max":45},"37":{"value":0,"max":45},"5":{"value":0,"max":45},"31":{"value":0,"max":45},"21":{"value":0,"max":45},"23":{"value":0,"max":45},"13":{"value":0,"max":45},"14":{"value":0,"max":45},"8":{"value":0,"max":45},"0":{"value":0,"max":45},"12":{"value":0,"max":45},"39":{"value":0,"max":45},"10":{"value":0,"max":45},"9":{"value":0,"max":45},"35":{"value":0,"max":45},"36":{"value":0,"max":45},"33":{"value":0,"max":45},"34":{"value":0,"max":45}},"min":0,"max":82},"t-shirt":{"value":164,"hasTexture":{"70":{"value":0,"max":5},"72":{"value":0,"max":5},"56":{"value":0,"max":1},"107":{"value":0,"max":0},"143":{"value":0,"max":21},"58":{"value":0,"max":0},"68":{"value":0,"max":18},"88":{"value":0,"max":22},"185":{"value":0,"max":4},"141":{"value":0,"max":21},"66":{"value":0,"max":18},"74":{"value":0,"max":7},"1":{"value":0,"max":0},"184":{"value":0,"max":4},"160":{"value":0,"max":0},"120":{"value":0,"max":23},"105":{"value":0,"max":0},"129":{"value":0,"max":4},"168":{"value":0,"max":20},"53":{"value":0,"max":3},"164":{"value":0,"max":0},"109":{"value":0,"max":11},"169":{"value":0,"max":20},"180":{"value":0,"max":0},"75":{"value":0,"max":7},"91":{"value":0,"max":23},"81":{"value":0,"max":8},"63":{"value":0,"max":15},"173":{"value":0,"max":9},"97":{"value":0,"max":10},"153":{"value":0,"max":0},"0":{"value":0,"max":0},"89":{"value":0,"max":0},"116":{"value":0,"max":5},"69":{"value":0,"max":4},"59":{"value":0,"max":1},"146":{"value":0,"max":13},"182":{"value":0,"max":20},"187":{"value":0,"max":4},"137":{"value":0,"max":20},"71":{"value":0,"max":5},"175":{"value":0,"max":9},"114":{"value":0,"max":5},"118":{"value":0,"max":23},"155":{"value":0,"max":0},"171":{"value":0,"max":15},"178":{"value":0,"max":0},"150":{"value":0,"max":13},"136":{"value":0,"max":20},"73":{"value":0,"max":2},"145":{"value":0,"max":0},"100":{"value":0,"max":23},"43":{"value":0,"max":3},"111":{"value":0,"max":25},"15":{"value":0,"max":0},"93":{"value":0,"max":1}},"type":"item","max":213},"eyebrown_high":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30},"mask":{"value":0,"type":"item","hasTexture":{"0":{"value":0,"max":1}},"min":0,"max":244},"beard":{"value":-1,"hasTexture":{"1":{"value":0,"max":0},"-1":{"value":1,"max":45},"0":{"value":0,"max":45}},"type":"item","max":29},"cheek_1":{"value":0,"type":"item","hasTexture":false,"min":0,"max":30}}', 'clothing');

-- Dumping structure for table dx_advanced.sn_restaurants
CREATE TABLE IF NOT EXISTS `sn_restaurants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL DEFAULT '0',
  `owner` varchar(50) DEFAULT '0',
  `info` longtext NOT NULL,
  `employees` longtext NOT NULL DEFAULT '[]',
  `positions` longtext DEFAULT '[]',
  `description` varchar(50) DEFAULT NULL,
  `is_open` int(11) DEFAULT NULL,
  `theme_color` varchar(50) DEFAULT NULL,
  `secondary_color` varchar(7) DEFAULT '#FFD700',
  `logo_url` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_restaurants_label` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_restaurants: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_analytics
CREATE TABLE IF NOT EXISTS `sn_rest_analytics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `total_orders` int(11) DEFAULT 0,
  `total_revenue` decimal(10,2) DEFAULT 0.00,
  `avg_order_value` decimal(10,2) DEFAULT 0.00,
  `customer_count` int(11) DEFAULT 0,
  `peak_hour` tinyint(4) DEFAULT NULL,
  `most_popular_item_id` int(11) DEFAULT NULL,
  `employee_performance` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_restaurant_date` (`restaurant_id`,`date`),
  KEY `restaurant_id` (`restaurant_id`),
  KEY `most_popular_item_id` (`most_popular_item_id`),
  KEY `idx_analytics_date` (`date`),
  CONSTRAINT `sn_rest_analytics_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `sn_restaurants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_analytics: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_drinks_machine_supplies
CREATE TABLE IF NOT EXISTS `sn_rest_drinks_machine_supplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` varchar(50) NOT NULL,
  `machine_index` int(11) NOT NULL,
  `machine_type` enum('soda_juice','coffee') NOT NULL,
  `supplies` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '{}' CHECK (json_valid(`supplies`)),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_machine` (`restaurant_id`,`machine_index`),
  KEY `restaurant_id` (`restaurant_id`),
  KEY `machine_type` (`machine_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_drinks_machine_supplies: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_employees
CREATE TABLE IF NOT EXISTS `sn_rest_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  `salary` int(11) DEFAULT 0,
  `performance` int(11) DEFAULT 50,
  `hire_date` date NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_boss` tinyint(1) DEFAULT 0,
  `is_manager` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `restaurant_id` (`restaurant_id`),
  KEY `identifier` (`identifier`),
  KEY `idx_employees_performance` (`performance`),
  KEY `idx_employees_roles` (`is_boss`,`is_manager`),
  CONSTRAINT `sn_rest_employees_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `sn_restaurants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_employees: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_finance
CREATE TABLE IF NOT EXISTS `sn_rest_finance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `current_balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_revenue` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_expenses` decimal(10,2) NOT NULL DEFAULT 0.00,
  `pending_salaries` decimal(10,2) NOT NULL DEFAULT 0.00,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_restaurant_finance` (`restaurant_id`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `sn_rest_finance_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `sn_restaurants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_finance: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_inventory
CREATE TABLE IF NOT EXISTS `sn_rest_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_label` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `min_quantity` int(11) DEFAULT 10,
  `max_quantity` int(11) DEFAULT 100,
  `unit_cost` decimal(10,2) DEFAULT 0.00,
  `supplier` varchar(255) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `last_restocked` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_restaurant_item` (`restaurant_id`,`item_name`),
  KEY `restaurant_id` (`restaurant_id`),
  KEY `idx_inventory_quantity` (`quantity`),
  CONSTRAINT `sn_rest_inventory_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `sn_restaurants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_inventory: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_invitations
CREATE TABLE IF NOT EXISTS `sn_rest_invitations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `inviter_identifier` varchar(50) NOT NULL,
  `inviter_name` varchar(255) NOT NULL,
  `invitee_identifier` varchar(50) NOT NULL,
  `invitee_name` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  `salary` int(11) DEFAULT 0,
  `is_boss` tinyint(1) DEFAULT 0,
  `is_manager` tinyint(1) DEFAULT 0,
  `status` enum('pending','accepted','declined','expired') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NOT NULL DEFAULT (current_timestamp() + interval 24 hour),
  PRIMARY KEY (`id`),
  KEY `restaurant_id` (`restaurant_id`),
  KEY `invitee_identifier` (`invitee_identifier`),
  KEY `status` (`status`),
  CONSTRAINT `sn_rest_invitations_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `sn_restaurants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_invitations: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_menu_categories
CREATE TABLE IF NOT EXISTS `sn_rest_menu_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `display_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `sn_rest_menu_categories_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `sn_restaurants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_menu_categories: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_menu_items
CREATE TABLE IF NOT EXISTS `sn_rest_menu_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `image_url` text DEFAULT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT 1,
  `display_order` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `restaurant_id` (`restaurant_id`),
  KEY `category_id` (`category_id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `sn_rest_menu_items_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `sn_restaurants` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sn_rest_menu_items_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `sn_rest_menu_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_menu_items: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_orders
CREATE TABLE IF NOT EXISTS `sn_rest_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `customer_identifier` varchar(50) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `pos_id` int(11) DEFAULT NULL,
  `order_type` varchar(50) NOT NULL DEFAULT 'dine_in',
  `status` enum('pending','cooking','ready','completed','cancelled') NOT NULL DEFAULT 'pending',
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(50) DEFAULT NULL,
  `order_data` longtext DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number` (`order_number`),
  KEY `restaurant_id` (`restaurant_id`),
  KEY `employee_id` (`employee_id`),
  KEY `pos_id` (`pos_id`),
  KEY `idx_orders_status` (`status`),
  KEY `idx_orders_date` (`created_at`),
  CONSTRAINT `sn_rest_orders_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `sn_restaurants` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sn_rest_orders_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `sn_rest_employees` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_orders: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_order_items
CREATE TABLE IF NOT EXISTS `sn_rest_order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `menu_item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `special_instructions` text DEFAULT NULL,
  `status` enum('pending','cooking','ready','served') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `menu_item_id` (`menu_item_id`),
  CONSTRAINT `sn_rest_order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `sn_rest_orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sn_rest_order_items_ibfk_2` FOREIGN KEY (`menu_item_id`) REFERENCES `sn_rest_menu_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_order_items: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_pending_salaries
CREATE TABLE IF NOT EXISTS `sn_rest_pending_salaries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `employee_identifier` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `paid_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `claimed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `restaurant_id` (`restaurant_id`),
  KEY `employee_id` (`employee_id`),
  KEY `employee_identifier` (`employee_identifier`),
  KEY `claimed_at` (`claimed_at`),
  CONSTRAINT `sn_rest_pending_salaries_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `sn_restaurants` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sn_rest_pending_salaries_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `sn_rest_employees` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_pending_salaries: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_pos_systems
CREATE TABLE IF NOT EXISTS `sn_rest_pos_systems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `device_type` enum('pos','kiosk') NOT NULL DEFAULT 'pos',
  `position_x` float DEFAULT NULL,
  `position_y` float DEFAULT NULL,
  `position_z` float DEFAULT NULL,
  `heading` float DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `sn_rest_pos_systems_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `sn_restaurants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_pos_systems: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_recipes
CREATE TABLE IF NOT EXISTS `sn_rest_recipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `ingredients` longtext NOT NULL,
  `output_item` varchar(255) NOT NULL,
  `cook_time` int(11) DEFAULT 5,
  `difficulty` varchar(50) DEFAULT 'Easy',
  `image_url` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_drink` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if recipe is a drink (1) or food (0)',
  PRIMARY KEY (`id`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `sn_rest_recipes_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `sn_restaurants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_recipes: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_recipe_instructions
CREATE TABLE IF NOT EXISTS `sn_rest_recipe_instructions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `step_number` int(11) NOT NULL,
  `instruction_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `recipe_id` (`recipe_id`),
  KEY `step_number` (`step_number`),
  CONSTRAINT `sn_rest_recipe_instructions_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `sn_rest_recipes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_recipe_instructions: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_recipe_notes
CREATE TABLE IF NOT EXISTS `sn_rest_recipe_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `note_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `sn_rest_recipe_notes_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `sn_rest_recipes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_recipe_notes: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_recipe_tips
CREATE TABLE IF NOT EXISTS `sn_rest_recipe_tips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `tip_text` text NOT NULL,
  `tip_order` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `sn_rest_recipe_tips_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `sn_rest_recipes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_recipe_tips: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_settings
CREATE TABLE IF NOT EXISTS `sn_rest_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` longtext DEFAULT NULL,
  `setting_type` enum('string','number','boolean','json') NOT NULL DEFAULT 'string',
  `description` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_restaurant_setting` (`restaurant_id`,`setting_key`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `sn_rest_settings_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `sn_restaurants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_settings: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_transactions
CREATE TABLE IF NOT EXISTS `sn_rest_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `transaction_type` enum('income','expense','salary','withdrawal','deposit') NOT NULL,
  `description` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `restaurant_id` (`restaurant_id`),
  KEY `employee_id` (`employee_id`),
  KEY `order_id` (`order_id`),
  KEY `transaction_type` (`transaction_type`),
  KEY `created_at` (`created_at`),
  CONSTRAINT `sn_rest_transactions_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `sn_restaurants` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sn_rest_transactions_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `sn_rest_employees` (`id`) ON DELETE SET NULL,
  CONSTRAINT `sn_rest_transactions_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `sn_rest_orders` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_transactions: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.sn_rest_tv_displays
CREATE TABLE IF NOT EXISTS `sn_rest_tv_displays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_type` enum('kitchen','order_queue','custom') NOT NULL DEFAULT 'kitchen',
  `custom_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`custom_content`)),
  `model` varchar(100) DEFAULT 'prop_tv_flat_01',
  `position_x` float DEFAULT NULL,
  `position_y` float DEFAULT NULL,
  `position_z` float DEFAULT NULL,
  `heading` float DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `sn_rest_tv_displays_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `sn_restaurants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.sn_rest_tv_displays: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.tcd_starterpack
CREATE TABLE IF NOT EXISTS `tcd_starterpack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `received` tinyint(1) NOT NULL,
  `date_received` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dx_advanced.tcd_starterpack: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.users
CREATE TABLE IF NOT EXISTS `users` (
  `userId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `license2` varchar(50) DEFAULT NULL,
  `fivem` varchar(20) DEFAULT NULL,
  `discord` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.users: ~0 rows (approximately)
INSERT INTO `users` (`userId`, `username`, `license`, `license2`, `fivem`, `discord`) VALUES
	(1, 'DEV Dx', 'license:dd7efc1d5db42797e8b4c351e1b536aee84c43e7', 'license2:a045ed84bc7b147ab67442c4be4c70a4bb7d0ad5', 'fivem:8771348', 'discord:811436286006657025'),
	(2, 'TTMPOLO', 'license:1a76b9bd3c43b3de150b4874dba2d958d1cc6a22', 'license2:c13c265f7f23e6bafc2dfc3fbc1381aa4138d5fb', 'fivem:14586079', 'discord:779757183025152032');

-- Dumping structure for table dx_advanced.vehicle_financing
CREATE TABLE IF NOT EXISTS `vehicle_financing` (
  `vehicleId` int(11) NOT NULL,
  `balance` int(11) DEFAULT NULL,
  `paymentamount` int(11) DEFAULT NULL,
  `paymentsleft` int(11) DEFAULT NULL,
  `financetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`vehicleId`),
  CONSTRAINT `vehicleId` FOREIGN KEY (`vehicleId`) REFERENCES `player_vehicles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dx_advanced.vehicle_financing: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wasabi_bans
CREATE TABLE IF NOT EXISTS `wasabi_bans` (
  `author` varchar(40) DEFAULT NULL,
  `player` varchar(40) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `ip` varchar(25) DEFAULT NULL,
  `discord` varchar(40) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `ban_time` int(50) NOT NULL,
  `exp_time` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wasabi_bans: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wasabi_evidence
CREATE TABLE IF NOT EXISTS `wasabi_evidence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wasabi_evidence: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wasabi_fingerprints
CREATE TABLE IF NOT EXISTS `wasabi_fingerprints` (
  `identifier` varchar(100) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.wasabi_fingerprints: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.weed_plants
CREATE TABLE IF NOT EXISTS `weed_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property` varchar(30) DEFAULT NULL,
  `stage` tinyint(4) NOT NULL DEFAULT 1,
  `sort` varchar(30) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `food` tinyint(4) NOT NULL DEFAULT 100,
  `health` tinyint(4) NOT NULL DEFAULT 100,
  `stageProgress` tinyint(4) NOT NULL DEFAULT 0,
  `coords` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.weed_plants: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wsb_cctvcameras
CREATE TABLE IF NOT EXISTS `wsb_cctvcameras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wsb_cctvcameras: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wsb_mdt_announcements
CREATE TABLE IF NOT EXISTS `wsb_mdt_announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `priority` varchar(50) DEFAULT 'medium',
  `author` varchar(100) NOT NULL,
  `department` varchar(50) NOT NULL,
  `created_at` int(11) NOT NULL,
  `expires_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wsb_mdt_announcements: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wsb_mdt_bolos
CREATE TABLE IF NOT EXISTS `wsb_mdt_bolos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `issued_by` varchar(50) NOT NULL,
  `issued_by_name` varchar(100) NOT NULL,
  `resolved_by` varchar(50) DEFAULT NULL,
  `resolved_by_name` varchar(100) DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `resolved_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_vehicle` (`vehicle_id`),
  KEY `idx_plate` (`plate`),
  KEY `idx_status` (`status`),
  KEY `idx_created` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wsb_mdt_bolos: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wsb_mdt_callsigns
CREATE TABLE IF NOT EXISTS `wsb_mdt_callsigns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `officer_id` varchar(255) NOT NULL,
  `callsign` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.wsb_mdt_callsigns: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wsb_mdt_cameras
CREATE TABLE IF NOT EXISTS `wsb_mdt_cameras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `coords` text NOT NULL,
  `rotation` text NOT NULL,
  `departments` text DEFAULT '["all"]',
  `model` varchar(100) DEFAULT 'prop_cctv_cam_01a',
  `metadata` text DEFAULT '{}',
  `created_by` varchar(50) DEFAULT NULL,
  `created_by_name` varchar(100) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wsb_mdt_cameras: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wsb_mdt_charges
CREATE TABLE IF NOT EXISTS `wsb_mdt_charges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `jail_time` int(11) NOT NULL DEFAULT 0,
  `fine` int(11) NOT NULL DEFAULT 0,
  `category` varchar(50) NOT NULL DEFAULT 'misdemeanor',
  `created_by` varchar(50) NOT NULL,
  `created_by_name` varchar(100) NOT NULL,
  `metadata` longtext DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_category` (`category`),
  KEY `idx_title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wsb_mdt_charges: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wsb_mdt_citizens
CREATE TABLE IF NOT EXISTS `wsb_mdt_citizens` (
  `identifier` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `dob` varchar(20) NOT NULL DEFAULT 'Unknown',
  `phone` varchar(20) NOT NULL DEFAULT 'Unknown',
  `gender` varchar(10) NOT NULL DEFAULT 'other',
  `job` varchar(50) DEFAULT NULL,
  `job_grade` int(11) DEFAULT 0,
  `fingerprint` varchar(50) NOT NULL,
  `metadata` longtext DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`identifier`),
  KEY `idx_name` (`firstname`,`lastname`),
  KEY `idx_fingerprint` (`fingerprint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wsb_mdt_citizens: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wsb_mdt_entity_links
CREATE TABLE IF NOT EXISTS `wsb_mdt_entity_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_type` varchar(50) NOT NULL,
  `from_id` varchar(50) NOT NULL,
  `to_type` varchar(50) NOT NULL,
  `to_id` varchar(50) NOT NULL,
  `metadata` longtext DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_from` (`from_type`,`from_id`),
  KEY `idx_to` (`to_type`,`to_id`),
  KEY `idx_full` (`from_type`,`from_id`,`to_type`,`to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wsb_mdt_entity_links: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wsb_mdt_evidence
CREATE TABLE IF NOT EXISTS `wsb_mdt_evidence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `evidence_number` varchar(20) NOT NULL,
  `evidence_type` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `location_found` varchar(255) NOT NULL,
  `storage_location` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'checked_in',
  `collected_by` varchar(50) NOT NULL,
  `collected_by_name` varchar(100) NOT NULL,
  `metadata` longtext DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `evidence_number` (`evidence_number`),
  KEY `idx_evidence_number` (`evidence_number`),
  KEY `idx_type` (`evidence_type`),
  KEY `idx_status` (`status`),
  KEY `idx_collected_by` (`collected_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wsb_mdt_evidence: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wsb_mdt_evidence_custody
CREATE TABLE IF NOT EXISTS `wsb_mdt_evidence_custody` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `evidence_id` int(11) NOT NULL,
  `officer_identifier` varchar(50) NOT NULL,
  `officer_name` varchar(100) NOT NULL,
  `action` varchar(50) NOT NULL,
  `notes` text DEFAULT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_evidence_id` (`evidence_id`),
  KEY `idx_officer` (`officer_identifier`),
  CONSTRAINT `fk_custody_evidence` FOREIGN KEY (`evidence_id`) REFERENCES `wsb_mdt_evidence` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wsb_mdt_evidence_custody: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wsb_mdt_incidents
CREATE TABLE IF NOT EXISTS `wsb_mdt_incidents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `incident_number` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'open',
  `primary_citizen` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_by_name` varchar(100) NOT NULL,
  `closed_by` varchar(50) DEFAULT NULL,
  `closed_by_name` varchar(100) DEFAULT NULL,
  `total_fine` int(11) NOT NULL DEFAULT 0,
  `total_jail_time` int(11) NOT NULL DEFAULT 0,
  `fine_reduction` int(11) NOT NULL DEFAULT 0,
  `jail_reduction` int(11) NOT NULL DEFAULT 0,
  `manual_fine` tinyint(1) NOT NULL DEFAULT 0,
  `manual_jail` tinyint(1) NOT NULL DEFAULT 0,
  `max_fine` int(11) DEFAULT NULL,
  `max_jail` int(11) DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `closed_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `incident_number` (`incident_number`),
  KEY `idx_incident_number` (`incident_number`),
  KEY `idx_status` (`status`),
  KEY `idx_primary_citizen` (`primary_citizen`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wsb_mdt_incidents: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wsb_mdt_notes
CREATE TABLE IF NOT EXISTS `wsb_mdt_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `entity_type` varchar(50) NOT NULL,
  `entity_id` varchar(50) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_by_name` varchar(100) NOT NULL,
  `metadata` longtext DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_entity` (`entity_type`,`entity_id`),
  KEY `idx_created_by` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wsb_mdt_notes: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wsb_mdt_photos
CREATE TABLE IF NOT EXISTS `wsb_mdt_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(500) NOT NULL,
  `stored_id` varchar(100) NOT NULL,
  `entity_type` varchar(50) NOT NULL,
  `entity_id` varchar(50) NOT NULL,
  `uploaded_by` varchar(50) NOT NULL,
  `uploaded_by_name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_entity` (`entity_type`,`entity_id`),
  KEY `idx_uploaded_by` (`uploaded_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wsb_mdt_photos: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wsb_mdt_properties
CREATE TABLE IF NOT EXISTS `wsb_mdt_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `property_type` varchar(50) NOT NULL,
  `owner_id` varchar(50) DEFAULT NULL,
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`coords`)),
  `metadata` longtext DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_address` (`address`),
  KEY `idx_owner` (`owner_id`),
  KEY `idx_type` (`property_type`),
  CONSTRAINT `fk_property_owner` FOREIGN KEY (`owner_id`) REFERENCES `wsb_mdt_citizens` (`identifier`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wsb_mdt_properties: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wsb_mdt_vehicles
CREATE TABLE IF NOT EXISTS `wsb_mdt_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(20) NOT NULL,
  `model` varchar(50) NOT NULL,
  `vehicle_type` varchar(50) DEFAULT 'car',
  `owner_id` varchar(50) DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`),
  KEY `idx_plate` (`plate`),
  KEY `idx_owner` (`owner_id`),
  KEY `idx_vehicle_type` (`vehicle_type`),
  CONSTRAINT `fk_vehicle_owner` FOREIGN KEY (`owner_id`) REFERENCES `wsb_mdt_citizens` (`identifier`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wsb_mdt_vehicles: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wsb_mdt_warrants
CREATE TABLE IF NOT EXISTS `wsb_mdt_warrants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `citizen_id` varchar(50) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `issued_by` varchar(50) NOT NULL,
  `issued_by_name` varchar(100) NOT NULL,
  `served_by` varchar(50) DEFAULT NULL,
  `served_by_name` varchar(100) DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `served_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_citizen` (`citizen_id`),
  KEY `idx_property` (`property_id`),
  KEY `idx_status` (`status`),
  KEY `idx_created` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wsb_mdt_warrants: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wsb_mdt_weapons
CREATE TABLE IF NOT EXISTS `wsb_mdt_weapons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial_number` varchar(20) NOT NULL,
  `weapon_type` varchar(50) NOT NULL,
  `owner_id` varchar(50) DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial_number` (`serial_number`),
  KEY `idx_serial` (`serial_number`),
  KEY `idx_owner` (`owner_id`),
  KEY `idx_weapon_type` (`weapon_type`),
  CONSTRAINT `fk_weapon_owner` FOREIGN KEY (`owner_id`) REFERENCES `wsb_mdt_citizens` (`identifier`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wsb_mdt_weapons: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.wsb_speedtraps
CREATE TABLE IF NOT EXISTS `wsb_speedtraps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table dx_advanced.wsb_speedtraps: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.xt_prison
CREATE TABLE IF NOT EXISTS `xt_prison` (
  `identifier` varchar(100) NOT NULL,
  `jailtime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.xt_prison: ~4 rows (approximately)
INSERT INTO `xt_prison` (`identifier`, `jailtime`) VALUES
	('E49SWS1P', 0),
	('GS2C93RQ', 0),
	('KF9K8Y0W', 0),
	('P27MZ277', 0),
	('U4N41JY0', 0),
	('X0472V1A', 0);

-- Dumping structure for table dx_advanced.xt_prison_items
CREATE TABLE IF NOT EXISTS `xt_prison_items` (
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  UNIQUE KEY `owner` (`owner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.xt_prison_items: ~0 rows (approximately)

-- Dumping structure for table dx_advanced.zsx_multicharacter_slots
CREATE TABLE IF NOT EXISTS `zsx_multicharacter_slots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `amount` int(11) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table dx_advanced.zsx_multicharacter_slots: ~0 rows (approximately)

-- Dumping structure for trigger dx_advanced.phone_instagram_decrement_comment_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_decrement_comment_count
AFTER DELETE ON phone_instagram_comments
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_posts
    SET comment_count = comment_count - 1
    WHERE id = OLD.post_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_instagram_decrement_like_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_decrement_like_count
AFTER DELETE ON phone_instagram_likes
FOR EACH ROW
BEGIN
    IF OLD.is_comment = 0 THEN
        UPDATE phone_instagram_posts
        SET like_count = like_count - 1
        WHERE id = OLD.id;
    ELSE
        UPDATE phone_instagram_comments
        SET like_count = like_count - 1
        WHERE id = OLD.id;
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_instagram_decrement_post_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_decrement_post_count
AFTER DELETE ON phone_instagram_posts
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET post_count = post_count - 1
    WHERE username = OLD.username;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_instagram_decrement_story_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_decrement_story_count
AFTER DELETE ON phone_instagram_stories
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET story_count = story_count - 1
    WHERE username = OLD.username;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_instagram_increment_comment_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_increment_comment_count
AFTER INSERT ON phone_instagram_comments
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_posts
    SET comment_count = comment_count + 1
    WHERE id = NEW.post_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_instagram_increment_like_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_increment_like_count
AFTER INSERT ON phone_instagram_likes
FOR EACH ROW
BEGIN
    IF NEW.is_comment = 0 THEN
        UPDATE phone_instagram_posts
        SET like_count = like_count + 1
        WHERE id = NEW.id;
    ELSE
        UPDATE phone_instagram_comments
        SET like_count = like_count + 1
        WHERE id = NEW.id;
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_instagram_increment_post_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_increment_post_count
AFTER INSERT ON phone_instagram_posts
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET post_count = post_count + 1
    WHERE username = NEW.username;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_instagram_increment_story_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_increment_story_count
AFTER INSERT ON phone_instagram_stories
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET story_count = story_count + 1
    WHERE username = NEW.username;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_instagram_update_counts_after_follow
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_update_counts_after_follow
AFTER INSERT ON phone_instagram_follows
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET follower_count = follower_count + 1
    WHERE username = NEW.followed;

    UPDATE phone_instagram_accounts
    SET following_count = following_count + 1
    WHERE username = NEW.follower;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_instagram_update_counts_after_unfollow
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_instagram_update_counts_after_unfollow
AFTER DELETE ON phone_instagram_follows
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET follower_count = follower_count - 1
    WHERE username = OLD.followed;

    UPDATE phone_instagram_accounts
    SET following_count = following_count - 1
    WHERE username = OLD.follower;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_tiktok_decrement_account_likes
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_decrement_account_likes
AFTER DELETE ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_accounts
    JOIN phone_tiktok_videos ON phone_tiktok_videos.username = phone_tiktok_accounts.username
    SET phone_tiktok_accounts.like_count = phone_tiktok_accounts.like_count - 1
    WHERE phone_tiktok_videos.id = OLD.video_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_tiktok_decrement_comment_likes
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_decrement_comment_likes
AFTER DELETE ON phone_tiktok_comments_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_comments
    SET likes = likes - 1
    WHERE id = OLD.comment_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_tiktok_decrement_video_comments
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_decrement_video_comments
BEFORE DELETE ON phone_tiktok_comments
FOR EACH ROW
BEGIN
    DECLARE v_replies_count INT;

    -- Count the replies for the comment
    SELECT COUNT(*) INTO v_replies_count
    FROM phone_tiktok_comments
    WHERE reply_to = OLD.id;

    -- Update the video's comments count
    UPDATE phone_tiktok_videos
    SET comments = comments - (1 + v_replies_count)
    WHERE id = OLD.video_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_tiktok_decrement_video_likes
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_decrement_video_likes
AFTER DELETE ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET likes = likes - 1
    WHERE id = OLD.video_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_tiktok_decrement_video_saves
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_decrement_video_saves
AFTER DELETE ON phone_tiktok_saves
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET saves = saves - 1
    WHERE id = OLD.video_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_tiktok_increment_account_likes
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_account_likes
AFTER INSERT ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_accounts
    JOIN phone_tiktok_videos ON phone_tiktok_videos.username = phone_tiktok_accounts.username
    SET phone_tiktok_accounts.like_count = phone_tiktok_accounts.like_count + 1
    WHERE phone_tiktok_videos.id = NEW.video_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_tiktok_increment_comment_likes
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_comment_likes
AFTER INSERT ON phone_tiktok_comments_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_comments
    SET likes = likes + 1
    WHERE id = NEW.comment_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_tiktok_increment_video_comments
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_video_comments
AFTER INSERT ON phone_tiktok_comments
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET comments = comments + 1
    WHERE id = NEW.video_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_tiktok_increment_video_count
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_video_count
AFTER INSERT ON phone_tiktok_videos
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_accounts
    SET video_count = video_count + 1
    WHERE username = NEW.username;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_tiktok_increment_video_likes
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_video_likes
AFTER INSERT ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET likes = likes + 1
    WHERE id = NEW.video_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_tiktok_increment_video_saves
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_video_saves
AFTER INSERT ON phone_tiktok_saves
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET saves = saves + 1
    WHERE id = NEW.video_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_tiktok_increment_video_views
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_increment_video_views
AFTER INSERT ON phone_tiktok_views
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET views = views + 1
    WHERE id = NEW.video_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_tiktok_update_counts_after_follow
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_update_counts_after_follow
AFTER INSERT ON phone_tiktok_follows
FOR EACH ROW
BEGIN
    -- Increment the follower_count for the followed user
    UPDATE phone_tiktok_accounts
    SET follower_count = follower_count + 1
    WHERE username = NEW.followed;

    -- Increment the following_count for the follower user
    UPDATE phone_tiktok_accounts
    SET following_count = following_count + 1
    WHERE username = NEW.follower;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_tiktok_update_counts_after_unfollow
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_update_counts_after_unfollow
AFTER DELETE ON phone_tiktok_follows
FOR EACH ROW
BEGIN
    -- Decrement the follower_count for the followed user
    UPDATE phone_tiktok_accounts
    SET follower_count = follower_count - 1
    WHERE username = OLD.followed;

    -- Decrement the following_count for the follower user
    UPDATE phone_tiktok_accounts
    SET following_count = following_count - 1
    WHERE username = OLD.follower;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_tiktok_update_last_message
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_tiktok_update_last_message
AFTER INSERT ON phone_tiktok_messages
FOR EACH ROW
BEGIN
    DECLARE modified_content TEXT CHARACTER SET utf8mb4;

    IF NEW.content LIKE '<!SHARED-VIDEO-URL%' THEN
        SET modified_content = 'Shared a video';
    ELSEIF LENGTH(NEW.content) > 50 THEN
        SET modified_content = CONCAT(SUBSTR(NEW.content, 1, 17), '...');
    ELSE
        SET modified_content = NEW.content;
    END IF;

    UPDATE phone_tiktok_channels
    SET last_message = modified_content
    WHERE id = NEW.channel_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_twitter_update_counts_after_follow
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_twitter_update_counts_after_follow
AFTER INSERT ON phone_twitter_follows
FOR EACH ROW
BEGIN
    -- Increment the follower_count for the followed user
    UPDATE phone_twitter_accounts
    SET follower_count = follower_count + 1
    WHERE username = NEW.followed;

    -- Increment the following_count for the follower user
    UPDATE phone_twitter_accounts
    SET following_count = following_count + 1
    WHERE username = NEW.follower;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_twitter_update_counts_after_unfollow
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_twitter_update_counts_after_unfollow
AFTER DELETE ON phone_twitter_follows
FOR EACH ROW
BEGIN
    -- Decrement the follower_count for the followed user
    UPDATE phone_twitter_accounts
    SET follower_count = follower_count - 1
    WHERE username = OLD.followed;

    -- Decrement the following_count for the follower user
    UPDATE phone_twitter_accounts
    SET following_count = following_count - 1
    WHERE username = OLD.follower;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_twitter_update_like_count_after_like
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_twitter_update_like_count_after_like
AFTER INSERT ON phone_twitter_likes
FOR EACH ROW
BEGIN
    UPDATE phone_twitter_tweets
    SET like_count = like_count + 1
    WHERE id = NEW.tweet_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_twitter_update_like_count_after_unlike
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_twitter_update_like_count_after_unlike
AFTER DELETE ON phone_twitter_likes
FOR EACH ROW
BEGIN
    UPDATE phone_twitter_tweets
    SET like_count = like_count - 1
    WHERE id = OLD.tweet_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_twitter_update_retweet_count_after_retweet
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_twitter_update_retweet_count_after_retweet
AFTER INSERT ON phone_twitter_retweets
FOR EACH ROW
BEGIN
    UPDATE phone_twitter_tweets
    SET retweet_count = retweet_count + 1
    WHERE id = NEW.tweet_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger dx_advanced.phone_twitter_update_retweet_count_after_unretweet
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS phone_twitter_update_retweet_count_after_unretweet
AFTER DELETE ON phone_twitter_retweets
FOR EACH ROW
BEGIN
    UPDATE phone_twitter_tweets
    SET retweet_count = retweet_count - 1
    WHERE id = OLD.tweet_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
