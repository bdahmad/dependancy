-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2023 at 08:17 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dependancy`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `division_id` int(11) NOT NULL,
  `district_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`district_id`, `district_name`, `division_id`, `district_status`, `created_at`, `updated_at`) VALUES
(1, 'Barishal', 1, 1, '2023-12-27 00:37:47', NULL),
(2, 'Patuakhali', 1, 1, '2023-12-27 00:38:18', NULL),
(3, 'Bhola', 1, 1, '2023-12-27 00:38:25', NULL),
(4, 'Pirojpur', 1, 1, '2023-12-27 00:38:30', NULL),
(5, 'Barguna', 1, 1, '2023-12-27 00:38:37', NULL),
(6, 'Jhalokati', 1, 1, '2023-12-27 00:38:44', NULL),
(7, 'Chittagong', 2, 1, '2023-12-27 00:39:20', NULL),
(8, 'Cox\'s Bazar', 2, 1, '2023-12-27 00:39:35', NULL),
(9, 'Rangamati', 2, 1, '2023-12-27 00:39:43', NULL),
(10, 'Bandarban', 2, 1, '2023-12-27 00:39:49', NULL),
(11, 'Khagrachhari', 2, 1, '2023-12-27 00:39:54', NULL),
(12, 'Feni', 2, 1, '2023-12-27 00:40:01', NULL),
(13, 'Lakshmipur', 2, 1, '2023-12-27 00:40:06', NULL),
(14, 'Comilla', 2, 1, '2023-12-27 00:40:12', NULL),
(15, 'Noakhali', 2, 1, '2023-12-27 00:40:17', NULL),
(16, 'Brahmanbaria', 2, 1, '2023-12-27 00:40:24', NULL),
(17, 'Chandpur', 2, 1, '2023-12-27 00:40:29', NULL),
(18, 'Dhaka', 3, 1, '2023-12-27 00:41:04', NULL),
(19, 'Gazipur', 3, 1, '2023-12-27 00:41:10', NULL),
(20, 'Narsingdi', 3, 1, '2023-12-27 00:41:15', NULL),
(21, 'Manikganj', 3, 1, '2023-12-27 00:41:20', NULL),
(22, 'Munshiganj', 3, 1, '2023-12-27 00:41:28', NULL),
(23, 'Narayanganj', 3, 1, '2023-12-27 00:41:33', NULL),
(24, 'Mymensingh', 3, 1, '2023-12-27 00:41:38', NULL),
(25, 'Sherpur', 3, 1, '2023-12-27 00:41:43', NULL),
(26, 'Jamalpur', 3, 1, '2023-12-27 00:42:13', NULL),
(27, 'Netrokona', 3, 1, '2023-12-27 00:42:19', NULL),
(28, 'Kishoreganj', 3, 1, '2023-12-27 00:42:25', NULL),
(29, 'Tangail', 3, 1, '2023-12-27 00:42:31', NULL),
(30, 'Faridpur', 3, 1, '2023-12-27 00:42:36', NULL),
(31, 'Maradipur', 3, 1, '2023-12-27 00:42:43', NULL),
(32, 'Shariatpur', 3, 1, '2023-12-27 00:42:49', NULL),
(33, 'Rajbari', 3, 1, '2023-12-27 00:42:55', NULL),
(34, 'Gopalganj', 3, 1, '2023-12-27 00:43:00', NULL),
(35, 'Khulna', 4, 1, '2023-12-27 00:45:55', NULL),
(36, 'Jhenaidah', 4, 1, '2023-12-27 00:45:59', NULL),
(37, 'Magura', 4, 1, '2023-12-27 00:46:05', NULL),
(38, 'Kushtia', 4, 1, '2023-12-27 00:46:12', NULL),
(39, 'Jessore', 4, 1, '2023-12-27 00:46:18', NULL),
(40, 'Bagerhat', 4, 1, '2023-12-27 00:46:23', NULL),
(41, 'Chuadanga', 4, 1, '2023-12-27 00:46:28', NULL),
(42, 'Meherpur', 4, 1, '2023-12-27 00:46:33', NULL),
(43, 'Narail', 4, 1, '2023-12-27 00:46:39', NULL),
(44, 'Satkhira', 4, 1, '2023-12-27 00:46:43', NULL),
(45, 'Rajshahi', 5, 1, '2023-12-27 00:47:10', NULL),
(46, 'Joypurhat', 5, 1, '2023-12-27 00:48:54', NULL),
(47, 'Naogaon', 5, 1, '2023-12-27 00:49:00', NULL),
(48, 'Nawabganj', 5, 1, '2023-12-27 00:49:04', NULL),
(49, 'Natore', 5, 1, '2023-12-27 00:49:09', NULL),
(50, 'Pabna', 5, 1, '2023-12-27 00:49:15', NULL),
(51, 'Bogra', 5, 1, '2023-12-27 00:49:20', NULL),
(52, 'Sirajganj', 5, 1, '2023-12-27 00:49:25', NULL),
(53, 'Kurigram', 6, 1, '2023-12-27 00:50:15', NULL),
(54, 'Gaibandha', 6, 1, '2023-12-27 00:50:21', NULL),
(55, 'Thakurgaon', 6, 1, '2023-12-27 00:50:26', NULL),
(56, 'Dinajpur', 6, 1, '2023-12-27 00:50:32', NULL),
(57, 'Nilphamari', 6, 1, '2023-12-27 00:50:37', NULL),
(58, 'Panchagarh', 6, 1, '2023-12-27 00:50:43', NULL),
(59, 'Rangpur', 6, 1, '2023-12-27 00:50:48', NULL),
(60, 'Lalmonirhat', 6, 1, '2023-12-27 00:50:53', NULL),
(61, 'Ishwarganj', 7, 1, '2023-12-27 00:52:58', NULL),
(62, 'Gaffargaon', 7, 1, '2023-12-27 00:53:05', NULL),
(63, 'Gauripur', 7, 1, '2023-12-27 00:53:11', NULL),
(64, 'Trishal', 7, 1, '2023-12-27 00:53:16', NULL),
(65, 'Dhobaura', 7, 1, '2023-12-27 00:53:20', NULL),
(66, 'Nandail', 7, 1, '2023-12-27 00:53:25', NULL),
(67, 'Phulpur', 7, 1, '2023-12-27 00:53:31', NULL),
(68, 'Fulbaria', 7, 1, '2023-12-27 00:53:37', NULL),
(69, 'Bhaluka', 7, 1, '2023-12-27 00:53:42', NULL),
(70, 'Mymensingh Sadar', 7, 1, '2023-12-27 00:53:49', NULL),
(71, 'Muktagachha', 7, 1, '2023-12-27 00:53:56', NULL),
(72, 'Haluaghat', 7, 1, '2023-12-27 00:54:02', NULL),
(73, 'Maulvibazar', 8, 1, '2023-12-27 00:55:28', NULL),
(74, 'Habiganj', 8, 1, '2023-12-27 00:55:33', NULL),
(75, 'Sylhet', 8, 1, '2023-12-27 00:55:39', NULL),
(76, 'Sunamganj', 8, 1, '2023-12-27 00:55:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) NOT NULL,
  `division_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`division_id`, `division_name`, `division_status`, `created_at`, `updated_at`) VALUES
(1, 'Barishal', 1, '2023-12-27 00:20:14', NULL),
(2, 'Chattogram', 1, '2023-12-27 00:20:32', NULL),
(3, 'Dhaka', 1, '2023-12-27 00:20:37', NULL),
(4, 'Khulna', 1, '2023-12-27 00:20:43', NULL),
(5, 'Rajshahi', 1, '2023-12-27 00:20:49', NULL),
(6, 'Rangpur', 1, '2023-12-27 00:20:57', NULL),
(7, 'Mymensingh', 1, '2023-12-27 00:21:03', NULL),
(8, 'Sylhet', 1, '2023-12-27 00:21:08', NULL);

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
(5, '2023_12_27_060636_create_divisions_table', 1),
(6, '2023_12_27_062640_create_districts_table', 2);

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
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`division_id`);

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
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `district_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `division_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
