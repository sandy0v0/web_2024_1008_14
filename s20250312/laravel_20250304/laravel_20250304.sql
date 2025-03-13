-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-03-13 01:41:05
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `laravel_20250304`
--

-- --------------------------------------------------------

--
-- 資料表結構 `apples`
--

CREATE TABLE `apples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `cars`
--

INSERT INTO `cars` (`id`, `name`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 'car01', '0911-111-111', NULL, NULL),
(2, 'car02', '0922-222-222', NULL, NULL),
(3, 'car03', '0933-333-333', '2025-03-11 17:04:00', '2025-03-11 17:04:00'),
(4, 'car04', '0944-444-444', '2025-03-11 17:04:13', '2025-03-11 17:04:13');

-- --------------------------------------------------------

--
-- 資料表結構 `hobbies`
--

CREATE TABLE `hobbies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `hobbies`
--

INSERT INTO `hobbies` (`id`, `student_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'hobby-01', NULL, NULL),
(2, 8, 'hobby01', '2025-03-12 00:05:17', '2025-03-12 00:05:17'),
(3, 8, 'hobby02', '2025-03-12 00:05:17', '2025-03-12 00:05:17'),
(4, 6, 'hobby01', '2025-03-12 00:37:17', '2025-03-12 00:37:17'),
(5, 6, 'hobby02', '2025-03-12 00:37:17', '2025-03-12 00:37:17'),
(6, 3, 'hobby01', '2025-03-12 00:38:02', '2025-03-12 00:38:02'),
(7, 3, 'hobby02', '2025-03-12 00:38:02', '2025-03-12 00:38:02'),
(8, 3, 'hobby03', '2025-03-12 00:38:02', '2025-03-12 00:38:02'),
(16, 3, 'hobby01', '2025-03-12 00:40:55', '2025-03-12 00:40:55'),
(17, 3, 'hobby02', '2025-03-12 00:40:55', '2025-03-12 00:40:55'),
(18, 3, 'hobby04', '2025-03-12 00:40:55', '2025-03-12 00:40:55'),
(19, 1, 'hobby-02', '2025-03-12 00:41:29', '2025-03-12 00:41:29');

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_02_26_023532_create_cars_table', 1),
(2, '2025_02_26_032805_add_love_column_cars_table', 1),
(3, '2025_02_26_053359_create_students_table', 1),
(4, '2025_02_26_061800_create_sessions_table', 1),
(5, '2025_02_26_071533_create_apples_table', 1),
(6, '2025_03_11_080002_create_teachers_table', 1),
(7, '2025_02_26_023532_create_cars_table0', 2),
(8, '2025_03_12_004814_create_cars_table', 3),
(9, '2025_03_12_013323_create_phones_table', 4),
(10, '2025_03_12_052103_create_hobbies_table', 5);

-- --------------------------------------------------------

--
-- 資料表結構 `phones`
--

CREATE TABLE `phones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `phones`
--

INSERT INTO `phones` (`id`, `student_id`, `phone`, `created_at`, `updated_at`) VALUES
(2, 2, '2222-2222', NULL, NULL),
(6, 7, '7777-7777', '2025-03-12 00:04:22', '2025-03-12 00:04:22'),
(7, 8, '8888-8888', '2025-03-12 00:05:17', '2025-03-12 00:05:17'),
(8, 6, '5555-5555', '2025-03-12 00:37:17', '2025-03-12 00:37:17'),
(13, 3, '3333-3333', '2025-03-12 00:40:55', '2025-03-12 00:40:55'),
(14, 1, '1111-1111', '2025-03-12 00:41:29', '2025-03-12 00:41:29');

-- --------------------------------------------------------

--
-- 資料表結構 `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('l33Q9nGk9mAtfEFBWoh8qw4TetlajkHVf1ldydoE', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHJka3ozNzJQZktzdDJ2SUxZSU40TTBzcjZOdWpCbHlva1ZlbUhnUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9sb2NhbGhvc3Qvc3R1ZGVudHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741826134),
('OTLdhctHANklqPVsziPPx4Y25xzcAKAoX5Yib5Mt', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUZXejdlclJnbmRQSlpGdGhnT0R0YTNMS3Q2aWlYOUpqNDl3YlVvYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9sb2NhbGhvc3Qvc3R1ZGVudHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741768889);

-- --------------------------------------------------------

--
-- 資料表結構 `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `students`
--

INSERT INTO `students` (`id`, `name`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 'amy', '0911-111-111', NULL, NULL),
(2, 'bob', '0922-222-222', NULL, NULL),
(3, 'cat', '0933-333-333', '2025-03-11 16:37:08', '2025-03-11 16:38:15'),
(4, 'dog', '0944-444-444', '2025-03-11 16:39:52', '2025-03-11 19:47:58'),
(6, 'egg', '0955-555-555', '2025-03-11 19:48:24', '2025-03-11 19:49:03'),
(7, 'fox', '0977-777-777', '2025-03-11 22:08:45', '2025-03-12 00:04:22'),
(8, 'god', '0988-888-888', '2025-03-12 00:05:17', '2025-03-12 00:05:17');

-- --------------------------------------------------------

--
-- 資料表結構 `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 'teacher01', '0911-111-111', NULL, NULL),
(2, 'teacher02', '0922-222-222', NULL, NULL),
(3, 'teacher03', '0933-333-333', '2025-03-11 16:45:31', '2025-03-11 16:45:31');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `apples`
--
ALTER TABLE `apples`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `hobbies`
--
ALTER TABLE `hobbies`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- 資料表索引 `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `apples`
--
ALTER TABLE `apples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `hobbies`
--
ALTER TABLE `hobbies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `phones`
--
ALTER TABLE `phones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
