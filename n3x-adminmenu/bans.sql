-- N3X Admin Menu - Ban System Database Table
-- Import this SQL file to your database to enable the ban system

CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL,
  `reason` text NOT NULL,
  `expire` int(11) NOT NULL DEFAULT 0 COMMENT '0 = permanent, timestamp = temp ban',
  `bannedby` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
