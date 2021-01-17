-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2021 at 07:59 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codespace2`
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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2020_04_12_153231_create_spaces_table', 2),
(8, '2020_04_12_153747_create_space_photos_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ndrianggar@gmail.com', '$2y$10$FsR2eV2FXRUmAvZqw9ksyOHVGFzLvNK3ES2KNwL/wVxuhgXEuxWly', '2020-06-22 06:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `spaces`
--

CREATE TABLE `spaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spaces`
--

INSERT INTO `spaces` (`id`, `user_id`, `title`, `address`, `description`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(2, 2, 'Baba Studio', 'Jl Cempaka Putih', 'Tempat Codingan', '-6.16809', '106.87582', '2020-04-22 23:19:26', '2020-04-22 23:19:26'),
(3, 2, 'Kranggan', 'Jl. Garuda 3', 'Ini Rumah ku', '-6.21917', '106.82955', '2020-05-30 04:33:47', '2020-05-30 04:33:47'),
(4, 2, 'Tempat Ngajar', 'Jl. Perumahan Puri kemang', 'disini tempat pengajar Al-Quran', '-6.35907', '106.87086', '2020-06-22 06:51:32', '2020-06-22 06:51:32'),
(5, 2, 'Puninnar', 'jl. tj priuk', 'Tempat kerja baru', '-6.11079', '106.95817', '2020-10-20 08:14:37', '2020-10-20 08:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `space_photos`
--

CREATE TABLE `space_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `space_id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `space_photos`
--

INSERT INTO `space_photos` (`id`, `space_id`, `path`, `created_at`, `updated_at`) VALUES
(4, 2, 'spaces/rAtGvYZd7hm9lznb5NQwmP6Wq8PDAvDhBDfgLnUn.png', NULL, NULL),
(5, 2, 'spaces/5qoMXCRTOprY2OrtmCKHzbhFMinRYjLariFFReJ2.png', NULL, NULL),
(6, 2, 'spaces/5psAsr1De5nR0BQzuVW7yRadrTJ0kRaLfAPCCe5a.png', NULL, NULL),
(7, 3, 'spaces/GvFX6NoRp2ubY5pByfqyLWyszg7lOkWPt6gLWjgH.png', NULL, NULL),
(8, 3, 'spaces/BxrzBMkhJCkUwhsG7sZRIkmTy6zaoNcEy4PF4QC4.png', NULL, NULL),
(9, 3, 'spaces/w7cuMvDaghki87AWnc5kvizzSmAMf8REnVr5Bdf8.png', NULL, NULL),
(10, 4, 'spaces/Ps1PxzvWJnaZAJRn6LzqwV34zIXRezuVvoMtflwy.png', NULL, NULL),
(11, 4, 'spaces/fsqTwEJElnb1V07U7K6sq0nH4rMlVRJjEKfVO6Ve.png', NULL, NULL),
(12, 4, 'spaces/ZV3jKwTRwRU22PC4bFd9ixNLbbCoGQeajTbzbT8B.png', NULL, NULL),
(13, 5, 'spaces/jrufOD4sOY89JckYxLzj2L3n4kEz1Vl2kvgp0OGp.png', NULL, NULL),
(14, 5, 'spaces/VFrr0tgXQ6sKUJBT3wT9Q3D9q0bhGyzp3rxKlHJb.png', NULL, NULL),
(15, 5, 'spaces/ok2YWwPyDBlWSf4tvSwvXi3iV3iS5NgN1uQHPSlJ.png', NULL, NULL);

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
(1, 'Hendri', 'ndrianggar@gmail.com', NULL, '12345', NULL, '2020-04-12 23:42:00', '2020-04-12 23:42:00'),
(2, 'Hendri', 'hendrilows@hotmail.com', NULL, '$2y$10$aVRCEF5mmQbdthvLptY3GeicWwP/Yw2hqSswj0gbpsKhN/0a51ktS', NULL, '2020-05-30 04:28:12', '2020-05-30 04:28:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `spaces`
--
ALTER TABLE `spaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spaces_user_id_foreign` (`user_id`);

--
-- Indexes for table `space_photos`
--
ALTER TABLE `space_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `space_photos_space_id_foreign` (`space_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `spaces`
--
ALTER TABLE `spaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `space_photos`
--
ALTER TABLE `space_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `spaces`
--
ALTER TABLE `spaces`
  ADD CONSTRAINT `spaces_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `space_photos`
--
ALTER TABLE `space_photos`
  ADD CONSTRAINT `space_photos_space_id_foreign` FOREIGN KEY (`space_id`) REFERENCES `spaces` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
