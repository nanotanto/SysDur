-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.1.72-community - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for sysdur
CREATE DATABASE IF NOT EXISTS `sysdur` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sysdur`;

-- Dumping structure for table sysdur.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `document_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table sysdur.comments: 11 rows
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `user_id`, `document_id`, `parent_id`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, 11, NULL, 'dsgdsgds', NULL, NULL, NULL),
	(2, 4, 11, 1, 'dsgdsg', '2021-01-14 08:34:45', '2021-01-14 08:34:45', NULL),
	(3, 4, 11, NULL, 'wwer3', '2021-01-14 08:35:01', '2021-01-14 08:35:01', NULL),
	(4, 4, 11, NULL, 'asdfasd', '2021-01-14 08:35:52', '2021-01-14 08:35:52', NULL),
	(5, 4, 11, NULL, 'dfgsdg32', '2021-01-14 08:39:09', '2021-01-14 08:39:09', NULL),
	(6, 4, 11, NULL, 'test', '2021-01-14 08:44:29', '2021-01-14 08:44:29', NULL),
	(7, 4, 11, NULL, 'test2', '2021-01-14 08:50:23', '2021-01-14 08:50:23', NULL),
	(8, 4, 11, NULL, 'revised', '2021-01-14 08:50:55', '2021-01-14 08:50:55', NULL),
	(9, 4, 11, NULL, 'fasdfa', '2021-01-14 08:52:04', '2021-01-14 08:52:04', NULL),
	(10, 4, 11, NULL, 'perbaiki dulu', '2021-01-14 09:08:07', '2021-01-14 09:08:07', NULL),
	(11, 4, 11, NULL, 'perbaiki', '2021-01-14 09:12:38', '2021-01-14 09:12:38', NULL);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Dumping structure for table sysdur.companies
