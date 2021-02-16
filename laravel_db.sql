-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.31 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.1.0.6212
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for laravel_db
CREATE DATABASE IF NOT EXISTS `laravel_db` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `laravel_db`;

-- Dumping structure for table laravel_db.lyrics
CREATE TABLE IF NOT EXISTS `lyrics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lyrics` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(209) COLLATE utf8_unicode_ci NOT NULL,
  `artist` varchar(209) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laravel_db.lyrics: 2 rows
DELETE FROM `lyrics`;
/*!40000 ALTER TABLE `lyrics` DISABLE KEYS */;
INSERT INTO `lyrics` (`id`, `lyrics`, `title`, `artist`, `created_at`, `updated_at`) VALUES
	(1, 'Infernos', 'Inferno', 'Mrs. Green Apple', '2021-02-16 23:19:26', '2021-02-16 16:29:09'),
	(2, 'Centimeter', 'Centimeter', 'Peggies', '2021-02-16 23:20:16', '2021-02-16 23:20:17');
/*!40000 ALTER TABLE `lyrics` ENABLE KEYS */;

-- Dumping structure for table laravel_db.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(209) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laravel_db.migrations: 3 rows
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2021_02_16_145417_create_lyrics_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table laravel_db.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(209) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(209) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laravel_db.password_resets: 0 rows
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table laravel_db.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(209) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(209) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(209) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laravel_db.users: 1 rows
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'sample', 'sample@email.com', NULL, '$2y$10$2Su9clyPnQPxuXRYaBkLouaVAKkxEgixwerPaqdMCQP6foSed554m', 'pC8S7c0aBM5kGt4bAqChuYmA9IMokQsP4uQHeQK334p5Edd2jwp57ynXlpii', '2021-02-16 17:01:40', '2021-02-16 17:01:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
