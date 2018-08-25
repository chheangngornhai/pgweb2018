-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 17, 2018 at 03:51 AM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pgexpress2018`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2017_10_11_015336_create_tbl_menu_table', 2),
(7, '2017_10_11_030941_create_tbl_language_table', 2),
(8, '2017_10_12_031330_create_tbl_banner_table', 3),
(10, '2017_10_12_063209_create_tbl_post_table', 4),
(12, '2017_10_12_090958_create_tbl_our_team_table', 5),
(13, '2017_10_17_060450_create_tbl_home_table', 6),
(14, '2017_10_18_014940_entrust_setup_tables', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `parent_id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(9, 1, 'role-list', 'Display Role Listing', 'See only Listing Of Role', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(10, 1, 'role-create', 'Create Role', 'Create New Role', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(11, 1, 'role-edit', 'Edit Role', 'Edit Role', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(12, 1, 'role-delete', 'Delete Role', 'Delete Role', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(13, 5, 'team-list', 'Display Our Team', 'See only Listing Of Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(14, 5, 'team-create', 'Create Our Team', 'Create New Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(15, 5, 'team-edit', 'Edit Our Team', 'Edit Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(16, 5, 'team-delete', 'Delete Our Team', 'Delete Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(17, 2, 'user-list', 'Display Users', 'See only Listing Of Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(18, 2, 'user-create', 'Create Users', 'Create New Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(19, 2, 'user-edit', 'Edit Users', 'Edit Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(20, 2, 'user-delete', 'Delete Users', 'Delete Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(21, 3, 'menu-list', 'Display Menu', 'See only Listing Of Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(22, 3, 'menu-create', 'Create Menu', 'Create New Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(23, 3, 'menu-edit', 'Edit Menu', 'Edit Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(24, 3, 'menu-delete', 'Delete Menu', 'Delete Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(25, 4, 'slide-list', 'Display slide', 'See only Listing Of Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(26, 4, 'slide-create', 'Create slide', 'Create New Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(27, 4, 'slide-edit', 'Edit slide', 'Edit Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(28, 4, 'slide-delete', 'Delete slide', 'Delete Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(29, 6, 'post-list', 'Display post', 'See only Listing Of Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(30, 6, 'post-create', 'Create post', 'Create New Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(31, 6, 'post-edit', 'Edit post', 'Edit Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08'),
(32, 6, 'post-delete', 'Delete post', 'Delete Item', '2017-10-17 23:42:08', '2017-10-17 23:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 6),
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 6),
(32, 6),
(13, 7),
(14, 7),
(15, 7),
(17, 7),
(21, 7),
(25, 7),
(26, 7),
(27, 7),
(29, 7),
(30, 7),
(31, 7),
(13, 8),
(29, 8),
(30, 8),
(31, 8),
(32, 8);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(6, 'administrator', 'administrator', NULL, '2017-10-17 23:51:11', '2017-10-17 23:51:11'),
(7, 'user', 'guest', NULL, '2017-10-17 23:55:40', '2017-10-17 23:55:40'),
(8, 'post', 'post', NULL, '2017-11-11 00:42:08', '2017-11-11 00:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(4, 6),
(5, 7),
(7, 7),
(15, 7),
(16, 7),
(17, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `banner`, `user_id`, `created_at`, `updated_at`) VALUES
(11, '2017-11-17-09-46-57-2017-10-12-03-20-22-VATR_Header_Banner_1920x700.jpg', 4, '2017-11-17 02:46:57', '2017-11-17 02:46:57'),
(12, '2017-11-17-09-47-04-2017-10-12-03-20-22-VATR_Header_Banner_1920x700.jpg', 4, '2017-11-17 02:47:04', '2017-11-17 02:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home`
--

CREATE TABLE `tbl_home` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `logo` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favaion` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `working` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `welcome` text COLLATE utf8mb4_unicode_ci,
  `information` text COLLATE utf8mb4_unicode_ci,
  `we_are` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_home`
--

INSERT INTO `tbl_home` (`id`, `user_id`, `logo`, `favaion`, `description`, `phone`, `email`, `working`, `address`, `welcome`, `information`, `we_are`, `created_at`, `updated_at`) VALUES
(1, 4, '2017-11-17-09-31-43-2017-10-17-07-29-54-logo.png', '', 'អត្ថប្រយោជន៍របស់លោកអ្នកអំពីយើងខ្ញុំ : \r\n✔️ លោកអ្នកចំណាយប្រាក់តិចក្នុងការបញ្ជូនឥវ៉ាន់របស់លោកអ្នកនិងមកដល់កន្លែងដែលលោកអ្នកចង់បាន។\r\n✔️ កាត់បន្ថយការកកស្ទះចរាចរណ៍ក្នុងការដឹកជញ្ជូនឥវ៉ាន់ដោយខ្លួនឯង។\r\n✔️ ជញ្ជូនអីវ៉ាន់ទៅដល់ទីកន្លែងរបស់លោកអ្នកដោយការទទួលខុសត្រូវខ្ពស់ចំពោះអតិថិជន។', '០៨៦​ ៩០០ ៣៩៩ (ស្មាត) , ០៩២ ២៨០ ២២២ (ស៊ែលកាត), ០៨៨ ៥៩០០​៣៩៩ (មិត្តហ្វូន)', 'info@pgexpress.com', 'ម៉ោង បំពេញការងារថ្ងៃ ច័ន្ទ – ថ្ងៃ សៅរ៍ ម៉ោង ៧ព្រឹក ដល់ ម៉ោង ៧ល្ងាច', 'អាស័យដ្ឋាន: អគារលេខ 93 ផ្លូវលេខ 454 សង្កាត់ ទួលទំពូង២ ខ្ឌណចំការមន រាជធានីភ្នំពេញ ។', '<h4 style=\"text-align: left;\"><strong>យើងខ្ញុំសូមផ្តល់ជូនសេវាកម្មដឹកជញ្ជូនឥវ៉ាន់នៅក្នុងទីក្រុងភ្នំពេញនិងទូទាំង២៥ ខេត្ត &nbsp;ក្រុង​ រហ័ស​ ទាន់ចិត្ត និងទំនុកចិត្ត។</strong></h4>\r\n<h2 style=\"text-align: left;\"><strong>តើយើងខ្ញុំដឹកជញ្ជូនរបស់អ្វីខ្លះ</strong><strong>?</strong></h2>\r\n<h4 style=\"text-align: left;\">បច្ចុប្បន្ននេះក្រុមហ៊ុនយើងខ្ញុំផ្តល់សេវាកម្មដឹកជញ្ជូនឥវ៉ាន់ទូទាំងប្រទេសដូចជា៖</h4>\r\n<ul style=\"text-align: left;\">\r\n<li>\r\n<h4>កញ្ចប់ទំនិញ៖ សំលៀកបំពាក់ កាបូប ស្បែកជើង វ៉ែនតា នាឡិកា ទូរស័ព្ទ ស្រោមទូរស័ព្ទ ខ្សែរក្រវ៉ាត់ មួក វត្ថុអនុស្សរីយ៍ ។ល។</h4>\r\n</li>\r\n</ul>\r\n<ul style=\"text-align: left;\">\r\n<li>\r\n<h4>កញ្ចប់ចំណីអាហារ៖ អាហារខ្មែរ ចិន បារាំង ។ល។ អាហារតាម&nbsp;ភោជនីយដ្ឋាន អាហាររហ័ស ប៊ូហ្វេ អាហារព្រឹក ថ្ងៃត្រង់ ល្ងាច ភេសជ្ជះ នំខួបកំណើត បន្លែ គ្រឿងទេស សាច់ ត្រី សាច់គោ សាច់ជ្រូក។</h4>\r\n</li>\r\n</ul>\r\n<ul style=\"text-align: left;\">\r\n<li>\r\n<h4>កញ្ចប់ឯកសារ៖ ឯកសារការរិយាល័យ សម្ភារៈការរិយាល័យ សម្ភារៈសិក្សា ឯកសារផ្សេងៗរបស់ក្រុមហ៊ុន អង្គការ​និងស្ថាប័នរដ្ឋនានា។</h4>\r\n</li>\r\n</ul>\r\n<ul style=\"text-align: left;\">\r\n<li>\r\n<h4>ទំនិញអនឡាញ (online)</h4>\r\n</li>\r\n</ul>\r\n<h2 style=\"text-align: left;\"><strong>អត្ថប្រយោជន៍របស់លោកអ្នកអំពីយើងខ្ញុំ</strong></h2>\r\n<h4 style=\"text-align: left;\">-លោកអ្នកចំណាយប្រាក់តិចក្នុងការបញ្ជូនឥវ៉ាន់របស់លោកអ្នកនិងមកដល់កន្លែងដែលលោកអ្នកចង់បាន។</h4>\r\n<h4 style=\"text-align: left;\">-កាត់បន្ថយការកកស្ទះចរាចរណ៍ក្នុងការដឹកជញ្ជូនឥវ៉ាន់ដោយខ្លួនឯង។</h4>\r\n<h4 style=\"text-align: left;\">-ជញ្ជូនអីវ៉ាន់ទៅដល់ទីន្លែងរបស់លោកអ្នកនៅជុំវិញទីក្រុងភ្នំពេញ និងបណ្តាខេត្ត ក្រុងនានាទូទាំងប្រទេស។</h4>', '<p style=\"text-align: left;\"><img style=\"float: left;\" src=\"/photos/4/17,1.jpg\" width=\"464\" height=\"322\" /><strong>P&amp;GExpress សេវាកម្មដឹកជញ្ជូនបញ្ញេីរ&nbsp;<br />ក្នុងរាជធានីភ្នំពេញ<br /><span class=\"_5mfr _47e3\"><span class=\"_7oe\">👉</span></span>&nbsp;ត្រឹមតែ ៤០០០ រៀល&nbsp;<br /><span class=\"_5mfr _47e3\"><span class=\"_7oe\">✔️</span></span>&nbsp;ផ្តល់ភាពងាយស្រួល រហ័ស<br /><span class=\"_5mfr _47e3\"><span class=\"_7oe\">✔️</span></span>&nbsp;ចំណេញពេលវេលា ជូនលោកអ្នក<span class=\"text_exposed_show\"><br /><span class=\"_5mfr _47e3\"><span class=\"_7oe\">✔️</span></span>&nbsp;ការទទួលខុសត្រូវខ្ពស់ចំពោះអតិថិជន<br /><span class=\"_5mfr _47e3\"><span class=\"_7oe\">✔️</span></span>&nbsp;តម្លៃថោកសមរម្យ<br />អត្ថប្រយោជន៍របស់លោកអ្នកអំពីយើងខ្ញុំ :&nbsp;<br /><span class=\"_5mfr _47e3\"><span class=\"_7oe\">✔️</span></span>&nbsp;លោកអ្នកចំណាយប្រាក់តិចក្នុងការបញ្ជូនឥវ៉ាន់របស់លោកអ្នកនិងមកដល់កន្លែងដែលលោកអ្នកចង់បាន។<br /><span class=\"_5mfr _47e3\"><span class=\"_7oe\">✔️</span></span>&nbsp;កាត់បន្ថយការកកស្ទះចរាចរណ៍ក្នុងការដឹកជញ្ជូនឥវ៉ាន់ដោយខ្លួនឯង។<br /><span class=\"_5mfr _47e3\"><span class=\"_7oe\">✔️</span></span>&nbsp;ជញ្ជូនអីវ៉ាន់ទៅដល់ទីកន្លែងរបស់លោកអ្នកដោយការទទួលខុសត្រូវខ្ពស់ចំពោះអតិថិជន។&nbsp;</span></strong></p>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<pre style=\"text-align: left;\">&nbsp;</pre>\r\n<p>&nbsp;</p>\r\n<pre style=\"text-align: left;\">&nbsp;</pre>\r\n<p><span style=\"border-radius: 2px; text-indent: 20px; width: auto; padding: 0px 4px 0px 0px; text-align: center; font: bold 11px/20px \'Helvetica Neue\',Helvetica,sans-serif; color: #ffffff; background: #bd081c  no-repeat scroll 3px 50% / 14px 14px; position: absolute; opacity: 1; z-index: 8675309; display: none; cursor: pointer; top: 56px; left: 18px;\">Save</span></p>\r\n<p><span style=\"border-radius: 2px; text-indent: 20px; width: auto; padding: 0px 4px 0px 0px; text-align: center; font: bold 11px/20px \'Helvetica Neue\',Helvetica,sans-serif; color: #ffffff; background: #bd081c  no-repeat scroll 3px 50% / 14px 14px; position: absolute; opacity: 1; z-index: 8675309; display: none; cursor: pointer; top: 56px; left: 18px;\">Save</span></p>\r\n<p><span style=\"border-radius: 2px; text-indent: 20px; width: auto; padding: 0px 4px 0px 0px; text-align: center; font: bold 11px/20px \'Helvetica Neue\',Helvetica,sans-serif; color: #ffffff; background: #bd081c  no-repeat scroll 3px 50% / 14px 14px; position: absolute; opacity: 1; z-index: 8675309; display: none; cursor: pointer; top: 24px; left: 18px;\">Save</span></p>', NULL, '2017-10-16 17:00:00', '2017-11-17 03:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `name`, `user_id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'ទំព័រដើម', 4, 'home', '2017-10-10 20:42:03', '2017-10-11 20:40:31'),
(2, 'អំពីយើង', 4, 'អំពីយើង', '2017-10-10 21:26:43', '2017-10-10 21:26:43'),
(3, 'ដោនឡូត', 4, 'ដោនឡូត', '2017-10-10 21:26:47', '2017-10-11 20:40:36'),
(4, 'ទំនាក់ទំនង', 4, 'contact-us', '2017-10-10 21:26:51', '2017-10-10 21:26:51'),
(6, 'អំពីសេវាកម្ម', 4, 'អំពីសេវាកម្ម', '2017-10-12 00:21:53', '2017-10-12 00:21:53'),
(8, 'ចុះឈ្មោះជាសមាជិក', 4, 'formreg', '2018-02-02 10:48:35', '2018-02-02 10:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_our_team`
--

CREATE TABLE `tbl_our_team` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_our_team`
--

INSERT INTO `tbl_our_team` (`id`, `user_id`, `name`, `position`, `images`, `description`, `created_at`, `updated_at`) VALUES
(4, 4, 'ភី&ជីអុិចស្រ្ពេស', 'P&GExpress សេវាកម្មដឹកជញ្ជូនបញ្ញេីរ  ក្នុងរាជធានីភ្នំពេញ', '2017-11-17-10-20-25-Untitled-1.jpg', '.', '2017-11-17 03:20:25', '2017-11-17 03:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `user_id`, `menu_id`, `title`, `images`, `description`, `created_at`, `updated_at`) VALUES
(18, 4, 2, 'អំពីយើង', '2017-11-17-10-31-11-1234567.jpg', 'សេវាកម្មដឹកជញ្ជូនរហ័ស សុវត្ថិភាព និងទំនុកចិត្ត។\r\n\r\nទស្សនៈវិស័យ\r\n\r\nផ្តល់សេវាកម្មដឹកជញ្ជូនកញ្ចប់ទំនិញខ្នាតតូច ឯកសារ និង បញ្ញើរផ្សេងៗទូទាំងប្រទេស។\r\n\r\nបេសកកម្ម\r\n\r\nផ្តល់សេវាកម្មដឹកជញ្ជូនដែលមានភាពងាយស្រួល រហ័ស ទំនុកចិត្ត និង ចំណេញពេលវេលា ជូនលោកអ្នក។\r\n\r\nតម្លៃរួម\r\n\r\n– អតិថិជនជាចំបង : សេវាកម្មល្អឥតខ្ចោះ\r\n\r\n– សុចរិតភាព : ការប្រព្រឹត្តត្រឹមត្រូវ និងស្មោះត្រង់\r\n\r\n– ការទទួលខុសត្រូវ : ការទទួលខុសត្រូវខ្ពស់ចំពោះអតិថិជន\r\n\r\n– ភាពជាអ្នកដឹកនាំ : ទាំងអស់គ្នាជាអ្នកដឹកនាំ\r\n\r\n– សហប្រតិបត្តិការ : រួមគ្នាសំរេចគោលដៅរួម', '2017-11-17 03:31:11', '2017-11-17 03:31:11'),
(19, 4, 6, 'អំពីសេវាកម្ម', '2017-11-18-08-29-47-09999.jpg', 'យើងខ្ញុំសូមផ្តល់ជូនសេវាកម្មដឹកជញ្ជូនឥវ៉ាន់នៅក្នុងទីក្រុងភ្នំពេញនិងទូទាំង២៥ ខេត្ត  ក្រុង​ រហ័ស​ ទាន់ចិត្ត និងទំនុកចិត្ត។\r\n\r\nតើយើងខ្ញុំដឹកជញ្ជូនរបស់អ្វីខ្លះ?\r\n\r\nបច្ចុប្បន្ននេះក្រុមហ៊ុនយើងខ្ញុំផ្តល់សេវាកម្មដឹកជញ្ជូនឥវ៉ាន់ទូទាំងប្រទេសដូចជា៖\r\n\r\nកញ្ចប់ទំនិញ៖ សំលៀកបំពាក់ កាបូប ស្បែកជើង វ៉ែនតា នាឡិកា ទូរស័ព្ទ ស្រោមទូរស័ព្ទ ខ្សែរក្រវ៉ាត់ មួក វត្ថុអនុស្សរីយ៍ ។ល។\r\n\r\nកញ្ចប់ចំណីអាហារ៖ អាហារខ្មែរ ចិន បារាំង ។ល។ អាហារតាម ភោជនីយដ្ឋាន អាហាររហ័ស ប៊ូហ្វេ អាហារព្រឹក ថ្ងៃត្រង់ ល្ងាច ភេសជ្ជះ នំខួបកំណើត បន្លែ គ្រឿងទេស សាច់ ត្រី សាច់គោ សាច់ជ្រូក។\r\n\r\nកញ្ចប់ឯកសារ៖ ឯកសារការរិយាល័យ សម្ភារៈការរិយាល័យ សម្ភារៈសិក្សា ឯកសារផ្សេងៗរបស់ក្រុមហ៊ុន អង្គការ​និងស្ថាប័នរដ្ឋនានា។\r\n\r\nទំនិញអនឡាញ (online)\r\n\r\nអត្ថប្រយោជន៍របស់លោកអ្នកអំពីយើងខ្ញុំ\r\n\r\n-លោកអ្នកចំណាយប្រាក់តិចក្នុងការបញ្ជូនឥវ៉ាន់របស់លោកអ្នកនិងមកដល់កន្លែងដែលលោកអ្នកចង់បាន។\r\n\r\n-កាត់បន្ថយការកកស្ទះចរាចរណ៍ក្នុងការដឹកជញ្ជូនឥវ៉ាន់ដោយខ្លួនឯង។\r\n\r\n-ជញ្ជូនអីវ៉ាន់ទៅដល់ទីន្លែងរបស់លោកអ្នកនៅជុំវិញទីក្រុងភ្នំពេញ និងបណ្តាខេត្ត ក្រុងនានាទូទាំងប្រទេស។', '2017-11-18 01:29:47', '2017-11-18 01:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reg`
--

CREATE TABLE `tbl_reg` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `phone_number` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date` date DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `motor` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reg`
--

INSERT INTO `tbl_reg` (`id`, `name`, `email`, `phone_number`, `sex`, `date`, `address`, `motor`, `created_at`, `updated_at`) VALUES
(43, 'ឈាង ងនហៃ', NULL, '098760101', 'ប្រុស', NULL, 'pp', 'មាន', '2018-01-29 15:03:40', '2018-01-29 15:03:40'),
(42, 'គន ធា រ៉េត', NULL, '092882279', 'M', NULL, 'Pp', 'មាន', '2018-01-29 07:53:09', '2018-01-29 07:53:09'),
(48, 'Hello', NULL, '093760101', 'm', NULL, 'kratie', 'មាន', '2018-02-02 04:04:03', '2018-02-02 04:04:03'),
(49, 'Vuthy Sereyroth', 'vuthy.sereyroth@yahoo.com', '012235236', 'Female', NULL, 'Phnom Penh', 'អត់មាន', '2018-03-27 02:24:35', '2018-03-27 02:24:35'),
(50, 'hai', NULL, '093760101', 'male', NULL, 'fff', 'មាន', '2018-08-08 08:46:18', '2018-08-08 08:46:18'),
(35, 'Chheang Ngornhai', 'ngornhai11@gmail.com', '098760101', 'ប្រុស', '2018-01-29', 'កំពុងចាម', 'មាន', '2018-01-28 17:32:07', '2018-01-28 17:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT 'http://placehold.it/160x160',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `profile`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'administrator', '2017-10-24-03-01-39-160x160.png', 'admin@admin.com', '$2y$10$gUlMlzVpD8bObYN.7LbQ2eC3L/BruNdJiMiLnUkvn60EFPBVYMyXW', '17wH3HJNchaDob1ntPK8KQA00YLFfIPdVnUvKhlafr9VIRwjEiKamSNqjCjT', '2017-10-17 23:52:21', '2017-10-23 21:27:07'),
(5, 'Guest', '2017-10-18-07-02-55-160_F_104013719_0RBp6tC9Q0ryP0bzgTqHGZWPLbmz2Cdt.jpg', 'user@gmail.com', '$2y$10$f4PIVZrLuQZhwLDommpZVeP11wGwSmjWkvLzJaCyHpz6dq3vEvf9W', 'AHOUdyXR5X4PHTUJj69qtTqFK9yDvyJqoKRGqzDmB37tQjjwPqhm8qyqntBr', '2017-10-17 23:56:25', '2017-10-23 21:30:23'),
(7, 'username', '160x160.png', 'name@gmail.com', '$2y$10$XqmQzUnPSZ4lEu64JcciyuikVDaOaiau0.YZyz4jl1OmhLyB31ZUG', 'BbwT9HQPlGbSdTSkvWLV8hk1NGTKGeYEie8lDeN2BOcyVjMDQ4bk6lkzhpR6', '2017-10-23 21:32:56', '2017-10-23 21:35:34'),
(15, 'visetha', '160x160.png', 'visetha2011@gmail.com', '$2y$10$L0i4SSKLeJUQIcdx7GLRke32aFhCMJJ0DOi2SvnW0FIr402OvHlSe', NULL, '2017-11-27 11:16:00', '2017-11-27 11:16:00'),
(16, 'GuestBoala', '160x160.png', 'samburton202@aol.co.uk', '$2y$10$uTOxI2Kqu6SqCDEKwE0XFetBvDly5GQb2yAd8FZSLJWdMCaGvji9m', NULL, '2018-05-31 12:22:12', '2018-05-31 12:22:12'),
(17, 'hello', '160x160.png', 'hello11@gmail.com', '$2y$10$fZ82xcW40FWs0f26Ds38XOs6O/kv.8CKYTLEgC9JO33PBSAmwQtxK', 'n6IEMtlV46q2dZvg2ajuJwPFWRwQ0OC42KUg46cF7aDneHiDt8O805QQQUZ3', '2018-07-05 16:16:20', '2018-07-05 16:16:20');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_home`
--
ALTER TABLE `tbl_home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_our_team`
--
ALTER TABLE `tbl_our_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reg`
--
ALTER TABLE `tbl_reg`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_home`
--
ALTER TABLE `tbl_home`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_our_team`
--
ALTER TABLE `tbl_our_team`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_reg`
--
ALTER TABLE `tbl_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
