-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2020 at 09:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dolil_2`
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
(4, '2020_10_25_053536_add_some_fields_to_users_table', 1),
(5, '2020_10_25_085732_laratrust_setup_tables', 2),
(6, '2020_10_25_104527_add_code_n_isactive_to_users_table', 3),
(7, '2020_10_27_194723_add_image_to_users_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2020-10-25 03:07:06', '2020-10-25 03:07:06'),
(2, 'users-read', 'Read Users', 'Read Users', '2020-10-25 03:07:06', '2020-10-25 03:07:06'),
(3, 'users-update', 'Update Users', 'Update Users', '2020-10-25 03:07:06', '2020-10-25 03:07:06'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2020-10-25 03:07:06', '2020-10-25 03:07:06'),
(5, 'payments-create', 'Create Payments', 'Create Payments', '2020-10-25 03:07:06', '2020-10-25 03:07:06'),
(6, 'payments-read', 'Read Payments', 'Read Payments', '2020-10-25 03:07:06', '2020-10-25 03:07:06'),
(7, 'payments-update', 'Update Payments', 'Update Payments', '2020-10-25 03:07:06', '2020-10-25 03:07:06'),
(8, 'payments-delete', 'Delete Payments', 'Delete Payments', '2020-10-25 03:07:06', '2020-10-25 03:07:06'),
(9, 'profile-read', 'Read Profile', 'Read Profile', '2020-10-25 03:07:06', '2020-10-25 03:07:06'),
(10, 'profile-update', 'Update Profile', 'Update Profile', '2020-10-25 03:07:06', '2020-10-25 03:07:06'),
(11, 'module_1_name-create', 'Create Module_1_name', 'Create Module_1_name', '2020-10-25 03:07:07', '2020-10-25 03:07:07'),
(12, 'module_1_name-read', 'Read Module_1_name', 'Read Module_1_name', '2020-10-25 03:07:07', '2020-10-25 03:07:07'),
(13, 'module_1_name-update', 'Update Module_1_name', 'Update Module_1_name', '2020-10-25 03:07:07', '2020-10-25 03:07:07'),
(14, 'module_1_name-delete', 'Delete Module_1_name', 'Delete Module_1_name', '2020-10-25 03:07:07', '2020-10-25 03:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 4),
(12, 4),
(13, 4),
(14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'superadministrator', 'Superadministrator', 'Superadministrator', '2020-10-25 03:07:06', '2020-10-25 03:07:06'),
(2, 'administrator', 'Administrator', 'Administrator', '2020-10-25 03:07:07', '2020-10-25 03:07:07'),
(3, 'user', 'User', 'User', '2020-10-25 03:07:07', '2020-10-25 03:07:07'),
(4, 'role_name', 'Role Name', 'Role Name', '2020-10-25 03:07:07', '2020-10-25 03:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(3, 2, 'App\\User'),
(3, 3, 'App\\User'),
(3, 4, 'App\\User'),
(3, 5, 'App\\User'),
(3, 6, 'App\\User'),
(3, 7, 'App\\User'),
(3, 8, 'App\\User');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `present_address`, `permanent_address`, `age`, `religion`, `code`, `is_active`, `image`) VALUES
(1, 'Faisal Feroze Tipu', 'ff.tipu@gmail.com', NULL, '$2y$10$aCxc/tNKIgjcm2bbwtsXbuCZ2p5nZ0aoGZ.anjidQak2aGvB6xrru', NULL, '2020-10-25 02:50:17', '2020-10-25 02:50:17', '01675187138', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(2, 'Ashraful Islam babu', 'babu@gmail.com', NULL, '$2y$10$xGW/1cTHZinnaW.YJcbDBO5WWbsZpOzLdliZz3cIa1Fz2IOKRCDAG', NULL, '2020-10-25 03:11:39', '2020-10-25 03:11:39', '01700000000', NULL, NULL, NULL, NULL, NULL, 0, NULL),
(3, 'asef', 'asefzoom@gmail.com', NULL, '$2y$10$KCkQL7bYFLDIvzgZlDuj6eUQmU7axZZAX5JBq6hFZ0UQIgtR4Ou1e', NULL, '2020-10-25 05:09:33', '2020-10-25 05:09:33', '01550000000', NULL, NULL, NULL, NULL, NULL, 0, NULL),
(4, 'Nahian', 'nahian@gmail.com', NULL, '$2y$10$vqM5h/hCPzP0cz76Lxeome2qWsy6FmdqBjgKh.uaM.qjGoUL980Du', NULL, '2020-10-25 11:30:43', '2020-10-25 11:30:43', '01670000000', NULL, NULL, NULL, NULL, NULL, 0, NULL),
(5, 'abc', 'abc@gmail.com', NULL, '$2y$10$mprKWzJJD75PfzWQXFCgSex6zVvyCLFRkWHph95XlGynoc7vM9JRC', NULL, '2020-10-25 11:34:36', '2020-10-25 11:34:36', '01200000000', NULL, NULL, NULL, NULL, '78812', 1, NULL),
(6, 'Noman', 'noman@gmail.com', NULL, '$2y$10$TNBgGJchtKadW8PbffaDvObl8KeRjlSgnmGnSNIPWZ5yGLNrmYC5q', NULL, '2020-10-25 11:58:29', '2020-10-25 11:58:49', '01800000000', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(7, 'sakif', 'sakif@gmail.com', NULL, '$2y$10$RB3SsNVVy8X0LNpQBhqsuOGgayeRdu1HpQ3Lki.P4KiC7SDTMFo3W', NULL, '2020-10-25 12:44:43', '2020-10-25 12:45:06', '01671111111', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(8, 'Faisal Feroze Tipu', 'faisal.feroze.1995@gmail.com', NULL, '$2y$10$L2WNo8Quf6fcTXOuDWLWA.g.NE0psDIy8ZiX1Vu8N5O9gLMWHei5C', NULL, '2020-10-25 14:29:35', '2020-10-27 14:08:38', '01675187137', '960/1 East Shewrapara', NULL, 26, 'Islam', NULL, 1, 'ff.jpg');

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
