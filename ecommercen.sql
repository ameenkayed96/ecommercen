-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 05, 2021 at 12:40 PM
-- Server version: 5.7.26
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommercen`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'dolor', 'dolor', '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(2, 'assumenda', 'assumenda', '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(3, 'labore', 'labore', '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(4, 'optio', 'optio', '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(5, 'sint', 'sint', '2021-05-05 03:37:44', '2021-05-05 03:37:44'),
(35, 'qui', 'qui', '2021-05-05 03:37:44', '2021-05-05 03:37:44'),
(34, 'tempore', 'tempore', '2021-05-05 03:37:44', '2021-05-05 03:37:44'),
(33, 'quae', 'quae', '2021-05-05 03:37:44', '2021-05-05 03:37:44'),
(31, 'soluta', 'soluta', '2021-05-05 03:37:44', '2021-05-05 03:37:44'),
(32, 'maxime', 'maxime', '2021-05-05 03:37:44', '2021-05-05 03:37:44'),
(41, 'perspiciatis', 'perspiciatis', '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(42, 'non', 'non', '2021-05-05 03:38:25', '2021-05-05 03:38:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_05_03_115005_create_sessions_table', 1),
(7, '2021_05_04_105825_create_categories_table', 2),
(8, '2021_05_04_105923_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`),
  KEY `products_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `img`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'praesentium', 'praesentium', 'Nesciunt alias soluta quidem possimus. Explicabo quo recusandae non blanditiis. Est ducimus dolores aliquam quis dolor dolorem culpa. Debitis maiores tempora non nobis magni dolorem.', '364.00', NULL, 'DIGI101', 'instock', 0, 163, 'digital_4.jpg', NULL, 2, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(2, 'a', 'a', 'Vitae voluptatem vel voluptas voluptatem molestias. Est dolor veniam nulla officiis autem est ut. Dignissimos et sed quia non blanditiis quas. Commodi aut at qui ut.', '63.00', NULL, 'DIGI87', 'instock', 0, 179, 'digital_19.jpg', NULL, 4, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(3, 'iste', 'iste', 'Rem tempora voluptate voluptates qui est dignissimos. Sequi repudiandae magnam itaque quia. Quas est error mollitia vero magnam magnam voluptatem.', '384.00', NULL, 'DIGI336', 'instock', 0, 109, 'digital_18.jpg', NULL, 4, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(4, 'nostrum', 'nostrum', 'Vero assumenda omnis vitae quas. Cumque delectus dolorum non ab aut. Temporibus autem voluptate voluptatem.', '60.00', NULL, 'DIGI154', 'instock', 0, 153, 'digital_14.jpg', NULL, 4, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(5, 'et', 'et', 'Quo tenetur ut provident. Accusamus est iste voluptatibus ex magni vel veritatis. Omnis praesentium placeat quae unde ut est molestiae impedit. Temporibus nobis fugit qui qui omnis magni aut.', '274.00', NULL, 'DIGI285', 'instock', 0, 146, 'digital_20.jpg', NULL, 5, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(6, 'voluptates', 'voluptates', 'Omnis est cumque saepe neque harum magni sit sed. Aliquam ut fuga facere velit est sint. Est cum voluptas aut nostrum porro qui blanditiis.', '176.00', NULL, 'DIGI457', 'instock', 0, 197, 'digital_15.jpg', NULL, 5, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(7, 'voluptatem', 'voluptatem', 'Dolor et velit ex ut et rerum eveniet. Inventore similique odit minima illo. Fugit omnis ut voluptatem deleniti nesciunt modi dignissimos.', '32.00', NULL, 'DIGI129', 'instock', 0, 129, 'digital_13.jpg', NULL, 5, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(8, 'ea', 'ea', 'Et ut sequi consequatur fugiat quas. Consequatur dolorem cumque neque adipisci a molestias et. Rerum sint quia et magni. Voluptatibus autem velit et consequuntur quae.', '193.00', NULL, 'DIGI262', 'instock', 0, 162, 'digital_2.jpg', NULL, 4, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(9, 'reprehenderit', 'reprehenderit', 'Ut voluptatem omnis repudiandae ipsa. Iusto et aspernatur cumque temporibus. Quod adipisci aut nam voluptatem voluptas et praesentium voluptatem. Amet soluta cum rerum id porro cumque.', '144.00', NULL, 'DIGI354', 'instock', 0, 183, 'digital_11.jpg', NULL, 1, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(10, 'sunt', 'sunt', 'Sapiente est vitae quam sequi asperiores. Debitis eius aut qui corporis quidem. Labore et eos impedit quaerat.', '399.00', NULL, 'DIGI59', 'instock', 0, 173, 'digital_22.jpg', NULL, 4, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(11, 'vel', 'vel', 'Iure ab minus voluptas ipsum aperiam error enim. Consequatur similique quos enim itaque. Dolorum ratione quia nostrum nam voluptatem id. Similique quibusdam deleniti quas.', '424.00', NULL, 'DIGI71', 'instock', 0, 155, 'digital_9.jpg', NULL, 3, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(12, 'eligendi', 'eligendi', 'Et quae quia qui totam pariatur. Vel beatae et voluptatibus sapiente accusantium. Sed in fugiat incidunt sed. Labore in magnam amet aut impedit rerum nam.', '222.00', NULL, 'DIGI469', 'instock', 0, 191, 'digital_12.jpg', NULL, 3, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(13, 'est', 'est', 'Et quidem numquam alias est possimus sunt. Qui voluptatibus alias enim quod. Odio labore asperiores eos minima consectetur. Sint voluptatem eos voluptatum quibusdam cumque natus in dicta.', '451.00', NULL, 'DIGI447', 'instock', 0, 101, 'digital_1.jpg', NULL, 5, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(14, 'sit', 'sit', 'Ullam eum consequatur accusamus et. Illo vel officiis non sequi perspiciatis fugiat. Porro qui repudiandae aliquam cumque.', '488.00', NULL, 'DIGI380', 'instock', 0, 193, 'digital_3.jpg', NULL, 2, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(15, 'officia', 'officia', 'Et aut in aperiam nemo eos. Et dolor quia corporis minima. Aperiam inventore voluptates eos voluptates est. Aut aut eveniet aut dolorem officia ex.', '128.00', NULL, 'DIGI442', 'instock', 0, 200, 'digital_16.jpg', NULL, 5, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(16, 'repellat', 'repellat', 'Quis impedit corrupti iure nostrum qui voluptate. Amet sapiente facilis sed harum reprehenderit eos officiis. Aut similique cupiditate cumque. Et porro atque occaecati eligendi unde.', '476.00', NULL, 'DIGI488', 'instock', 0, 145, 'digital_6.jpg', NULL, 5, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(17, 'quia', 'quia', 'Qui non et ut sed cum. Error error odit iste officiis exercitationem. Aut sint dicta aut aut laudantium repudiandae. Alias quidem labore quidem maxime et velit.', '356.00', NULL, 'DIGI494', 'instock', 0, 194, 'digital_7.jpg', NULL, 2, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(18, 'neque', 'neque', 'Corporis est eius ut officia. Quod et voluptate expedita ea quidem sunt minima.', '251.00', NULL, 'DIGI466', 'instock', 0, 167, 'digital_17.jpg', NULL, 1, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(19, 'quis', 'quis', 'Odit quisquam sunt in assumenda rerum. Qui tempora quo qui. Iure temporibus eveniet nostrum unde ut beatae id.', '374.00', NULL, 'DIGI61', 'instock', 0, 100, 'digital_5.jpg', NULL, 3, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(20, 'ipsa', 'ipsa', 'Illo atque at dolor itaque. Aut ullam eum at. Placeat nam tenetur dolorem. Eveniet harum ea esse voluptas aut tempore.', '68.00', NULL, 'DIGI170', 'instock', 0, 192, 'digital_8.jpg', NULL, 4, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(21, 'rerum', 'rerum', 'Modi sapiente qui dolor voluptatum. Consequuntur beatae natus corrupti ipsa. Quod iste aut quasi et quia voluptatem reprehenderit.', '113.00', NULL, 'DIGI255', 'instock', 0, 191, 'digital_21.jpg', NULL, 3, '2021-05-05 03:38:25', '2021-05-05 03:38:25'),
(22, 'pariatur', 'pariatur', 'Modi ad est inventore quidem tenetur incidunt nisi adipisci. Quia placeat veritatis totam. Porro et id consequatur non eos sed repudiandae.', '485.00', NULL, 'DIGI66', 'instock', 0, 199, 'digital_10.jpg', NULL, 3, '2021-05-05 03:38:25', '2021-05-05 03:38:25');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('vTssimWoM2QHGR5KQbSDiJdGQkT4EDNXNlA9HQaA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmJid3loaFJvZXhCbTY1UnpvcktjTnNwRGY2d1JqUmM2SHlBbEt6cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wcm9kdWN0L2RldGFpbHMvdm9sdXB0YXRlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1620217749);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user' COMMENT 'admin for Admin & user for User',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `type`, `created_at`, `updated_at`) VALUES
(1, 'ameen', 'am@am.am', NULL, '$2y$10$4Tjsids.8Y4fjgJKI4PQuOFFTcs8nb9C7BRCHzbBbUPoU73G9cEgm', NULL, NULL, NULL, NULL, NULL, 'admin', '2021-05-03 09:08:05', '2021-05-03 09:08:05'),
(2, 'Sandi', 'root@system.com', NULL, '$2y$10$TCw7q22GgzuTDJRvZww7huC426IcKvftzJo9384W9XB7hsse3XN7S', NULL, NULL, NULL, NULL, NULL, 'user', '2021-05-04 03:18:44', '2021-05-04 03:18:44'),
(3, 'Sandi', 'sa@sa.sa', NULL, '$2y$10$1oC3Tg3TkPz0dz8Ng6NvnuJZgWlEYTG.wYOzYiKWgm3WxT3uozoBO', NULL, NULL, NULL, NULL, NULL, 'user', '2021-05-04 06:33:44', '2021-05-04 06:33:44');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
