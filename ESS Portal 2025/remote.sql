-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 26, 2025 at 12:43 AM
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
-- Table structure for table `remote`
--

CREATE TABLE `remote` (
  `request_id` int NOT NULL,
  `emp_id` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Draft','Pending','Approved','Rejected') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `remote`
--

INSERT INTO `remote` (`request_id`, `emp_id`, `start_date`, `end_date`, `reason`, `created_at`, `updated_at`, `status`) VALUES
(7, '01-004', '2025-06-10', '2025-06-12', 'Test remotee', '2025-06-10 07:02:43', '2025-06-13 00:41:55', 'Approved'),
(20, '01-003', '2025-06-13', '2025-06-13', 'test', '2025-06-13 03:32:21', '2025-06-13 03:32:21', 'Pending'),
(23, '01-004', '2025-06-13', '2025-06-13', 'Testing notifi', '2025-06-13 06:52:18', '2025-06-13 06:52:18', 'Pending'),
(25, '01-004', '2025-06-14', '2025-06-18', 'Testingers', '2025-06-14 07:34:11', '2025-06-19 02:29:35', 'Approved'),
(29, '01-001', '2025-06-19', '2025-06-25', 'REMOTE TEST', '2025-06-19 02:27:06', '2025-06-19 02:27:06', 'Pending'),
(32, '01-005', '2025-06-19', '2025-06-19', 'Test', '2025-06-19 03:03:39', '2025-06-19 03:03:39', 'Pending'),
(33, '01-004', '2025-06-19', '2025-09-21', 'TEST EDIT', '2025-06-19 03:17:21', '2025-06-24 03:07:01', 'Draft'),
(42, '01-125', '2025-06-26', '2025-06-26', 'Working outside', '2025-06-24 10:50:56', '2025-06-24 10:50:56', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `remote`
--
ALTER TABLE `remote`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `employee_id` (`emp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
