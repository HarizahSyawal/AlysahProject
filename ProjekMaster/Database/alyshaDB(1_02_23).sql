-- Adminer 4.8.1 MySQL 10.4.27-MariaDB dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `alysah-project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `alysah-project`;

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2014_10_12_200000_add_two_factor_columns_to_users_table',	1),
(4,	'2019_08_19_000000_create_failed_jobs_table',	1),
(5,	'2019_12_14_000001_create_personal_access_tokens_table',	1),
(6,	'2023_01_21_104022_create_sessions_table',	1),
(7,	'2023_01_27_145807_create_product_categories_table',	2),
(8,	'2023_01_27_150458_add_field_to_users_table',	2),
(9,	'2023_01_27_151105_create_products_table',	3),
(10,	'2023_01_27_151652_create_user_address_table',	4),
(11,	'2023_01_27_152436_create_product_galleries_table',	5),
(12,	'2023_01_27_152742_create_transactions_table',	6),
(13,	'2023_01_27_152945_create_transactions_table',	7),
(14,	'2023_01_27_153307_create_transaction_items_table',	8);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1,	'App\\Models\\User',	1,	'authToken',	'2ad2a3099eda4c3ea08a0b7a688caff076f4883401d68ec08556f59e75d0d8db',	'[\"*\"]',	NULL,	NULL,	'2023-01-28 23:24:24',	'2023-01-28 23:24:24'),
(2,	'App\\Models\\User',	2,	'authToken',	'6fc3711b1ec7d36b61a8902bbc481c8e0287e0c799898c855ab1e3a983f142ef',	'[\"*\"]',	NULL,	NULL,	'2023-01-28 23:28:50',	'2023-01-28 23:28:50'),
(3,	'App\\Models\\User',	1,	'authToken',	'3fef05dcd336cf66c007a3a8afb1528c7144c6d9cd67d72dbfc195b8a55d5b20',	'[\"*\"]',	NULL,	NULL,	'2023-01-28 23:44:18',	'2023-01-28 23:44:18'),
(4,	'App\\Models\\User',	1,	'authToken',	'7d831c3813a7216493705a25ae97ba7b9057d55719715ccf70547a6c09a8299d',	'[\"*\"]',	NULL,	NULL,	'2023-01-28 23:44:19',	'2023-01-28 23:44:19'),
(5,	'App\\Models\\User',	1,	'authToken',	'83d855f969446af44fbf78393dfa011f74afec0459729fd766191dec7b15cf80',	'[\"*\"]',	NULL,	NULL,	'2023-01-28 23:46:25',	'2023-01-28 23:46:25'),
(6,	'App\\Models\\User',	1,	'authToken',	'07a97dd67c68dbde0df177a5cc0191c8f837cda91a054c42118bee6267580f64',	'[\"*\"]',	NULL,	NULL,	'2023-01-28 23:49:29',	'2023-01-28 23:49:29'),
(7,	'App\\Models\\User',	1,	'authToken',	'a016185b568e5de93b2253ee21a29160dde1ee6b03b8ec4f1ba313bdc7834655',	'[\"*\"]',	NULL,	NULL,	'2023-01-28 23:55:55',	'2023-01-28 23:55:55'),
(8,	'App\\Models\\User',	1,	'authToken',	'7530b09af609bbf91dc82cf2be8eabb5b5c71696f1fe19b3684cb47610e1d1ae',	'[\"*\"]',	NULL,	NULL,	'2023-01-29 00:56:27',	'2023-01-29 00:56:27'),
(9,	'App\\Models\\User',	1,	'authToken',	'c0f1e654be3199145cb3f5aeb3d6c849fdd632083b3f0f2a69b85c4f12679446',	'[\"*\"]',	NULL,	NULL,	'2023-01-29 01:15:22',	'2023-01-29 01:15:22'),
(10,	'App\\Models\\User',	2,	'authToken',	'2984329ac5586c246d77ac660e13d79529dfdb366caa8d43c6ffba5ae7d284c5',	'[\"*\"]',	NULL,	NULL,	'2023-01-29 03:31:41',	'2023-01-29 03:31:41'),
(11,	'App\\Models\\User',	2,	'authToken',	'5c28befb57948297089501560cf18387be7cf14ab59277d1058faece5113b1cd',	'[\"*\"]',	NULL,	NULL,	'2023-01-29 03:37:16',	'2023-01-29 03:37:16'),
(12,	'App\\Models\\User',	2,	'authToken',	'e92ffc957e4c8111fe69edb2fd55dbd5e0b5c12aad3285dc95f50f3e463b74e7',	'[\"*\"]',	NULL,	NULL,	'2023-01-29 03:38:50',	'2023-01-29 03:38:50');

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` longtext NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `categories_id` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`id`, `name`, `price`, `description`, `tags`, `categories_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	'Heva Blouse',	100000.00,	'Bahan Original Crinkle Airflow (Crinkle Import)\r\nKUALITAS BAHAN & JAHITAN\r\nBahan Ringan , Flowwy , Elegan & Nyaman dipakai\r\nBisa Untuk Formal / Non Formal',	NULL,	1,	NULL,	'2023-02-01 04:44:56',	'2023-02-01 04:44:56'),
(2,	'Kemeja Blouse Crinkle',	100000.00,	'Kemeja Wanita Blouse Crinkle Lengan Panjang Casual Polos Allsize XL Kerja Kantor Korean Style Import Terbaru kekinian',	NULL,	5,	NULL,	'2023-02-01 04:46:40',	'2023-02-01 04:46:40'),
(3,	'Kulot Crincle Pants',	50000.00,	'Panjang Celana 93-95 Cm\r\nL.Pinggang 60 Cm melar 120 cm\r\nL.Paha 67 Cm\r\nL.Bawah 67 Cm\r\nPenggunaan Bb 40-80Kg',	NULL,	2,	NULL,	'2023-02-01 04:48:07',	'2023-02-01 04:48:20'),
(4,	'Baju Gamis Wanita Muslim',	100000.00,	'Free belt (bisa dipakai atau tidak karena bisa dilepas pasang)\r\n Cutting lebar dengan model rempelan di bagian pinggang Dress\r\n Lengan pakai karet sehingga nyaman digunakan\r\nAll size fit to XL',	NULL,	3,	NULL,	'2023-02-01 04:50:12',	'2023-02-01 04:50:12'),
(5,	'Rok Polos Panjang',	50000.00,	'bahannya super adem \r\nallsize banget ini bb bisa sampai 80 kg\r\nbuat yang pingangnya udah full karet',	NULL,	4,	NULL,	'2023-02-01 04:52:05',	'2023-02-01 04:52:05');

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `product_categories` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	'Baju Blouse',	NULL,	'2023-02-01 04:27:00',	'2023-02-01 04:27:00'),
(2,	'Celana',	NULL,	'2023-02-01 04:28:13',	'2023-02-01 04:28:13'),
(3,	'Gamis',	NULL,	'2023-02-01 04:28:18',	'2023-02-01 04:50:30'),
(4,	'Rok',	NULL,	'2023-02-01 04:28:23',	'2023-02-01 04:28:23'),
(5,	'Alysha Collection',	NULL,	'2023-02-01 04:28:33',	'2023-02-01 04:28:33');

DROP TABLE IF EXISTS `product_galleries`;
CREATE TABLE `product_galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` bigint(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `product_galleries` (`id`, `products_id`, `url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	1,	'public/gallery/RhKHT6DAOo5tofvm6RiC6RZhBWg0E9P2GuVst0Ap.png',	NULL,	'2023-02-01 04:45:17',	'2023-02-01 04:45:17'),
(2,	2,	'public/gallery/s2g2PfKtuFW5gG7lF7J4Pg7hBC54B0TJeoMrnvRq.png',	NULL,	'2023-02-01 04:46:51',	'2023-02-01 04:46:51'),
(3,	3,	'public/gallery/j1lYLOGWcPcoJrnXnNR6TNUWjEamcARgt3kzDC3b.png',	NULL,	'2023-02-01 04:48:28',	'2023-02-01 04:48:28'),
(4,	4,	'public/gallery/sWaSjIuaKYbTumw4QJMv6pMRLicqw83vyG112zOE.png',	NULL,	'2023-02-01 04:50:22',	'2023-02-01 04:50:22'),
(5,	5,	'public/gallery/uIISHXiYmHJZipXUNalalitRZLf1tdwvph3RckxK.png',	NULL,	'2023-02-01 04:52:13',	'2023-02-01 04:52:13');

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('RfvbBG7ibboRTtmULpbdeWHSjGLhQWJtHygoqmvW',	2,	'127.0.0.1',	'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Safari/605.1.15',	'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicTJ6UHVYT1c3RlhNUWo1OEsybnVwUkw4ZWpkdk1GUDE4TWpJbDFkMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9hbHlzYWgtYmFja2VuZC50ZXN0L2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkcVdtTFlvd1hUTGVJekpPd1NQanhMdWY2WDJ1V2FLTFN2MGV2QUtHUHZKWUNDUlRGVS9FUGUiO30=',	1675250579);

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) NOT NULL,
  `address` text DEFAULT NULL,
  `total_price` double(8,2) NOT NULL DEFAULT 0.00,
  `shipping_price` double(8,2) NOT NULL DEFAULT 0.00,
  `status` varchar(255) NOT NULL DEFAULT 'PENDING',
  `payment` varchar(255) NOT NULL DEFAULT 'MANUAL',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `transaction_items`;
CREATE TABLE `transaction_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) NOT NULL,
  `products_id` bigint(20) NOT NULL,
  `transactions_id` bigint(20) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `roles` varchar(255) NOT NULL DEFAULT 'USER',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `username`, `phone`, `roles`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1,	'wahyudin',	'marcmarquez0000@gmail.com',	NULL,	NULL,	'ADMIN',	NULL,	'$2y$10$C90a2DLQWrLVgFKbUR5gGuuHV0/pcpzZCffd0OMgOiujqzQLh6rk.',	NULL,	NULL,	NULL,	'WriOmW35f3agmOuMnpD3ksRhsc97hCfodTUGK92kf8r2AytueK4cFApFbNNI',	NULL,	NULL,	'2023-01-28 22:31:15',	'2023-01-28 22:31:15'),
(2,	'Harizah Syawal',	'user@test.com',	'hariz',	'123123123',	'ADMIN',	NULL,	'$2y$10$qWmLYowXTLeIzJOwSPjxLuf6X2uWaKLSv0evAKGPvJYCCRTFU/EPe',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2023-01-28 23:28:50',	'2023-01-28 23:28:50');

DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) NOT NULL,
  `address_line` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- 2023-02-01 11:52:34