CREATE TABLE IF NOT EXISTS `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table sysdur.companies: 2 rows
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Company 1', '2020-12-24 07:52:09', '2020-12-24 07:52:09'),
	(2, 'Company 2', '2020-12-24 07:55:33', '2020-12-24 07:55:33');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;

-- Dumping structure for table sysdur.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table sysdur.departments: 2 rows
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'HRD', '2020-12-24 08:06:27', '2020-12-24 08:06:27'),
	(2, 'Finance', '2020-12-24 08:06:45', '2020-12-24 08:06:45');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;

-- Dumping structure for table sysdur.documents
CREATE TABLE IF NOT EXISTS `documents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_rev` int(11) NOT NULL DEFAULT '0',
  `revisi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `lingkup` text COLLATE utf8_unicode_ci,
  `tujuan` text COLLATE utf8_unicode_ci,
  `definisi` text COLLATE utf8_unicode_ci,
  `uraian` text COLLATE utf8_unicode_ci,
  `prosedur` text COLLATE utf8_unicode_ci,
  `lampiran` text COLLATE utf8_unicode_ci,
  `terkait` text COLLATE utf8_unicode_ci,
  `file1` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file2` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table sysdur.documents: 4 rows
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` (`id`, `no`, `name`, `no_rev`, `revisi`, `date`, `user_id`, `department_id`, `status`, `lingkup`, `tujuan`, `definisi`, `uraian`, `prosedur`, `lampiran`, `terkait`, `file1`, `file2`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(6, '3', 'Doc 3-1', 0, '', '2021-01-04', 0, 0, 0, '', '', '', '', '', '', '', '', '', '2020-12-24 06:38:52', '2021-01-15 06:30:58', '2021-01-15 06:30:58'),
	(7, 'SOP-001', 'Creator', 0, '', '2021-01-04', 4, 0, 1, 'Ruang lingkup', 'Tujuan', 'Definisi', 'Uraian umum', 'Prosedur', '- lampiran', '- dokumen terkait', '1609625595.jpg', '1609583358.png', '2021-01-04 13:10:17', '2021-01-15 06:31:37', '2021-01-15 06:31:37'),
	(8, 'SOP-002', 'SOP 2', 0, NULL, '2021-01-04', 4, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1609583213.jpg', '1609583237.jpg', '2021-01-04 15:01:41', '2021-01-15 06:34:13', '2021-01-15 06:34:13'),
	(11, 'SOP-01', 'pengendalian dokumen', 0, NULL, '2021-01-04', 4, 0, 1, 'Prosedur ini bertujuan untuk menjelaskan pengendalian dokumen dan catatan yang terkait dengan Sistem Manajemen Mutu', 'Prosedur ini mencakup pengendalian dokumen internal, dokumen eksternal dan catatan yang meliputi pembuatan, distribusi, perubahan, penyimpanan, dan pemusnahan', '4.1	Dokumen Internal adalah Dokumen yang berasal dari dalam perusahaan yang disusun untuk mendukung aktivitas Sistem Manajemen Mutu.\r\n4.2	Dokumen Eksternal adalah Dokumen yang berasal dari luar perusahaan yang digunakan sebagai pendukung aktivitas Sistem Manajemen Mutu.', '6.1	Dokumen dapat dibaca, siap diambil dan ditunjukan.\r\n6.2	Dokumen tersimpan dengan baik/ tidak rusak sesuai dengan ketentuan minimum masa simpan.\r\n6.3	Dokumen yang beredar di perusahaan adalah dokumen yang terbaru dan telah disahkan.', '5.1	Quality Assurance Department selanjutnya disebut QA,  bertanggung jawab terhadap pengendalian dokumen internal dan eksternal diantaranya :\r\nDokumen Internal\r\na.	Quality Manual\r\nb.	QA Rule\r\nc.	Standard Operating Procedure (SOP)\r\nd.	Quality Control Process Chart (QCPC) atau Control Plan\r\nDokumen Eksternal\r\na.	Quality Assurance Manual Customer\r\nb.	YGK\r\nc.	YQS\r\nd.	Standar Nasional Indonesia (SNI)\r\ne.	Drawing Produk\r\nf.	Dokumen lain dari customer\r\n5.2	Masing-masing Department bertanggung jawab terhadap pengendalan dokumen internal diantaranya:\r\na.	Instruksi Kerja (IK)\r\nb.	Standar Proses\r\nc.	Master Formulir/ Check Sheet\r\nd.	Catatan (Formulir/ Check Sheet yang telah diisi)', '3.1	ISO 9001:2015 dan IATF 16949:2016\r\n3.2	Quality Manual YPMI', '3.1	ISO 9001:2015 dan IATF 16949:2016\r\n3.2	Quality Manual YPMI', '1609918308.png', '1609918308.png', '2021-01-06 07:31:48', '2021-01-06 07:31:48', NULL);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;

-- Dumping structure for table sysdur.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table sysdur.failed_jobs: 0 rows
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table sysdur.fp4_forms
CREATE TABLE IF NOT EXISTS `fp4_forms` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `dokumen` text,
  `alasan` text,
  `file` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `analisa` text,
  `admin_id` int(11) DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table sysdur.fp4_forms: 0 rows
/*!40000 ALTER TABLE `fp4_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp4_forms` ENABLE KEYS */;

-- Dumping structure for table sysdur.fp4_status
CREATE TABLE IF NOT EXISTS `fp4_status` (
  `id` int(11) NOT NULL,
  `fp4_form_id` int(11) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL,
  `details` varchar(191) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table sysdur.fp4_status: 0 rows
/*!40000 ALTER TABLE `fp4_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp4_status` ENABLE KEYS */;

-- Dumping structure for table sysdur.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table sysdur.migrations: 8 rows
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2020_12_23_053647_create_permission_tables', 1),
	(5, '2020_12_23_053800_create_products_table', 2),
	(6, '2020_12_23_083242_create_documents_table', 3),
	(7, '2020_12_24_061544_create_notifications_table', 4),
	(8, '2021_01_14_074006_create_comments_table', 5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table sysdur.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table sysdur.model_has_permissions: 0 rows
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

-- Dumping structure for table sysdur.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table sysdur.model_has_roles: 7 rows
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\User', 1),
	(2, 'App\\User', 2),
	(2, 'App\\User', 4),
	(2, 'App\\User', 5),
	(2, 'App\\User', 6),
	(2, 'App\\User', 7),
	(3, 'App\\User', 3);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- Dumping structure for table sysdur.notifications
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table sysdur.notifications: 30 rows
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
	('0cf3cc5c-2a13-4d8c-b14f-1bcc2b6fc24e', 'App\\Notifications\\StatusDocument', 'App\\User', 1, '[]', NULL, '2020-12-24 06:37:38', '2020-12-24 06:37:38'),
	('dac94c32-6f9b-43f5-9b59-1165dd850fcb', 'App\\Notifications\\StatusDocument', 'App\\User', 1, '[]', NULL, '2020-12-24 06:38:56', '2020-12-24 06:38:56'),
	('836471a2-da8a-469e-9b1c-6bf958e436eb', 'App\\Notifications\\StatusDocument', 'App\\User', 1, '[]', NULL, '2020-12-24 06:39:34', '2020-12-24 06:39:34'),
	('a5bbfc4d-4fd5-415f-85ed-0a069b5fb8d2', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-04 13:10:21', '2021-01-04 13:10:21'),
	('0c53db48-bed6-4f14-828a-9d2888e7cbfd', 'App\\Notifications\\StatusDocument', 'App\\User', 7, '[]', NULL, '2021-01-04 13:11:23', '2021-01-04 13:11:23'),
	('0803411d-bcae-4454-a7b1-3d0a6d27c17e', 'App\\Notifications\\StatusDocument', 'App\\User', 5, '[]', NULL, '2021-01-04 13:13:25', '2021-01-04 13:13:25'),
	('3eac0f0f-401d-4dfa-a138-2f6ade3436d8', 'App\\Notifications\\StatusDocument', 'App\\User', 5, '[]', NULL, '2021-01-04 13:16:51', '2021-01-04 13:16:51'),
	('25677049-4acf-4700-a1b5-a246d070c8c6', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-04 14:53:53', '2021-01-04 14:53:53'),
	('a5a9155a-4e7a-490d-8135-4e71d26cc472', 'App\\Notifications\\StatusDocument', 'App\\User', 5, '[]', NULL, '2021-01-04 14:56:37', '2021-01-04 14:56:37'),
	('3ff1e144-92f0-4dbd-bb39-63f6eadecaaf', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-04 15:01:44', '2021-01-04 15:01:44'),
	('5dfabbe6-d787-4b59-a478-7b31bb9bdec4', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-06 07:31:54', '2021-01-06 07:31:54'),
	('d90313d3-9612-4016-ad2a-4eb4cf2f4d11', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-06 07:38:17', '2021-01-06 07:38:17'),
	('bc825620-c583-4f7c-86c0-30d90ca65136', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-14 08:28:39', '2021-01-14 08:28:39'),
	('bca1ba3d-2575-4bbe-abdb-6e17d4befc43', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-14 08:30:10', '2021-01-14 08:30:10'),
	('b647af33-cee0-44fe-93b0-b26511121688', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-14 08:31:41', '2021-01-14 08:31:41'),
	('882ecafb-0973-473a-98b4-0446c74ea9cd', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-14 08:33:59', '2021-01-14 08:33:59'),
	('6661ab01-f862-47c5-9483-19ac258135fb', 'App\\Notifications\\StatusDocument', 'App\\User', 4, '[]', NULL, '2021-01-14 08:50:23', '2021-01-14 08:50:23'),
	('a8498865-3032-41ba-adb4-164a60f6ca37', 'App\\Notifications\\StatusDocument', 'App\\User', 4, '[]', NULL, '2021-01-14 08:50:55', '2021-01-14 08:50:55'),
	('3bb820b0-84fe-4775-93cc-722a6bc222d4', 'App\\Notifications\\StatusDocument', 'App\\User', 4, '[]', NULL, '2021-01-14 08:52:04', '2021-01-14 08:52:04'),
	('a39b0bd5-deb5-4e4f-8564-44fa38170d59', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-14 08:56:00', '2021-01-14 08:56:00'),
	('8d5e52aa-f323-4298-b51e-354ffe9ee490', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-14 08:58:07', '2021-01-14 08:58:07'),
	('c2811ea6-0bc8-4f4d-9d79-a95c055d8f22', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-14 09:00:33', '2021-01-14 09:00:33'),
	('0b373e8d-4ed8-446a-892f-a2b02f679563', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-14 09:00:52', '2021-01-14 09:00:52'),
	('66d6f252-acb7-42c1-9c8f-7a8089ef5cbd', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-14 09:01:53', '2021-01-14 09:01:53'),
	('2dd3f4f4-55ec-42cb-95cd-648ba5882868', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-14 09:07:18', '2021-01-14 09:07:18'),
	('468630e7-1e8a-4f16-80fb-a1847b92a7fc', 'App\\Notifications\\StatusDocument', 'App\\User', 4, '[]', NULL, '2021-01-14 09:07:33', '2021-01-14 09:07:33'),
	('2a03c9de-0703-4782-91f3-04466b7609fe', 'App\\Notifications\\StatusDocument', 'App\\User', 4, '[]', NULL, '2021-01-14 09:08:07', '2021-01-14 09:08:07'),
	('79d0eaf7-d830-4872-8b46-9e4be97369cf', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-14 09:08:20', '2021-01-14 09:08:20'),
	('bbc57bd6-a9a8-413c-aecf-f8e263f76b80', 'App\\Notifications\\StatusDocument', 'App\\User', 6, '[]', NULL, '2021-01-14 09:12:17', '2021-01-14 09:12:17'),
	('1f387d5f-9576-4458-be65-76cc289da384', 'App\\Notifications\\StatusDocument', 'App\\User', 4, '[]', NULL, '2021-01-14 09:12:38', '2021-01-14 09:12:38');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;

-- Dumping structure for table sysdur.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table sysdur.password_resets: 0 rows
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table sysdur.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table sysdur.permissions: 25 rows
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'role-list', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(2, 'role-create', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(3, 'role-edit', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(4, 'role-delete', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(5, 'document-list', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(6, 'document-create', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(7, 'document-edit', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(8, 'document-delete', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(9, 'user-list', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(10, 'user-create', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(11, 'user-edit', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(12, 'user-delete', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(13, 'company-list', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(14, 'company-create', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(15, 'company-edit', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(16, 'company-delete', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(17, 'department-list', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(18, 'department-create', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(19, 'department-edit', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(20, 'department-delete', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(21, 'position-list', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(22, 'position-create', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(23, 'position-edit', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(24, 'position-delete', 'web', '2020-12-23 05:59:36', '2020-12-23 05:59:36'),
	(25, 'admin-dashboard', 'web', NULL, NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table sysdur.positions
CREATE TABLE IF NOT EXISTS `positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table sysdur.positions: 4 rows
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Creator', '2020-12-24 13:30:18', NULL),
	(2, 'Admin-sysdur', '2020-12-24 13:30:30', NULL),
	(3, 'Supervisor', '2020-12-24 13:30:54', NULL),
	(4, 'Manager', '2020-12-24 13:31:24', NULL);
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;

-- Dumping structure for table sysdur.questions
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(10) unsigned DEFAULT NULL,
  `question_text` text COLLATE utf8_unicode_ci,
  `code_snippet` text COLLATE utf8_unicode_ci,
  `answer_explanation` text COLLATE utf8_unicode_ci,
  `more_info_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_256_topic_topic_id_question` (`topic_id`),
  KEY `questions_deleted_at_index` (`deleted_at`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table sysdur.questions: 4 rows
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` (`id`, `topic_id`, `question_text`, `code_snippet`, `answer_explanation`, `more_info_link`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, 'Pertanyaan 1', '', 'a', '', '2021-01-12 03:45:00', '2021-01-12 03:45:00', NULL),
	(2, 1, 'Pertanyaan 2', '', 'd', '', '2021-01-12 03:46:15', '2021-01-12 03:46:15', NULL),
	(3, 2, 'Pertanyaan test', '', 'e', '', '2021-01-12 03:47:02', '2021-01-12 03:47:02', NULL),
	(4, 1, 'pertanyaan 3', '', 'a', '', '2021-01-12 03:47:53', '2021-01-12 03:47:53', NULL);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;

-- Dumping structure for table sysdur.questions_options
CREATE TABLE IF NOT EXISTS `questions_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(10) unsigned DEFAULT NULL,
  `option` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correct` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_257_question_question_id_questions_option` (`question_id`),
  KEY `questions_options_deleted_at_index` (`deleted_at`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table sysdur.questions_options: 20 rows
/*!40000 ALTER TABLE `questions_options` DISABLE KEYS */;
INSERT INTO `questions_options` (`id`, `question_id`, `option`, `correct`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, 'a', 1, '2021-01-12 03:45:00', '2021-01-12 03:45:00', NULL),
	(2, 1, 'b', 0, '2021-01-12 03:45:00', '2021-01-12 03:45:00', NULL),
	(3, 1, 'c', 0, '2021-01-12 03:45:00', '2021-01-12 03:45:00', NULL),
	(4, 1, 'd', 0, '2021-01-12 03:45:00', '2021-01-12 03:45:00', NULL),
	(5, 1, 'e', 0, '2021-01-12 03:45:00', '2021-01-12 03:45:00', NULL),
	(6, 2, 'a', 0, '2021-01-12 03:46:15', '2021-01-12 03:46:15', NULL),
	(7, 2, 'b', 0, '2021-01-12 03:46:15', '2021-01-12 03:46:15', NULL),
	(8, 2, 'c', 1, '2021-01-12 03:46:15', '2021-01-12 03:46:15', NULL),
	(9, 2, 'd', 0, '2021-01-12 03:46:15', '2021-01-12 03:46:15', NULL),
	(10, 2, 'e', 0, '2021-01-12 03:46:15', '2021-01-12 03:46:15', NULL),
	(11, 3, 'a', 0, '2021-01-12 03:47:02', '2021-01-12 03:47:02', NULL),
	(12, 3, 'b', 0, '2021-01-12 03:47:02', '2021-01-12 03:47:02', NULL),
	(13, 3, 'c', 0, '2021-01-12 03:47:02', '2021-01-12 03:47:02', NULL),
	(14, 3, 'd', 1, '2021-01-12 03:47:02', '2021-01-12 03:47:02', NULL),
	(15, 3, 'e', 0, '2021-01-12 03:47:02', '2021-01-12 03:47:02', NULL),
	(16, 4, 'a', 1, '2021-01-12 03:47:53', '2021-01-12 03:47:53', NULL),
	(17, 4, 'b', 0, '2021-01-12 03:47:53', '2021-01-12 03:47:53', NULL),
	(18, 4, 'c', 0, '2021-01-12 03:47:53', '2021-01-12 03:47:53', NULL),
	(19, 4, 'd', 0, '2021-01-12 03:47:53', '2021-01-12 03:47:53', NULL),
	(20, 4, 'e', 0, '2021-01-12 03:47:53', '2021-01-12 03:47:53', NULL);
/*!40000 ALTER TABLE `questions_options` ENABLE KEYS */;

-- Dumping structure for table sysdur.results
CREATE TABLE IF NOT EXISTS `results` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `correct` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `question_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_254_user_user_id_result` (`user_id`),
  KEY `fk_257_question_question_id_result` (`question_id`),
  KEY `results_deleted_at_index` (`deleted_at`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table sysdur.results: 0 rows
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
/*!40000 ALTER TABLE `results` ENABLE KEYS */;

-- Dumping structure for table sysdur.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roles_deleted_at_index` (`deleted_at`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table sysdur.roles: 3 rows
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `title`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Superadmin', 'Superadmin', 'web', '2020-12-23 06:01:52', '2021-01-01 23:22:12', NULL),
	(2, 'Admin', 'Admin', 'web', '2020-12-23 06:19:53', '2020-12-23 06:19:53', NULL),
	(3, 'User', 'User', 'web', '2020-12-23 06:20:04', '2020-12-23 06:20:04', NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table sysdur.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table sysdur.role_has_permissions: 30 rows
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
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
	(7, 1),
	(7, 2),
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
	(24, 1),
	(25, 1),
	(25, 2);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Dumping structure for table sysdur.tests
CREATE TABLE IF NOT EXISTS `tests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `topic_id` int(10) unsigned DEFAULT NULL,
  `result` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tests_deleted_at_index` (`deleted_at`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table sysdur.tests: 6 rows
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` (`id`, `user_id`, `topic_id`, `result`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 2, NULL, '0', '2021-01-12 04:20:27', '2021-01-12 04:20:27', NULL),
	(2, 2, NULL, '0', '2021-01-12 04:26:56', '2021-01-12 04:26:56', NULL),
	(3, 2, NULL, '1', '2021-01-12 04:29:01', '2021-01-12 04:29:01', NULL),
	(4, 4, NULL, '0', '2021-01-12 08:07:00', '2021-01-12 08:07:00', NULL),
	(5, 4, NULL, '1', '2021-01-12 08:08:11', '2021-01-12 08:08:11', NULL),
	(6, 4, 2, '0', '2021-01-12 08:09:22', '2021-01-12 08:09:22', NULL);
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;

-- Dumping structure for table sysdur.test_answers
CREATE TABLE IF NOT EXISTS `test_answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `test_id` int(10) unsigned DEFAULT NULL,
  `question_id` int(10) unsigned DEFAULT NULL,
  `correct` tinyint(4) DEFAULT '0',
  `option_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_answers_deleted_at_index` (`deleted_at`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

-- Dumping data for table sysdur.test_answers: 12 rows
/*!40000 ALTER TABLE `test_answers` DISABLE KEYS */;
INSERT INTO `test_answers` (`id`, `user_id`, `test_id`, `question_id`, `correct`, `option_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 2, 1, 3, 0, 15, '2021-01-12 04:20:27', '2021-01-12 04:20:27', NULL),
	(2, 2, 2, 2, 0, 9, '2021-01-12 04:26:56', '2021-01-12 04:26:56', NULL),
	(3, 2, 2, 1, 0, 3, '2021-01-12 04:26:56', '2021-01-12 04:26:56', NULL),
	(4, 2, 2, 4, 0, 17, '2021-01-12 04:26:56', '2021-01-12 04:26:56', NULL),
	(5, 2, 3, 4, 1, 16, '2021-01-12 04:29:01', '2021-01-12 04:29:01', NULL),
	(6, 2, 3, 1, 0, 4, '2021-01-12 04:29:01', '2021-01-12 04:29:01', NULL),
	(7, 2, 3, 2, 0, NULL, '2021-01-12 04:29:01', '2021-01-12 04:29:01', NULL),
	(8, 4, 4, 4, 0, 18, '2021-01-12 08:07:01', '2021-01-12 08:07:01', NULL),
	(9, 4, 4, 1, 0, 5, '2021-01-12 08:07:01', '2021-01-12 08:07:01', NULL),
	(10, 4, 4, 2, 0, 6, '2021-01-12 08:07:01', '2021-01-12 08:07:01', NULL),
	(11, 4, 5, 3, 1, 14, '2021-01-12 08:08:11', '2021-01-12 08:08:11', NULL),
	(12, 4, 6, 3, 0, 15, '2021-01-12 08:09:22', '2021-01-12 08:09:22', NULL);
/*!40000 ALTER TABLE `test_answers` ENABLE KEYS */;

-- Dumping structure for table sysdur.topics
CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topics_deleted_at_index` (`deleted_at`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table sysdur.topics: 2 rows
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'SOP', '2021-01-12 03:44:24', '2021-01-12 03:44:24', NULL),
	(2, 'Test', '2021-01-12 03:46:37', '2021-01-12 03:46:37', NULL);
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;

-- Dumping structure for table sysdur.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nik` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sign` text COLLATE utf8_unicode_ci,
  `role_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_deleted_at_index` (`deleted_at`),
  KEY `fk_253_role_role_id_user` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table sysdur.users: 8 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `nik`, `email`, `email_verified_at`, `password`, `company_id`, `department_id`, `position_id`, `parent_id`, `sign`, `role_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'superadmin', NULL, 'superadmin@gmail.com', NULL, '$2y$10$eogrMlhVQtn2AiWtsfCsiODBsVsiHxM7pm/XreNvdMpfxb1Antgzy', NULL, NULL, NULL, 0, NULL, 1, 'LImX8FAOPrWhj23mKzgeVV7Nliabf0HattjO6Nj3hLkO5rMCGDP1PJ53KzQy', '2020-12-23 06:01:52', '2021-01-01 06:03:29', NULL),
	(2, 'admin', NULL, 'admin@gmail.com', NULL, '$2y$10$L1WINbJPIyogyczrnWyj2.rPU.IbKqEWldgWzJsWsIcsICWMXnkzG', 0, 0, NULL, 0, NULL, 1, '2SpEKW1EdVXRvkvn45cRZ1vB2k7twYT7DYWfAgCMupvs9jpRtkivX4gsubPs', '2020-12-23 06:21:34', '2020-12-23 06:21:34', NULL),
	(3, 'user', NULL, 'user@gmail.com', NULL, '$2y$10$N.f0NMXOwwfFbFz1SzsETeS/mAE2o3VY9fQcFfo7NeQFNpxLz/Dn6', 1, 1, 1, 0, NULL, NULL, 'UKBKVNTBLbJuJprE1yFrLzW1UMNGYv1vRXwAkdzYod8xzxn832lS7KnM1zb1', '2020-12-23 06:21:59', '2020-12-24 08:59:27', NULL),
	(4, 'Creator', 'CR-01', 'creator@gmail.com', NULL, '$2y$10$.MHQLYzlsrokeG2PEEiz8OgXOPxqoD1o4Xku11BB1ucwnYc32M1cG', 1, 1, 1, 6, '1609625837.jpg', NULL, 'vjYBZxEHHkrgbryaeTPjIBxvEYB73oAOn1vIIFQNjoOawHGDxrkPGLrwmGlW', '2021-01-01 05:59:49', '2021-01-05 06:15:57', NULL),
	(5, 'Manager', 'MG-001', 'manager@gmail.com', NULL, '$2y$10$Od3iU7S8BQ9xCEpeDV2xQeei6VAoR5e7va9uZJGJdsd5PE2v5dTpa', 1, 1, 4, 0, '1609583213.png', NULL, NULL, '2021-01-02 10:26:53', '2021-01-02 10:26:53', NULL),
	(6, 'Admin SysDur', 'AS-01', 'adminsysdur@gmail.com', NULL, '$2y$10$rgGzGgBOzruU.ODDrvY8lugVN37aKvYnQ60HqIkpU4lPS9sLpa3OO', 1, 1, 2, 7, '1609625780.jpg', NULL, NULL, '2021-01-02 22:13:15', '2021-01-02 22:16:21', NULL),
	(7, 'Supervisor', 'SV-01', 'supervisor@gmail.com', NULL, '$2y$10$eVD.QZP2C2c0MBmMM5BPEOrYWusM4N75AwQn.F6njxCxfm.sUUhX2', 1, 1, 3, 5, '1609625675.jpg', NULL, NULL, '2021-01-02 22:14:35', '2021-01-02 22:14:35', NULL),
	(8, 'superadmin2', NULL, 'superadmin2@gmail.com', NULL, '$2y$10$flPJpd033o14dW4Z7SVUKer1OSJy2PmHMcE2w/hXm/1R4s3eXQal6', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-01-05 04:20:42', '2021-01-05 04:20:42', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table sysdur.user_actions
CREATE TABLE IF NOT EXISTS `user_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_254_user_user_id_user_action` (`user_id`),
  KEY `user_actions_deleted_at_index` (`deleted_at`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table sysdur.user_actions: 65 rows
/*!40000 ALTER TABLE `user_actions` DISABLE KEYS */;
INSERT INTO `user_actions` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, 'created', 'users', 2, '2021-01-11 05:42:38', '2021-01-11 05:42:38', NULL),
	(2, 1, 'updated', 'users', 1, '2021-01-11 05:42:48', '2021-01-11 05:42:48', NULL),
	(3, 2, 'updated', 'users', 2, '2021-01-12 02:53:41', '2021-01-12 02:53:41', NULL),
	(4, 2, 'updated', 'users', 2, '2021-01-12 02:54:43', '2021-01-12 02:54:43', NULL),
	(5, 3, 'updated', 'users', 3, '2021-01-12 02:59:24', '2021-01-12 02:59:24', NULL),
	(6, 2, 'updated', 'users', 2, '2021-01-12 03:06:51', '2021-01-12 03:06:51', NULL),
	(7, 3, 'updated', 'users', 3, '2021-01-12 03:31:04', '2021-01-12 03:31:04', NULL),
	(8, 3, 'updated', 'users', 3, '2021-01-12 03:36:18', '2021-01-12 03:36:18', NULL),
	(9, 2, 'updated', 'users', 2, '2021-01-12 03:40:25', '2021-01-12 03:40:25', NULL),
	(10, 4, 'updated', 'users', 4, '2021-01-12 03:43:42', '2021-01-12 03:43:42', NULL),
	(11, 2, 'created', 'topics', 1, '2021-01-12 03:44:24', '2021-01-12 03:44:24', NULL),
	(12, 2, 'created', 'questions', 1, '2021-01-12 03:45:00', '2021-01-12 03:45:00', NULL),
	(13, 2, 'created', 'questions_options', 1, '2021-01-12 03:45:00', '2021-01-12 03:45:00', NULL),
	(14, 2, 'created', 'questions_options', 2, '2021-01-12 03:45:00', '2021-01-12 03:45:00', NULL),
	(15, 2, 'created', 'questions_options', 3, '2021-01-12 03:45:00', '2021-01-12 03:45:00', NULL),
	(16, 2, 'created', 'questions_options', 4, '2021-01-12 03:45:00', '2021-01-12 03:45:00', NULL),
	(17, 2, 'created', 'questions_options', 5, '2021-01-12 03:45:00', '2021-01-12 03:45:00', NULL),
	(18, 2, 'created', 'questions', 2, '2021-01-12 03:46:15', '2021-01-12 03:46:15', NULL),
	(19, 2, 'created', 'questions_options', 6, '2021-01-12 03:46:15', '2021-01-12 03:46:15', NULL),
	(20, 2, 'created', 'questions_options', 7, '2021-01-12 03:46:15', '2021-01-12 03:46:15', NULL),
	(21, 2, 'created', 'questions_options', 8, '2021-01-12 03:46:15', '2021-01-12 03:46:15', NULL),
	(22, 2, 'created', 'questions_options', 9, '2021-01-12 03:46:15', '2021-01-12 03:46:15', NULL),
	(23, 2, 'created', 'questions_options', 10, '2021-01-12 03:46:15', '2021-01-12 03:46:15', NULL),
	(24, 2, 'created', 'topics', 2, '2021-01-12 03:46:37', '2021-01-12 03:46:37', NULL),
	(25, 2, 'created', 'questions', 3, '2021-01-12 03:47:02', '2021-01-12 03:47:02', NULL),
	(26, 2, 'created', 'questions_options', 11, '2021-01-12 03:47:02', '2021-01-12 03:47:02', NULL),
	(27, 2, 'created', 'questions_options', 12, '2021-01-12 03:47:02', '2021-01-12 03:47:02', NULL),
	(28, 2, 'created', 'questions_options', 13, '2021-01-12 03:47:02', '2021-01-12 03:47:02', NULL),
	(29, 2, 'created', 'questions_options', 14, '2021-01-12 03:47:02', '2021-01-12 03:47:02', NULL),
	(30, 2, 'created', 'questions_options', 15, '2021-01-12 03:47:02', '2021-01-12 03:47:02', NULL),
	(31, 2, 'created', 'questions', 4, '2021-01-12 03:47:53', '2021-01-12 03:47:53', NULL),
	(32, 2, 'created', 'questions_options', 16, '2021-01-12 03:47:53', '2021-01-12 03:47:53', NULL),
	(33, 2, 'created', 'questions_options', 17, '2021-01-12 03:47:53', '2021-01-12 03:47:53', NULL),
	(34, 2, 'created', 'questions_options', 18, '2021-01-12 03:47:53', '2021-01-12 03:47:53', NULL),
	(35, 2, 'created', 'questions_options', 19, '2021-01-12 03:47:53', '2021-01-12 03:47:53', NULL),
	(36, 2, 'created', 'questions_options', 20, '2021-01-12 03:47:53', '2021-01-12 03:47:53', NULL),
	(37, 2, 'created', 'tests', 1, '2021-01-12 04:20:27', '2021-01-12 04:20:27', NULL),
	(38, 2, 'created', 'test_answers', 1, '2021-01-12 04:20:27', '2021-01-12 04:20:27', NULL),
	(39, 2, 'created', 'tests', 1, '2021-01-12 04:20:27', '2021-01-12 04:20:27', NULL),
	(40, 2, 'created', 'tests', 2, '2021-01-12 04:26:56', '2021-01-12 04:26:56', NULL),
	(41, 2, 'created', 'test_answers', 2, '2021-01-12 04:26:56', '2021-01-12 04:26:56', NULL),
	(42, 2, 'created', 'test_answers', 3, '2021-01-12 04:26:56', '2021-01-12 04:26:56', NULL),
	(43, 2, 'created', 'test_answers', 4, '2021-01-12 04:26:56', '2021-01-12 04:26:56', NULL),
	(44, 2, 'created', 'tests', 2, '2021-01-12 04:26:56', '2021-01-12 04:26:56', NULL),
	(45, 2, 'created', 'tests', 3, '2021-01-12 04:29:01', '2021-01-12 04:29:01', NULL),
	(46, 2, 'created', 'test_answers', 5, '2021-01-12 04:29:01', '2021-01-12 04:29:01', NULL),
	(47, 2, 'created', 'test_answers', 6, '2021-01-12 04:29:01', '2021-01-12 04:29:01', NULL),
	(48, 2, 'created', 'test_answers', 7, '2021-01-12 04:29:01', '2021-01-12 04:29:01', NULL),
	(49, 2, 'created', 'tests', 3, '2021-01-12 04:29:01', '2021-01-12 04:29:01', NULL),
	(50, 4, 'created', 'tests', 4, '2021-01-12 08:07:00', '2021-01-12 08:07:00', NULL),
	(51, 4, 'created', 'test_answers', 8, '2021-01-12 08:07:01', '2021-01-12 08:07:01', NULL),
	(52, 4, 'created', 'test_answers', 9, '2021-01-12 08:07:01', '2021-01-12 08:07:01', NULL),
	(53, 4, 'created', 'test_answers', 10, '2021-01-12 08:07:01', '2021-01-12 08:07:01', NULL),
	(54, 4, 'created', 'tests', 4, '2021-01-12 08:07:01', '2021-01-12 08:07:01', NULL),
	(55, 4, 'created', 'tests', 5, '2021-01-12 08:08:11', '2021-01-12 08:08:11', NULL),
	(56, 4, 'created', 'test_answers', 11, '2021-01-12 08:08:11', '2021-01-12 08:08:11', NULL),
	(57, 4, 'created', 'tests', 5, '2021-01-12 08:08:11', '2021-01-12 08:08:11', NULL),
	(58, 4, 'created', 'tests', 6, '2021-01-12 08:09:22', '2021-01-12 08:09:22', NULL),
	(59, 4, 'created', 'test_answers', 12, '2021-01-12 08:09:22', '2021-01-12 08:09:22', NULL),
	(60, 4, 'created', 'tests', 6, '2021-01-12 08:09:22', '2021-01-12 08:09:22', NULL),
	(61, 4, 'updated', 'users', 4, '2021-01-12 08:15:53', '2021-01-12 08:15:53', NULL),
	(62, 4, 'updated', 'users', 4, '2021-01-12 08:28:26', '2021-01-12 08:28:26', NULL),
	(63, 2, 'updated', 'users', 2, '2021-01-12 08:29:18', '2021-01-12 08:29:18', NULL),
	(64, 4, 'updated', 'users', 4, '2021-01-15 01:57:14', '2021-01-15 01:57:14', NULL),
	(65, 4, 'updated', 'users', 4, '2021-01-15 02:00:03', '2021-01-15 02:00:03', NULL);
/*!40000 ALTER TABLE `user_actions` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
