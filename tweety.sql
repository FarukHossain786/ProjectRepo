-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2020 at 06:38 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tweety`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `following_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`user_id`, `following_user_id`, `created_at`, `updated_at`) VALUES
(1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_04_055124_create_tweets_table', 2),
(5, '2020_08_07_074047_create_follows_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 4, 'Tempora quas libero facere occaecati sed sunt molestias aut.', '2020-08-04 00:32:54', '2020-08-04 00:32:54'),
(2, 5, 'Hic amet delectus quo ipsa iusto.', '2020-08-04 02:39:10', '2020-08-04 02:39:10'),
(3, 6, 'Aut placeat quisquam odit quia placeat.', '2020-08-04 02:39:10', '2020-08-04 02:39:10'),
(4, 7, 'Cupiditate dignissimos ratione qui quo sed.', '2020-08-04 02:39:10', '2020-08-04 02:39:10'),
(5, 8, 'Quo dolores architecto harum neque eos.', '2020-08-04 02:39:10', '2020-08-04 02:39:10'),
(6, 9, 'sdsdds', '2020-08-07 01:31:00', '2020-08-07 01:31:00'),
(7, 9, 'My first tweet', '2020-08-07 01:31:26', '2020-08-07 01:31:26'),
(8, 9, 'MY first Tweet', '2020-08-07 01:49:23', '2020-08-07 01:49:23'),
(9, 9, 'MY new post', '2020-08-07 04:22:38', '2020-08-07 04:22:38'),
(10, 1, 'Hey Dear, I am here', '2020-08-07 04:26:15', '2020-08-07 04:26:15'),
(11, 1, 'Hello folks', '2020-08-08 10:59:10', '2020-08-08 10:59:10'),
(12, 1, 'Hello folks', '2020-08-08 10:59:24', '2020-08-08 10:59:24'),
(13, 1, 'how r u', '2020-08-08 11:03:32', '2020-08-08 11:03:32'),
(14, 1, 'Whats up!!', '2020-08-08 11:04:05', '2020-08-08 11:04:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'faruk', 'faruk@gmail.com', NULL, '$2y$10$IYbJw69RJrwgJ/MPgRZaJueOC.i0PXb3YhiPRWPgUaiyrKyjnsJm2', NULL, '2020-08-03 06:25:41', '2020-08-03 06:25:41'),
(2, 'Dr. Wilbert Lemke I', 'cassin.lizeth@example.org', '2020-08-04 00:31:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TCtmAmGnCg', '2020-08-04 00:31:27', '2020-08-04 00:31:27'),
(3, 'Alvena Strosin', 'lharber@example.net', '2020-08-04 00:31:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C2ycEDSz08', '2020-08-04 00:31:44', '2020-08-04 00:31:44'),
(4, 'Lonzo Johnston', 'hermiston.jillian@example.com', '2020-08-04 00:32:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AfbvSA3sjl', '2020-08-04 00:32:54', '2020-08-04 00:32:54'),
(5, 'Cristina Emmerich', 'wendell.brown@example.org', '2020-08-04 02:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KBJ0BruOMi', '2020-08-04 02:39:09', '2020-08-04 02:39:09'),
(6, 'Serenity Turner', 'adubuque@example.net', '2020-08-04 02:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9gViV0pnUS', '2020-08-04 02:39:09', '2020-08-04 02:39:09'),
(7, 'Dr. Dangelo Hessel', 'aurelio00@example.com', '2020-08-04 02:39:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6pkS6lwDPP', '2020-08-04 02:39:10', '2020-08-04 02:39:10'),
(8, 'Herminio Becker MD', 'friedrich.mclaughlin@example.net', '2020-08-04 02:39:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aWBK5WNOB2', '2020-08-04 02:39:10', '2020-08-04 02:39:10'),
(9, 'Faruk', 'farukk@gmail.com', NULL, '$2y$10$je1w5h6FLrrnQZCx/LR/XeOs4J7a.I3T6rnJOD3b1m4fijSC2.U1m', NULL, '2020-08-07 00:39:05', '2020-08-07 00:39:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`user_id`,`following_user_id`),
  ADD KEY `follows_following_user_id_foreign` (`following_user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_following_user_id_foreign` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
