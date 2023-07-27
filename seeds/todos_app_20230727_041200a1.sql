-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 27, 2023 at 04:12 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todos_app`
--
CREATE DATABASE IF NOT EXISTS `todos_app` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `todos_app`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `created_at`, `updated_at`) VALUES
(1, 'begin', '2023-07-20 13:02:22', '2023-07-20 13:02:22'),
(2, 'important', '2023-07-20 13:02:22', '2023-07-20 13:02:22'),
(3, 'urgent', '2023-07-20 13:02:22', '2023-07-20 13:02:22'),
(4, 'additional', '2023-07-20 13:02:22', '2023-07-20 13:02:22'),
(5, 'kiv', '2023-07-20 13:08:38', '2023-07-20 13:08:38'),
(6, 'long-term', '2023-07-20 13:08:38', '2023-07-20 13:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2023_06_22_014350_create_todos_table', 1),
(21, '2023_07_20_102749_create_categories_table', 1);

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_completed` tinyint(4) NOT NULL,
  `category_tag` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `title`, `description`, `is_completed`, `category_tag`, `created_at`, `updated_at`) VALUES
(1, 'This is item 1', 'Item 1 description', 1, 'begin,important,urgent,additional', '2023-07-20 11:32:04', '2023-07-20 11:33:20'),
(2, 'This is item 2', 'Item 2 description', 0, 'kiv,long-term', '2023-07-20 13:08:38', '2023-07-20 13:08:38'),
(3, 'This is item 3', 'Item 3 description', 0, 'begin,kiv', '2023-07-27 00:18:18', '2023-07-27 00:18:18'),
(4, 'This is item 4', 'Item 4 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(5, 'This is item 5', 'Item 5 description', 0, 'urgent', '2023-07-27 00:18:58', '2023-07-27 00:18:58')
(6, 'This is item 6', 'Item 6 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(7, 'This is item 7', 'Item 7 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(8, 'This is item 8', 'Item 8 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(9, 'This is item 9', 'Item 9 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(10, 'This is item 10', 'Item 10 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(11, 'This is item 11', 'Item 11 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(12, 'This is item 12', 'Item 12 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(13, 'This is item 13', 'Item 13 description', 0, 'urgent', '2023-07-27 00:18:58', '2023-07-27 00:18:58')
(14, 'This is item 14', 'Item 14 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(15, 'This is item 15', 'Item 15 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(16, 'This is item 16', 'Item 16 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(17, 'This is item 17', 'Item 17 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(18, 'This is item 18', 'Item 18 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(19, 'This is item 19', 'Item 19 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(20, 'This is item 20', 'Item 20 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(21, 'This is item 21', 'Item 21 description', 0, 'urgent', '2023-07-27 00:18:58', '2023-07-27 00:18:58')
(22, 'This is item 22', 'Item 22 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(23, 'This is item 23', 'Item 23 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(24, 'This is item 24', 'Item 24 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(25, 'This is item 25', 'Item 25 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(26, 'This is item 26', 'Item 26 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(27, 'This is item 27', 'Item 27 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(28, 'This is item 28', 'Item 28 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(29, 'This is item 29', 'Item 29 description', 0, 'urgent', '2023-07-27 00:18:58', '2023-07-27 00:18:58')
(30, 'This is item 30', 'Item 30 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(31, 'This is item 31', 'Item 31 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(32, 'This is item 32', 'Item 32 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(33, 'This is item 33', 'Item 33 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(34, 'This is item 34', 'Item 34 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(35, 'This is item 35', 'Item 35 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(36, 'This is item 36', 'Item 36 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(37, 'This is item 37', 'Item 37 description', 0, 'urgent', '2023-07-27 00:18:58', '2023-07-27 00:18:58')
(38, 'This is item 38', 'Item 38 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(39, 'This is item 39', 'Item 39 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(40, 'This is item 40', 'Item 40 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(41, 'This is item 41', 'Item 41 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(42, 'This is item 42', 'Item 42 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(43, 'This is item 43', 'Item 43 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(44, 'This is item 44', 'Item 44 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(45, 'This is item 45', 'Item 45 description', 0, 'urgent', '2023-07-27 00:18:58', '2023-07-27 00:18:58')
(46, 'This is item 46', 'Item 46 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(47, 'This is item 47', 'Item 47 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(48, 'This is item 48', 'Item 48 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(49, 'This is item 49', 'Item 49 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(50, 'This is item 50', 'Item 50 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(51, 'This is item 51', 'Item 51 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(52, 'This is item 52', 'Item 52 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(53, 'This is item 53', 'Item 53 description', 0, 'urgent', '2023-07-27 00:18:58', '2023-07-27 00:18:58')
(54, 'This is item 54', 'Item 54 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(55, 'This is item 55', 'Item 55 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(56, 'This is item 56', 'Item 56 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(57, 'This is item 57', 'Item 57 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(58, 'This is item 58', 'Item 58 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(59, 'This is item 59', 'Item 59 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(60, 'This is item 60', 'Item 60 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(61, 'This is item 61', 'Item 61 description', 0, 'urgent', '2023-07-27 00:18:58', '2023-07-27 00:18:58')
(62, 'This is item 62', 'Item 62 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(63, 'This is item 63', 'Item 63 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(64, 'This is item 64', 'Item 64 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(65, 'This is item 65', 'Item 65 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(66, 'This is item 66', 'Item 66 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(67, 'This is item 67', 'Item 67 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(68, 'This is item 68', 'Item 68 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(69, 'This is item 69', 'Item 69 description', 0, 'urgent', '2023-07-27 00:18:58', '2023-07-27 00:18:58')
(70, 'This is item 70', 'Item 70 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(71, 'This is item 71', 'Item 71 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(72, 'This is item 72', 'Item 72 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(73, 'This is item 73', 'Item 73 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(74, 'This is item 74', 'Item 74 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(75, 'This is item 75', 'Item 75 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(76, 'This is item 76', 'Item 76 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(77, 'This is item 77', 'Item 77 description', 0, 'urgent', '2023-07-27 00:18:58', '2023-07-27 00:18:58')
(78, 'This is item 78', 'Item 78 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(79, 'This is item 79', 'Item 79 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(80, 'This is item 80', 'Item 80 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(81, 'This is item 81', 'Item 81 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(82, 'This is item 82', 'Item 82 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(83, 'This is item 83', 'Item 83 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(84, 'This is item 84', 'Item 84 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(85, 'This is item 85', 'Item 85 description', 0, 'urgent', '2023-07-27 00:18:58', '2023-07-27 00:18:58')
(86, 'This is item 86', 'Item 86 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(87, 'This is item 87', 'Item 87 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(88, 'This is item 88', 'Item 88 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(89, 'This is item 89', 'Item 89 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(90, 'This is item 90', 'Item 90 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(91, 'This is item 91', 'Item 91 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(92, 'This is item 92', 'Item 92 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(93, 'This is item 93', 'Item 93 description', 0, 'urgent', '2023-07-27 00:18:58', '2023-07-27 00:18:58')
(94, 'This is item 94', 'Item 94 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(95, 'This is item 95', 'Item 95 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(96, 'This is item 96', 'Item 96 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(97, 'This is item 97', 'Item 97 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(98, 'This is item 98', 'Item 98 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(99, 'This is item 99', 'Item 99 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(100, 'This is item 100', 'Item 100 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(101, 'This is item 101', 'Item 101 description', 0, 'urgent', '2023-07-27 00:18:58', '2023-07-27 00:18:58')
(102, 'This is item 102', 'Item 102 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(103, 'This is item 103', 'Item 103 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(104, 'This is item 104', 'Item 104 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(105, 'This is item 105', 'Item 105 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39'),
(106, 'This is item 106', 'Item 106 description', 0, 'kiv', '2023-07-27 00:18:39', '2023-07-27 00:18:39');

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
(1, 'K', 'kchua2@newrelic.com', NULL, '$2y$10$mZdzlkL21RJSVUWK5dguJeEQfRUmLeeTt0R1e01eD.8s1MUMMYWZ.', NULL, '2023-07-20 11:31:29', '2023-07-20 11:31:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `todos`
--
ALTER TABLE `todos`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
