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
(12,	'App\\Models\\User',	2,	'authToken',	'e92ffc957e4c8111fe69edb2fd55dbd5e0b5c12aad3285dc95f50f3e463b74e7',	'[\"*\"]',	NULL,	NULL,	'2023-01-29 03:38:50',	'2023-01-29 03:38:50'),
(13,	'App\\Models\\User',	2,	'authToken',	'71c5e454485607c4443497907c7f24dc18d14bef55b6cd0ea34a3b32a7acb79f',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 05:05:06',	'2023-02-01 05:05:06'),
(14,	'App\\Models\\User',	3,	'authToken',	'7988497a3092f0f76875c5f764d170d47bd53fc1961680f86dcfc3842dd6ac38',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 05:19:23',	'2023-02-01 05:19:23'),
(15,	'App\\Models\\User',	2,	'authToken',	'64500dcf3fd064ce51f389f4563bfebab595841876017909045d0b548862045b',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 06:18:20',	'2023-02-01 06:18:20'),
(16,	'App\\Models\\User',	2,	'authToken',	'a3c84baee6a011ac0ae5254ff1d2daec30910c82ab0f23a9e77a6e9cef1d1884',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 06:23:13',	'2023-02-01 06:23:13'),
(17,	'App\\Models\\User',	2,	'authToken',	'd655978a7e4248842fd1cefbe3ca3ffa19149a93a7bc5b7112e4a6b6002c699d',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 06:23:45',	'2023-02-01 06:23:45'),
(18,	'App\\Models\\User',	2,	'authToken',	'9a45ff2f99a0f0887de892af9fbfb8420c7f39d83ed28dd193357fe31b27d63d',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 06:27:58',	'2023-02-01 06:27:58'),
(19,	'App\\Models\\User',	2,	'authToken',	'6cfc133f2239b758c046851e843687a7ba4c4f5e0a438580e24b8e733902185e',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 06:52:24',	'2023-02-01 06:52:24'),
(20,	'App\\Models\\User',	2,	'authToken',	'4721cd6ae8072f79421eba255cba0f15d0afd42bd4f427a1e52a5a7559ab84bd',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 07:02:46',	'2023-02-01 07:02:46'),
(21,	'App\\Models\\User',	2,	'authToken',	'f430ed63c4d98b163fb6814e016b31bbb46c315f7820d4d348a67d4e24bd189b',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 07:30:58',	'2023-02-01 07:30:58'),
(22,	'App\\Models\\User',	2,	'authToken',	'208f2fd103cd65db7e347e5de59d37e54ce174e53030c415ff31e79ef5649242',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 07:35:58',	'2023-02-01 07:35:58'),
(23,	'App\\Models\\User',	2,	'authToken',	'b5d30ace7deb198e680c7ec6f5d1345a4655a0e35fe2a69870df4c9650fdda54',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 10:05:11',	'2023-02-01 10:05:11'),
(24,	'App\\Models\\User',	2,	'authToken',	'43531811d0d7728f92d1fc939159b99277fe6e5ac67d401dd6d7b573f2810045',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 10:20:54',	'2023-02-01 10:20:54'),
(25,	'App\\Models\\User',	2,	'authToken',	'fdbe1b8bcd724e0b568aa66be80911446091d5ec65362a2467399b5849517848',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 10:25:28',	'2023-02-01 10:25:28'),
(26,	'App\\Models\\User',	2,	'authToken',	'de3bcde62ebfb16673911b47360c3cf123f049a389a98efdd410ff4ba7364b96',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 20:15:04',	'2023-02-01 20:15:04'),
(27,	'App\\Models\\User',	2,	'authToken',	'3cc5b732944e00219b58ac862d5df68eed4a496603ffdd34ad64f820b7b4abe2',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 20:17:47',	'2023-02-01 20:17:47'),
(28,	'App\\Models\\User',	2,	'authToken',	'08e119a10ff8af8726bee3243035b0c61f077aca2ce83c9d83dbf58a06ec0cd7',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 20:34:16',	'2023-02-01 20:34:16'),
(29,	'App\\Models\\User',	2,	'authToken',	'46b9f60aea62585cda0ea7be0462c3e195953e06c3377d8a1b1ec37b4962c2ef',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 20:35:50',	'2023-02-01 20:35:50'),
(30,	'App\\Models\\User',	2,	'authToken',	'0d9d07749a8c577633a39ca851f54ec208600d7fd6f832616e50f573c8cf151b',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 20:44:58',	'2023-02-01 20:44:58'),
(31,	'App\\Models\\User',	2,	'authToken',	'7eaee3e17d7e84c52c80f2204558dcb58f81861126b2355a9a160fc54687a22a',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 20:55:28',	'2023-02-01 20:55:28'),
(32,	'App\\Models\\User',	2,	'authToken',	'cf9b0b9a3ad0bc85f7e0ae27535cac4b32a6dcd588a17a8af3b3606560f296be',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 21:08:30',	'2023-02-01 21:08:30'),
(33,	'App\\Models\\User',	2,	'authToken',	'50440e02ec287473d14a1df755f66cbfde3280d7e7e3d3620ab7f29fe725f11a',	'[\"*\"]',	NULL,	NULL,	'2023-02-01 21:24:24',	'2023-02-01 21:24:24'),
(34,	'App\\Models\\User',	2,	'authToken',	'08710d3902f0c57f88349738a83b09b97b1859bb66303994369f45bfab692b78',	'[\"*\"]',	NULL,	NULL,	'2023-02-02 02:31:37',	'2023-02-02 02:31:37'),
(35,	'App\\Models\\User',	2,	'authToken',	'4ba6ef7cd192ebd14181d501a74af4a136c1fcc6b76dc07fd2ec32d3e7600bf0',	'[\"*\"]',	NULL,	NULL,	'2023-02-02 02:37:37',	'2023-02-02 02:37:37'),
(36,	'App\\Models\\User',	2,	'authToken',	'f223ce0c96a42d5046ded550aeaf357bf9786d5b3149dd6bed4614ab38bad624',	'[\"*\"]',	NULL,	NULL,	'2023-02-02 02:46:45',	'2023-02-02 02:46:45'),
(37,	'App\\Models\\User',	2,	'authToken',	'70ec729b9f165336d17ddd66fbe496dbe45deda2d6e7545c27ebe0800a97954d',	'[\"*\"]',	NULL,	NULL,	'2023-02-02 02:47:51',	'2023-02-02 02:47:51'),
(38,	'App\\Models\\User',	2,	'authToken',	'b459d6d84c81f5e5d15543a773eefe2ce171f4b263c2608f0f12378178665fce',	'[\"*\"]',	NULL,	NULL,	'2023-02-02 03:03:53',	'2023-02-02 03:03:53'),
(39,	'App\\Models\\User',	2,	'authToken',	'36ab0bf9ad203f29ed0032ca806cbd11e5647bdc97fde31a1d9a31246a961587',	'[\"*\"]',	NULL,	NULL,	'2023-02-02 03:57:05',	'2023-02-02 03:57:05'),
(40,	'App\\Models\\User',	2,	'authToken',	'51618ca163e09bb5c403f6b31b92251854aa0c09788ff27377e035972acd741f',	'[\"*\"]',	NULL,	NULL,	'2023-02-02 04:22:12',	'2023-02-02 04:22:12'),
(41,	'App\\Models\\User',	3,	'authToken',	'd9fb98cbc7f2575906b542e65e98be4d3b3750044a273841cf08432f5a304803',	'[\"*\"]',	NULL,	NULL,	'2023-02-02 04:25:22',	'2023-02-02 04:25:22'),
(42,	'App\\Models\\User',	2,	'authToken',	'7ea072ed6c786c8df1165766e2209715ecedc8b50bcfbe2ec9093b95600a0c5d',	'[\"*\"]',	NULL,	NULL,	'2023-02-02 04:26:04',	'2023-02-02 04:26:04'),
(43,	'App\\Models\\User',	2,	'authToken',	'5e0926a26207fdbe231f23f56a5613e5e681258c73e861f95037b2b0bc0dbb56',	'[\"*\"]',	'2023-02-02 10:14:34',	NULL,	'2023-02-02 10:09:39',	'2023-02-02 10:14:34'),
(44,	'App\\Models\\User',	2,	'authToken',	'401c9bc317e4a9954ad290ee7f0cfc1078262672fe1b047d592e4a4e09d366cc',	'[\"*\"]',	'2023-02-02 10:24:20',	NULL,	'2023-02-02 10:22:09',	'2023-02-02 10:24:20'),
(45,	'App\\Models\\User',	2,	'authToken',	'060dd6e5150b9dad3f4a7b3e1d5cd879a27087e8f27ada6cfd374f2feb35b7e5',	'[\"*\"]',	'2023-02-02 10:42:48',	NULL,	'2023-02-02 10:35:29',	'2023-02-02 10:42:48'),
(46,	'App\\Models\\User',	2,	'authToken',	'6f7397eeb067cbc0e9b8fa2e57f82990033c3c8939ea36493f4efbc8a03cdb92',	'[\"*\"]',	'2023-02-02 10:51:51',	NULL,	'2023-02-02 10:49:41',	'2023-02-02 10:51:51'),
(47,	'App\\Models\\User',	2,	'authToken',	'f3423257d7c458964e2cba618098340764ceba702327aeafd814c8ed00b204a9',	'[\"*\"]',	'2023-02-02 10:59:20',	NULL,	'2023-02-02 10:54:28',	'2023-02-02 10:59:20'),
(48,	'App\\Models\\User',	2,	'authToken',	'b652db77b14b5592dc8b276f29996a1ba3b0360209b2b84ec693287bc9725778',	'[\"*\"]',	'2023-02-02 12:09:44',	NULL,	'2023-02-02 11:18:13',	'2023-02-02 12:09:44'),
(49,	'App\\Models\\User',	2,	'authToken',	'c2feb0a9149691088ae1ceca89fddc620f43ebdfd9acb06410d4a32631200200',	'[\"*\"]',	'2023-02-02 12:07:49',	NULL,	'2023-02-02 12:07:33',	'2023-02-02 12:07:49'),
(50,	'App\\Models\\User',	2,	'authToken',	'3daf31e25bb130f67ef60a43501987fdaefe64c3a469ca0aea4c41d90c895200',	'[\"*\"]',	'2023-02-02 12:12:38',	NULL,	'2023-02-02 12:11:56',	'2023-02-02 12:12:38'),
(51,	'App\\Models\\User',	2,	'authToken',	'd67a00d828e7aa12c075014d0b81bab542e26b271ac7ae9fd99cd43964b8b432',	'[\"*\"]',	NULL,	NULL,	'2023-02-03 00:28:11',	'2023-02-03 00:28:11'),
(52,	'App\\Models\\User',	2,	'authToken',	'899ab9e749f1d497a40dcc875a5d141181b328a42828cee2edb92e06bd31c664',	'[\"*\"]',	NULL,	NULL,	'2023-02-05 01:47:07',	'2023-02-05 01:47:07'),
(53,	'App\\Models\\User',	2,	'authToken',	'906ce7b254ee9addccb7cf6e96f0dd7ca14d2f004969bbc66e6dd10340c42017',	'[\"*\"]',	NULL,	NULL,	'2023-02-05 02:04:45',	'2023-02-05 02:04:45'),
(54,	'App\\Models\\User',	2,	'authToken',	'806ccaa049ee91ac11ddca12d8803d4854acaccce2e9949c8e10055a52a14c3b',	'[\"*\"]',	NULL,	NULL,	'2023-02-05 06:04:42',	'2023-02-05 06:04:42'),
(55,	'App\\Models\\User',	2,	'authToken',	'3eb376b7f1ae27c79277a6aeabd089aa7ee29c987f84598a555c187f061c6551',	'[\"*\"]',	NULL,	NULL,	'2023-02-05 06:18:09',	'2023-02-05 06:18:09'),
(56,	'App\\Models\\User',	2,	'authToken',	'5b6b8b82a5a69fc20c1962ac0aa84813dc5fe618395a58da590047b5c43a3c3b',	'[\"*\"]',	'2023-02-05 06:26:35',	NULL,	'2023-02-05 06:26:13',	'2023-02-05 06:26:35'),
(57,	'App\\Models\\User',	4,	'authToken',	'4b12b869b53c24967487d59e38a410a3bf33abebd7f9252b8af1e1fa457c6087',	'[\"*\"]',	NULL,	NULL,	'2023-02-05 06:55:15',	'2023-02-05 06:55:15'),
(58,	'App\\Models\\User',	5,	'authToken',	'2e77d273218bb9260e95bf33b234a7c7f6d55959eed9c5545875f728bf44a201',	'[\"*\"]',	'2023-02-05 07:00:47',	NULL,	'2023-02-05 07:00:01',	'2023-02-05 07:00:47'),
(59,	'App\\Models\\User',	4,	'authToken',	'5533eba60019534be29cfb53acee02d94e031cc2164c087001bfaea30ea6850d',	'[\"*\"]',	NULL,	NULL,	'2023-02-06 00:59:39',	'2023-02-06 00:59:39'),
(60,	'App\\Models\\User',	4,	'authToken',	'5d57471bef5c534249366499868b8b6201db823a40f491b7e6be4630a58a3472',	'[\"*\"]',	NULL,	NULL,	'2023-02-06 01:06:16',	'2023-02-06 01:06:16'),
(61,	'App\\Models\\User',	4,	'authToken',	'bdb8c877e92522f2d6b1a5a7913ce95c47301e974a692d1dc06982c9e653d614',	'[\"*\"]',	'2023-02-07 02:50:30',	NULL,	'2023-02-06 01:09:03',	'2023-02-07 02:50:30'),
(62,	'App\\Models\\User',	6,	'authToken',	'e6abaa007b6aae4ad3b99a29e713b98371e707f43d1e6a9076c515d5a5c49fd3',	'[\"*\"]',	NULL,	NULL,	'2023-02-06 01:17:51',	'2023-02-06 01:17:51'),
(63,	'App\\Models\\User',	4,	'authToken',	'0138c7701bdc6d3c4fde2c2518ff237fced16d6249fce121a53a6ddcc8a58b80',	'[\"*\"]',	NULL,	NULL,	'2023-02-06 01:25:24',	'2023-02-06 01:25:24'),
(64,	'App\\Models\\User',	4,	'authToken',	'95139580eefb52686d54e15accae2eed46872624a6e904bd5158dbaf0ae09ccf',	'[\"*\"]',	NULL,	NULL,	'2023-02-06 02:32:24',	'2023-02-06 02:32:24'),
(65,	'App\\Models\\User',	6,	'authToken',	'963f687554333f2f5cc6b7484ffbc8b2d1818a2e96a7d7748797702ff4bd1c27',	'[\"*\"]',	NULL,	NULL,	'2023-02-06 02:34:31',	'2023-02-06 02:34:31'),
(66,	'App\\Models\\User',	4,	'authToken',	'0c9a3247446153d982cd5326baa326f2fe443cc4ddd4956e64fd0234702d4557',	'[\"*\"]',	NULL,	NULL,	'2023-02-06 02:35:13',	'2023-02-06 02:35:13'),
(67,	'App\\Models\\User',	4,	'authToken',	'215b74254392856784d4ef96206eb944d5ac1b5a730526fab4122c30fcd50002',	'[\"*\"]',	NULL,	NULL,	'2023-02-06 02:50:36',	'2023-02-06 02:50:36'),
(68,	'App\\Models\\User',	4,	'authToken',	'f3264e7f2754beaecf540cdd8e1f66227fdd948b9eabcc2b8ee6533581daa889',	'[\"*\"]',	NULL,	NULL,	'2023-02-06 02:58:07',	'2023-02-06 02:58:07'),
(69,	'App\\Models\\User',	5,	'authToken',	'b5c87b2567708eb6bc72f7dee8e62e58638f2da24c171567734c8ebd40f8491c',	'[\"*\"]',	NULL,	NULL,	'2023-02-06 02:59:49',	'2023-02-06 02:59:49'),
(70,	'App\\Models\\User',	4,	'authToken',	'114f5bc271f985ec7250cf1c57b6b3fd902b29a698af3cbeda0446fcc47d9bfb',	'[\"*\"]',	NULL,	NULL,	'2023-02-06 03:08:33',	'2023-02-06 03:08:33'),
(71,	'App\\Models\\User',	3,	'authToken',	'667477fd2f65ccc2156163c5e9e52c745cbf42f006019fb66969331181959bd0',	'[\"*\"]',	NULL,	NULL,	'2023-02-06 03:09:19',	'2023-02-06 03:09:19'),
(72,	'App\\Models\\User',	4,	'authToken',	'8689d881430b513864f0f47a6e8383c84985195dc4999b916dcdd9c6fa8cd468',	'[\"*\"]',	NULL,	NULL,	'2023-02-06 03:14:00',	'2023-02-06 03:14:00'),
(73,	'App\\Models\\User',	3,	'authToken',	'f85bb40ad7e426fb38aa5c1eda52b9d3c3497eb2916a815c9160137e49ad302d',	'[\"*\"]',	NULL,	NULL,	'2023-02-06 03:14:40',	'2023-02-06 03:14:40'),
(74,	'App\\Models\\User',	6,	'authToken',	'5838ebbc3869c4ab4a71159bd74cab206c9a8c0345d8b4657dc58c1a5788af8e',	'[\"*\"]',	NULL,	NULL,	'2023-02-06 03:17:24',	'2023-02-06 03:17:24'),
(75,	'App\\Models\\User',	4,	'authToken',	'e15f669f16ae962c3810bbe655bd6735472652648a56cac672447836c9b3f498',	'[\"*\"]',	NULL,	NULL,	'2023-02-06 04:10:02',	'2023-02-06 04:10:02'),
(76,	'App\\Models\\User',	4,	'authToken',	'2b4c059a367df3352943446ece6eaa68240f80744e94ce65d7c74bdbe2bdc51a',	'[\"*\"]',	NULL,	NULL,	'2023-02-06 04:42:50',	'2023-02-06 04:42:50'),
(77,	'App\\Models\\User',	5,	'authToken',	'cd876d6c02ed511fbd9497b29461981a1d19159d7c9662dc54ef63b91f171a43',	'[\"*\"]',	'2023-02-06 06:09:43',	NULL,	'2023-02-06 05:55:52',	'2023-02-06 06:09:43'),
(78,	'App\\Models\\User',	5,	'authToken',	'3b3a798917f03e350557e84daf90fc9942c1b2e75f8852c12b2f7b59eb932fe3',	'[\"*\"]',	'2023-02-06 07:49:01',	NULL,	'2023-02-06 06:10:55',	'2023-02-06 07:49:01'),
(79,	'App\\Models\\User',	7,	'authToken',	'f5b66306fe29549611eab50d1dc8d10c7333b11de029d6efb7ef99e9756a5cce',	'[\"*\"]',	NULL,	NULL,	'2023-02-07 01:42:44',	'2023-02-07 01:42:44'),
(80,	'App\\Models\\User',	4,	'authToken',	'182d6d63bc02886c498bf8f96c21e13a1069652f15d5675a5365c4eacdacd390',	'[\"*\"]',	NULL,	NULL,	'2023-02-07 02:34:15',	'2023-02-07 02:34:15'),
(81,	'App\\Models\\User',	4,	'authToken',	'4027ef7473f463ee53260d2d9490f462f2da760f80636dfe7a8ecce3fc5ff262',	'[\"*\"]',	'2023-02-07 02:37:07',	NULL,	'2023-02-07 02:36:31',	'2023-02-07 02:37:07'),
(82,	'App\\Models\\User',	4,	'authToken',	'198abaf6635779e9a694a34c6858377250df8c7ad032d1bee223f118c392306a',	'[\"*\"]',	NULL,	NULL,	'2023-02-07 02:44:50',	'2023-02-07 02:44:50'),
(83,	'App\\Models\\User',	8,	'authToken',	'b1b211376b411937f1abe03b4038a0f3035c9647e1961cf87346e551b77215f5',	'[\"*\"]',	NULL,	NULL,	'2023-02-07 02:48:58',	'2023-02-07 02:48:58'),
(84,	'App\\Models\\User',	7,	'authToken',	'94032847637d450127d67cbbbeeca3370d95cb8798d053ed2ad8300d534bb5f9',	'[\"*\"]',	'2023-02-07 03:04:38',	NULL,	'2023-02-07 02:55:05',	'2023-02-07 03:04:38'),
(85,	'App\\Models\\User',	7,	'authToken',	'0929d673f2ce2d082de49c34c0654c282dea9333b4d4919fae436d1fce26f2e2',	'[\"*\"]',	NULL,	NULL,	'2023-02-07 03:01:19',	'2023-02-07 03:01:19'),
(86,	'App\\Models\\User',	7,	'authToken',	'0c21ee8f16d666bf2699740cdb1ed9c78d017ba621140d4268ca3387c3a475d0',	'[\"*\"]',	NULL,	NULL,	'2023-02-07 03:05:27',	'2023-02-07 03:05:27'),
(87,	'App\\Models\\User',	7,	'authToken',	'aa59f5cc5ea6d3b8193acc91229d4778630a2ff4ec68d0739623b0c09d906b36',	'[\"*\"]',	NULL,	NULL,	'2023-02-07 03:09:33',	'2023-02-07 03:09:33'),
(88,	'App\\Models\\User',	7,	'authToken',	'5ff9622c624d0715baec57b7d2cde1832f09dab823283940d63cd983eddd2872',	'[\"*\"]',	NULL,	NULL,	'2023-02-07 03:10:53',	'2023-02-07 03:10:53'),
(89,	'App\\Models\\User',	7,	'authToken',	'b296a907c74560e4eda239fdb1876568c5767c7e3dad3df40cf83bf4c4084df1',	'[\"*\"]',	NULL,	NULL,	'2023-02-07 03:19:52',	'2023-02-07 03:19:52'),
(90,	'App\\Models\\User',	7,	'authToken',	'425a41d1fcd13c5d21333fbb2dd71c601eaa36f8db0bd24a03b6b35bf89e6a85',	'[\"*\"]',	NULL,	NULL,	'2023-02-07 03:29:25',	'2023-02-07 03:29:25');

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
(5,	'Rok Polos Panjang',	50000.00,	'bahannya super adem \r\nallsize banget ini bb bisa sampai 80 kg\r\nbuat yang pingangnya udah full karet',	NULL,	4,	NULL,	'2023-02-01 04:52:05',	'2023-02-01 04:52:05'),
(6,	'asdasd',	100000.00,	'sad sad',	NULL,	6,	'2023-02-07 01:28:48',	'2023-02-07 01:28:29',	'2023-02-07 01:28:48');

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
(5,	'Alysha Collection',	NULL,	'2023-02-01 04:28:33',	'2023-02-01 04:28:33'),
(6,	'Test',	NULL,	'2023-02-07 01:27:38',	'2023-02-07 01:27:38');

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
(16,	1,	'public/gallery/BB1.png',	NULL,	'2023-02-07 01:35:13',	'2023-02-07 01:35:13'),
(17,	2,	'public/gallery/BB2.png',	NULL,	'2023-02-07 01:35:24',	'2023-02-07 01:35:24'),
(18,	3,	'public/gallery/C2.png',	NULL,	'2023-02-07 01:35:34',	'2023-02-07 01:35:34'),
(19,	4,	'public/gallery/G2.png',	NULL,	'2023-02-07 01:35:45',	'2023-02-07 01:35:45'),
(20,	5,	'public/gallery/R1.png',	NULL,	'2023-02-07 01:35:55',	'2023-02-07 01:35:55');

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

INSERT INTO `transactions` (`id`, `users_id`, `address`, `total_price`, `shipping_price`, `status`, `payment`, `deleted_at`, `created_at`, `updated_at`) VALUES
(29,	5,	'Makassar',	100000.00,	0.00,	'PENDING',	'MANUAL',	NULL,	'2023-02-05 07:00:47',	'2023-02-05 07:00:47'),
(30,	4,	'Makassar',	100000.00,	0.00,	'PENDING',	'MANUAL',	NULL,	'2023-02-07 02:37:07',	'2023-02-07 02:37:07');

DROP TABLE IF EXISTS `transaction_items`;
CREATE TABLE `transaction_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) NOT NULL,
  `products_id` bigint(20) NOT NULL,
  `transactions_id` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `transaction_items` (`id`, `users_id`, `products_id`, `transactions_id`, `quantity`, `created_at`, `updated_at`) VALUES
(11,	5,	1,	29,	1,	'2023-02-05 07:00:47',	'2023-02-05 07:00:47'),
(12,	4,	1,	30,	1,	'2023-02-07 02:37:07',	'2023-02-07 02:37:07');

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
(1,	'wahyudin',	'marcmarquez0000@gmail.com',	'wahyu',	'0812812719',	'ADMIN',	NULL,	'$2y$10$C90a2DLQWrLVgFKbUR5gGuuHV0/pcpzZCffd0OMgOiujqzQLh6rk.',	NULL,	NULL,	NULL,	'WriOmW35f3agmOuMnpD3ksRhsc97hCfodTUGK92kf8r2AytueK4cFApFbNNI',	NULL,	'/gallery/logo.png',	'2023-01-28 22:31:15',	'2023-01-28 22:31:15'),
(3,	'Dipda Turfaqintar',	'dipda@test.com',	'Dipda',	NULL,	'USER',	NULL,	'$2y$10$S/T45JYuohvb/uvz82J2HeB.vqY638YGzsNP1Tr2zcddh4ROiWUvO',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2023-02-01 05:19:23',	'2023-02-01 05:19:23'),
(4,	'harizah syawal',	'user@test.com',	'hariza1701',	'123123123',	'ADMIN',	NULL,	'$2y$10$lhoTZ5FtCUuaPNqDFqabEeI6sN.76py1fg3ETxtOeNT2uTOF.WvwO',	NULL,	NULL,	NULL,	NULL,	NULL,	'/gallery/logo.png',	'2023-02-05 06:55:15',	'2023-02-05 06:55:15'),
(5,	'user user',	'user@user.com',	'user',	NULL,	'USER',	NULL,	'$2y$10$oTQdxjfhdT4cFPUJhI5bReacHZDO55RWCB/Jpc4v0haK.ZyLuYdhC',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2023-02-05 07:00:01',	'2023-02-05 07:00:01'),
(7,	'Alysha Store',	'alysha@admin.com',	'Alysha',	'081203912121',	'ADMIN',	NULL,	'$2y$10$97OXaclg11wpK8.EdOYda.RVFTOmJ/rwNdvaiyHP5xVzbdWyvH6vW',	NULL,	NULL,	NULL,	NULL,	NULL,	'/gallery/logo.png',	'2023-02-07 01:42:44',	'2023-02-07 01:42:44'),
(8,	'Alysha Store',	'TokoAlysha@admin.com',	'TokoAlysha',	NULL,	'USER',	NULL,	'$2y$10$rZENnT2uobjfcX3mmuGvwe05aqaqx5NF/gM35jXH9INicsJxCpNLO',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2023-02-07 02:48:58',	'2023-02-07 02:48:58');

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


-- 2023-02-07 10:32:51
