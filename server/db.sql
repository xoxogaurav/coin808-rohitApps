-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2023 at 04:02 PM
-- Server version: 10.3.38-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capklqsj_coin808`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner_links`
--

CREATE TABLE `banner_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Reason` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_links`
--

INSERT INTO `banner_links` (`id`, `Reason`, `Image`, `Link`, `created_at`, `updated_at`) VALUES
(0, 'home banner', 'https://capkoo.online/Media/1.jpg', '', '2023-03-26 19:57:12', '2023-03-26 19:57:12'),
(1, 'home2', 'https://capkoo.online/Media/1.jpg', '', '2023-03-28 04:30:11', '2023-03-28 04:30:11'),
(2, 'home3', 'https://capkoo.online/Media/1.jpg', '', '2023-03-28 04:30:11', '2023-03-21 04:30:11'),
(3, 'home3', 'https://capkoo.online/Media/1.jpg', '', '2023-03-15 04:38:39', '2023-03-22 04:38:39'),
(4, 'home4', 'https://capkoo.online/Media/1.jpg', '', '2023-03-28 04:38:39', '2023-03-28 04:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_25_111600_create_other_links_table', 2),
(6, '2023_03_25_113245_create_banner_links_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `other_links`
--

CREATE TABLE `other_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Reason` varchar(255) NOT NULL,
  `Link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_links`
--

INSERT INTO `other_links` (`id`, `Reason`, `Link`, `created_at`, `updated_at`) VALUES
(0, 'hide', '1', '2023-03-26 19:56:39', '2023-03-26 19:56:39'),
(1, 'Earn More btn', 'https://4726.play.quizzop.com/', '2023-03-27 04:27:15', '2023-03-27 04:27:15'),
(2, 'd1', 'https://play2019.atmequiz.com/', '2023-03-27 04:43:33', '2023-03-27 04:43:33'),
(3, 'd2', 'http://828.set.predchamp.com/', '2023-03-27 04:43:33', '2023-03-27 04:43:33'),
(4, 'd3', 'http://923.go.mglgamez.com', '2023-03-27 04:43:33', '2023-03-27 04:43:33'),
(5, 'd4', 'http://828.set.qureka.com/', '2023-03-27 04:43:33', '2023-03-27 04:43:33'),
(6, 'd5', 'https://4726.play.quizzop.com/', '2023-03-27 04:43:33', '2023-03-27 04:43:33'),
(7, 'top I icon', 'https://www.untechnew.com/diqqle-privacy-policy/', '2023-03-27 04:54:52', '2023-03-27 04:54:52'),
(8, 'top money icon', 'https://play2019.atmequiz.com/', '2023-03-27 04:54:52', '2023-03-27 04:54:52'),
(9, 'play game', 'http://828.set.predchamp.com/', '2023-03-27 04:59:33', '2023-03-27 04:59:33'),
(10, 'daily win', 'https://play2019.atmequiz.com/', '2023-03-27 04:59:33', '2023-03-27 04:59:33'),
(11, 'contact', 'https://winza.xyz/Apps/contact-us-name/', '2023-03-27 04:59:33', '2023-03-27 04:59:33'),
(12, 'share', 'https://winza.xyz/Apps/share-win-unlimited-coins/', '2023-03-27 04:59:33', '2023-03-27 04:59:33'),
(13, 'profile(gaurav link)', 'https://291.set.predchamp.io', '2023-03-27 04:59:33', '2023-03-27 04:59:33'),
(14, 'redeem', 'https://winza.xyz/Apps/withdrawal-name/', '2023-03-27 05:20:24', '2023-03-27 05:20:24'),
(15, 'history', 'https://winza.xyz/Apps/transaction-history/', '2023-03-27 05:20:24', '2023-03-27 05:20:24'),
(16, 'wheel1', 'https://play2019.atmequiz.com/', '2023-03-27 05:20:24', '2023-03-27 05:20:24'),
(17, 'wheel2', 'http://828.set.predchamp.com/', '2023-03-27 05:20:24', '2023-03-27 05:20:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner_links`
--
ALTER TABLE `banner_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_links`
--
ALTER TABLE `other_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner_links`
--
ALTER TABLE `banner_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `other_links`
--
ALTER TABLE `other_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
