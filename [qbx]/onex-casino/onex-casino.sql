/* ============================================================
   ONE X CASINO – PILNA DUOMBAZĖ
   ============================================================ */

/* ------------------------------------------------------------
   1. Kazino logų lentelė (visų žaidimų istorija)
   ------------------------------------------------------------ */
CREATE TABLE IF NOT EXISTS `onex_casino_logs` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `identifier` VARCHAR(64) NOT NULL,
  `game` VARCHAR(32) NOT NULL,
  `bet` INT UNSIGNED NOT NULL DEFAULT 0,
  `payout` INT UNSIGNED NOT NULL DEFAULT 0,
  `result` VARCHAR(16) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `idx_identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/* ------------------------------------------------------------
   2. OPTIONAL: Kazino balansas (jei naudosies vidine balansų sistema)
   - NEPRIVALOMA, tik jei darysi atskirą kazino balansą
   ------------------------------------------------------------ */
CREATE TABLE IF NOT EXISTS `onex_casino_balance` (
  `identifier` VARCHAR(64) NOT NULL,
  `balance` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/* ------------------------------------------------------------
   3. OPTIONAL: Žaidėjų aktyvios sesijos (naudojama tik jei norėsi persistencijos)
   - NEPRIVALOMA, galima ignoruoti
   ------------------------------------------------------------ */
CREATE TABLE IF NOT EXISTS `onex_casino_sessions` (
  `identifier` VARCHAR(64) NOT NULL,
  `session_data` LONGTEXT NULL,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/* ------------------------------------------------------------
   4. OPTIONAL: Mines užfiksuoti rezultatai (jei nori atskirų logų)
   - NEPRIVALOMA (nes jau yra logs lentelė)
   ------------------------------------------------------------ */
CREATE TABLE IF NOT EXISTS `onex_mines_history` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `identifier` VARCHAR(64) NOT NULL,
  `bet` INT UNSIGNED NOT NULL DEFAULT 0,
  `bombs` INT UNSIGNED NOT NULL DEFAULT 5,
  `won_multiplier` DECIMAL(5,2) DEFAULT 0,
  `payout` INT UNSIGNED DEFAULT 0,
  `result` VARCHAR(16) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/* ------------------------------------------------------------
   5. OPTIONAL: Roulette statymų istorija (atskirai nuo logs)
   - NEPRIVALOMA
   ------------------------------------------------------------ */
CREATE TABLE IF NOT EXISTS `onex_roulette_history` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `identifier` VARCHAR(64) NOT NULL,
  `red` INT UNSIGNED DEFAULT 0,
  `black` INT UNSIGNED DEFAULT 0,
  `green` INT UNSIGNED DEFAULT 0,
  `win_number` INT NOT NULL,
  `payout` INT UNSIGNED NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/* ------------------------------------------------------------
   6. OPTIONAL: Dice historia (atskirai nuo logs)
   – NEPRIVALOMA
   ------------------------------------------------------------ */
CREATE TABLE IF NOT EXISTS `onex_dice_history` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `identifier` VARCHAR(64) NOT NULL,
  `player_number` INT NOT NULL,
  `server_number` INT NOT NULL,
  `bet` INT UNSIGNED NOT NULL,
  `payout` INT UNSIGNED NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
