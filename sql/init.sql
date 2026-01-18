-- Opprett tabell for spillere/karakterer
CREATE TABLE IF NOT EXISTS `hybox_players` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `identifier` VARCHAR(50) NOT NULL, -- Spillerens Hytale UUID
  `char_name` VARCHAR(50) DEFAULT 'Unavngitt Karakter',
  `cash` INT(11) DEFAULT 500, -- Startpenger i lomma
  `bank` INT(11) DEFAULT 5000, -- Startpenger i banken
  `job` VARCHAR(50) DEFAULT 'unemployed',
  `job_grade` INT(11) DEFAULT 0,
  `inventory` LONGTEXT DEFAULT NULL, -- JSON-string med items
  `metadata` LONGTEXT DEFAULT NULL, -- JSON for sult, tørst, etc.
  `position` VARCHAR(255) DEFAULT '{"x": 0, "y": 0, "z": 0}',
  PRIMARY KEY (`id`),
  UNIQUE KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Eksempel på tabell for registrerte kjøretøy (hvis aktuelt senere)
CREATE TABLE IF NOT EXISTS `hybox_vehicles` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `owner` VARCHAR(50) NOT NULL,
  `plate` VARCHAR(12) NOT NULL,
  `vehicle` VARCHAR(50) DEFAULT NULL,
  `stored` TINYINT(4) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;