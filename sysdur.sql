-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 04, 2021 at 10:06 PM
-- Server version: 10.3.27-MariaDB-0+deb10u1
-- PHP Version: 7.3.19-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sysdur`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Company 1', '2020-12-24 00:52:09', '2020-12-24 00:52:09'),
(2, 'Company 2', '2020-12-24 00:55:33', '2020-12-24 00:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'HRD', '2020-12-24 01:06:27', '2020-12-24 01:06:27'),
(2, 'Finance', '2020-12-24 01:06:45', '2020-12-24 01:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_rev` int(11) NOT NULL DEFAULT 0,
  `revisi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `lingkup` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tujuan` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `definisi` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `uraian` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `prosedur` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lampiran` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `terkait` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file1` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file2` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `no`, `name`, `no_rev`, `revisi`, `user_id`, `lingkup`, `tujuan`, `definisi`, `uraian`, `prosedur`, `lampiran`, `terkait`, `file1`, `file2`, `created_at`, `updated_at`) VALUES
(1, '1', 'doc 1', 0, '', 0, '', '', '', '', '', '', '', '', '', '2020-12-23 01:53:12', '2020-12-23 01:53:12'),
(2, '2', 'Doc 2', 0, '', 0, '', '', '', '', '', '', '', '', '', '2020-12-23 23:35:42', '2020-12-23 23:35:42'),
(6, '3', 'Doc 3-1', 0, '', 0, '', '', '', '', '', '', '', '', '', '2020-12-23 23:38:52', '2020-12-23 23:39:30'),
(7, 'SOP-001', 'Creator', 0, '', 4, 'Ruang lingkup', 'Tujuan', 'Definisi', 'Uraian umum', 'Prosedur', '- lampiran', '- dokumen terkait', '', '', '2021-01-04 06:10:17', '2021-01-04 07:49:56'),
(8, 'SOP-002', 'SOP 2', 0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2021-01-04 08:01:41', '2021-01-04 08:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_23_053647_create_permission_tables', 1),
(5, '2020_12_23_053800_create_products_table', 2),
(6, '2020_12_23_083242_create_documents_table', 3),
(7, '2020_12_24_061544_create_notifications_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 5),
(2, 'App\\User', 6),
(2, 'App\\User', 7),
(3, 'App\\User', 3),
(3, 'App\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0cf3cc5c-2a13-4d8c-b14f-1bcc2b6fc24e', 'App\\Notifications\\StatusDocument', 'App\\User', 1, '[]', NULL, '2020-12-23 23:37:38', '2020-12-23 23:37:38'),
('dac94c32-6f9b-43f5-9b59-1165dd850fcb', 'App\\Notifications\\StatusDocument', 'App\\User', 1, '[]', NULL, '2020-12-23 23:38:56', '2020-12-23 23:38:56'),
('836471a2-da8a-469e-9b1c-6bf958e436eb', 'App\\Notifications\\StatusDocument', 'App\\User', 1, '[]', NULL, '2020-12-23 23:39:34', '2020-12-23 23:39:34'),
('a5bbfc4d-4fd5-415f-85ed-0a069b5fb8d2', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-04 06:10:21', '2021-01-04 06:10:21'),
('0c53db48-bed6-4f14-828a-9d2888e7cbfd', 'App\\Notifications\\StatusDocument', 'App\\User', 7, '[]', NULL, '2021-01-04 06:11:23', '2021-01-04 06:11:23'),
('0803411d-bcae-4454-a7b1-3d0a6d27c17e', 'App\\Notifications\\StatusDocument', 'App\\User', 5, '[]', NULL, '2021-01-04 06:13:25', '2021-01-04 06:13:25'),
('3eac0f0f-401d-4dfa-a138-2f6ade3436d8', 'App\\Notifications\\StatusDocument', 'App\\User', 5, '[]', NULL, '2021-01-04 06:16:51', '2021-01-04 06:16:51'),
('25677049-4acf-4700-a1b5-a246d070c8c6', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-04 07:53:53', '2021-01-04 07:53:53'),
('a5a9155a-4e7a-490d-8135-4e71d26cc472', 'App\\Notifications\\StatusDocument', 'App\\User', 5, '[]', NULL, '2021-01-04 07:56:37', '2021-01-04 07:56:37'),
('3ff1e144-92f0-4dbd-bb39-63f6eadecaaf', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-04 08:01:44', '2021-01-04 08:01:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(2, 'role-create', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(3, 'role-edit', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(4, 'role-delete', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(5, 'document-list', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(6, 'document-create', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(7, 'document-edit', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(8, 'document-delete', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(9, 'user-list', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(10, 'user-create', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(11, 'user-edit', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(12, 'user-delete', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(13, 'company-list', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(14, 'company-create', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(15, 'company-edit', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(16, 'company-delete', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(17, 'department-list', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(18, 'department-create', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(19, 'department-edit', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(20, 'department-delete', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(21, 'position-list', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(22, 'position-create', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(23, 'position-edit', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36'),
(24, 'position-delete', 'web', '2020-12-22 22:59:36', '2020-12-22 22:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Creator', '2020-12-24 06:30:18', NULL),
(2, 'Admin-sysdur', '2020-12-24 06:30:30', NULL),
(3, 'Supervisor', '2020-12-24 06:30:54', NULL),
(4, 'Manager', '2020-12-24 06:31:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 'web', '2020-12-22 23:01:52', '2021-01-01 16:22:12'),
(2, 'Admin', 'web', '2020-12-22 23:19:53', '2020-12-22 23:19:53'),
(3, 'User', 'web', '2020-12-22 23:20:04', '2020-12-22 23:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nik` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `sign` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `nik`, `email`, `email_verified_at`, `password`, `company_id`, `department_id`, `position_id`, `parent_id`, `sign`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', NULL, 'superadmin@gmail.com', NULL, '$2y$10$eogrMlhVQtn2AiWtsfCsiODBsVsiHxM7pm/XreNvdMpfxb1Antgzy', NULL, NULL, NULL, 0, NULL, 'D9xDicWYtgpgLFglVjtqsRh1S0S76QaOmdYdHvTUwUR8u088rzlzyflH2U4B', '2020-12-22 23:01:52', '2020-12-31 23:03:29'),
(2, 'admin', NULL, 'admin@gmail.com', NULL, '$2y$10$L1WINbJPIyogyczrnWyj2.rPU.IbKqEWldgWzJsWsIcsICWMXnkzG', 0, 0, NULL, 0, NULL, NULL, '2020-12-22 23:21:34', '2020-12-22 23:21:34'),
(3, 'user', NULL, 'user@gmail.com', NULL, '$2y$10$N.f0NMXOwwfFbFz1SzsETeS/mAE2o3VY9fQcFfo7NeQFNpxLz/Dn6', 1, 1, 1, 0, NULL, NULL, '2020-12-22 23:21:59', '2020-12-24 01:59:27'),
(4, 'Creator', 'CR-01', 'creator@gmail.com', NULL, '$2y$10$mmxLBT6xMgZFcgaHBPwDz.FyFKAUsgTxsfJMJsI.jJYz4lOtlIC3i', 1, 1, 1, 6, '1609625837.jpg', 'gfDIVM2oTjH0PlJZPpvw4a3Gq01V7wsTelGRwrMjdecgiEhGAzJyfisL3PQf', '2020-12-31 22:59:49', '2021-01-02 15:17:17'),
(5, 'Manager', 'MG-001', 'manager@gmail.com', NULL, '$2y$10$Od3iU7S8BQ9xCEpeDV2xQeei6VAoR5e7va9uZJGJdsd5PE2v5dTpa', 1, 1, 4, 0, '1609583213.png', NULL, '2021-01-02 03:26:53', '2021-01-02 03:26:53'),
(6, 'Admin SysDur', 'AS-01', 'adminsysdur@gmail.com', NULL, '$2y$10$rgGzGgBOzruU.ODDrvY8lugVN37aKvYnQ60HqIkpU4lPS9sLpa3OO', 1, 1, 2, 7, '1609625780.jpg', NULL, '2021-01-02 15:13:15', '2021-01-02 15:16:21'),
(7, 'Supervisor', 'SV-01', 'supervisor@gmail.com', NULL, '$2y$10$eVD.QZP2C2c0MBmMM5BPEOrYWusM4N75AwQn.F6njxCxfm.sUUhX2', 1, 1, 3, 5, '1609625675.jpg', NULL, '2021-01-02 15:14:35', '2021-01-02 15:14:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
