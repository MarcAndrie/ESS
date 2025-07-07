-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 26, 2025 at 12:44 AM
-- Server version: 8.0.42-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ess_comp0001`
--

-- --------------------------------------------------------

--
-- Table structure for table `leave_details`
--

CREATE TABLE `leave_details` (
  `id` int NOT NULL,
  `leave_request_id` int NOT NULL,
  `eformno` int NOT NULL,
  `leave_date` date DEFAULT NULL,
  `leave_value` decimal(2,1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `leave_value_approved` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `leave_details`
--

INSERT INTO `leave_details` (`id`, `leave_request_id`, `eformno`, `leave_date`, `leave_value`, `created_at`, `updated_at`, `leave_value_approved`) VALUES
(35, 15, 20250001, '2025-06-13', 1.0, '2025-06-13 02:37:21', '2025-06-13 02:37:21', 0.0),
(36, 15, 20250001, '2025-06-14', 0.0, '2025-06-13 02:37:21', '2025-06-13 02:37:21', 0.0),
(37, 15, 20250001, '2025-06-15', 0.0, '2025-06-13 02:37:21', '2025-06-13 02:37:21', 0.0),
(38, 15, 20250001, '2025-06-16', 0.5, '2025-06-13 02:37:21', '2025-06-13 02:37:21', 0.0),
(45, 17, 20250002, '2025-06-13', 1.0, '2025-06-13 03:06:08', '2025-06-13 03:06:08', 0.0),
(46, 17, 20250002, '2025-06-14', 0.5, '2025-06-13 03:06:08', '2025-06-13 03:06:08', 0.0),
(47, 17, 20250002, '2025-06-15', 1.0, '2025-06-13 03:06:08', '2025-06-13 03:06:08', 0.0),
(51, 19, 20250003, '2025-06-13', 1.0, '2025-06-13 03:19:39', '2025-06-13 03:22:31', 1.0),
(52, 19, 20250003, '2025-06-14', 0.5, '2025-06-13 03:19:39', '2025-06-13 03:23:57', 0.0),
(53, 21, 20250004, '2025-06-13', 1.0, '2025-06-13 05:54:28', '2025-06-13 05:54:28', 0.0),
(54, 22, 20250005, '2025-06-13', 1.0, '2025-06-13 06:07:22', '2025-06-19 07:00:44', 0.0),
(55, 22, 20250005, '2025-06-14', 0.5, '2025-06-13 06:07:22', '2025-06-19 07:00:44', 0.5),
(56, 22, 20250005, '2025-06-15', 0.0, '2025-06-13 06:07:22', '2025-06-13 06:07:22', 0.0),
(57, 22, 20250005, '2025-06-16', 1.0, '2025-06-13 06:07:22', '2025-06-19 07:00:44', 1.0),
(58, 22, 20250005, '2025-06-17', 1.0, '2025-06-13 06:07:22', '2025-06-19 07:00:44', 0.0),
(59, 26, 20250006, '2025-06-14', 1.0, '2025-06-14 07:34:53', '2025-06-19 07:02:07', 1.0),
(60, 26, 20250006, '2025-06-15', 0.0, '2025-06-14 07:34:53', '2025-06-14 07:34:53', 0.0),
(61, 26, 20250006, '2025-06-16', 0.0, '2025-06-14 07:34:53', '2025-06-14 07:34:53', 0.0),
(62, 26, 20250006, '2025-06-17', 0.5, '2025-06-14 07:34:53', '2025-06-14 07:34:53', 0.0),
(63, 26, 20250006, '2025-06-18', 1.0, '2025-06-14 07:34:53', '2025-06-19 07:02:07', 1.0),
(77, 37, 20250010, '2025-06-19', 1.0, '2025-06-19 06:12:59', '2025-06-19 06:12:59', 0.0),
(78, 37, 20250010, '2025-06-20', 1.0, '2025-06-19 06:12:59', '2025-06-19 06:12:59', 0.0),
(79, 37, 20250010, '2025-06-21', 1.0, '2025-06-19 06:12:59', '2025-06-19 06:12:59', 0.0),
(80, 37, 20250010, '2025-06-22', 1.0, '2025-06-19 06:12:59', '2025-06-19 06:12:59', 0.0),
(81, 40, 20250011, '2025-06-21', 0.0, '2025-06-21 01:50:04', '2025-06-21 01:50:04', 0.0),
(84, 43, 20250012, '2025-07-02', 1.0, '2025-06-24 10:51:53', '2025-06-24 10:51:53', 0.0),
(85, 43, 20250012, '2025-07-03', 1.0, '2025-06-24 10:51:53', '2025-06-24 10:51:53', 0.0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leave_details`
--
ALTER TABLE `leave_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_request_id` (`leave_request_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leave_details`
--
ALTER TABLE `leave_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
