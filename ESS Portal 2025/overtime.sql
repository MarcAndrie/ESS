-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 26, 2025 at 12:45 AM
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
-- Database: `ess_comp001-3530303073c2`
--

-- --------------------------------------------------------

--
-- Table structure for table `overtime`
--

CREATE TABLE `overtime` (
  `request_id` int NOT NULL,
  `emp_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ot_date` date NOT NULL,
  `start_time` time NOT NULL,
  `st_overMidnight` tinyint(1) NOT NULL,
  `end_time` time NOT NULL,
  `ed_overMidnight` tinyint(1) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Draft','Pending','Approved','Rejected') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `overtime`
--

INSERT INTO `overtime` (`request_id`, `emp_id`, `ot_date`, `start_time`, `st_overMidnight`, `end_time`, `ed_overMidnight`, `reason`, `created_at`, `updated_at`, `status`) VALUES
(2, '01-004', '2025-06-09', '11:49:44', 1, '21:00:44', 0, 'Test Overtime 1', '2025-06-10 03:50:02', '2025-06-19 00:41:09', 'Approved'),
(4, '01-004', '2025-08-09', '13:34:01', 0, '21:34:01', 1, 'Test 3', '2025-06-10 05:34:13', '2025-06-14 01:59:32', 'Approved'),
(5, '01-004', '2025-06-10', '14:02:03', 0, '18:02:03', 0, 'Test', '2025-06-10 06:02:11', '2025-06-14 01:59:37', 'Rejected'),
(6, '01-003', '2025-06-09', '14:20:03', 1, '19:20:03', 1, 'Test ', '2025-06-10 06:20:19', '2025-06-13 05:50:21', 'Draft'),
(24, '01-004', '2025-06-14', '10:54:52', 0, '10:54:52', 1, 'Testing', '2025-06-14 02:54:59', '2025-06-19 02:56:30', 'Approved'),
(28, '01-004', '2025-06-19', '08:50:22', 0, '19:00:22', 1, 'MASTEROVERTIME TEST', '2025-06-19 00:50:45', '2025-06-19 02:50:54', 'Pending'),
(38, '01-004', '2025-06-20', '16:05:49', 0, '18:05:49', 1, 'Test', '2025-06-20 08:05:54', '2025-06-20 08:11:24', 'Pending'),
(39, '01-004', '2025-06-20', '08:31:00', 0, '23:33:00', 1, 'testing', '2025-06-21 00:31:10', '2025-06-21 01:25:19', 'Draft'),
(41, '01-125', '2025-06-24', '18:50:02', 0, '19:50:00', 0, 'Work is life', '2025-06-24 10:50:18', '2025-06-24 10:50:18', 'Draft');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `overtime`
--
ALTER TABLE `overtime`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `employee_id` (`emp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
