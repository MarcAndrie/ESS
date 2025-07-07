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
-- Database: `ess_comp0001`
--

-- --------------------------------------------------------

--
-- Table structure for table `leave_head`
--

CREATE TABLE `leave_head` (
  `request_id` int NOT NULL,
  `emp_id` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `leave_type` enum('Sick','Vacation','Emergency','Others') NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `status` enum('Draft','Pending','Approved','Rejected') DEFAULT NULL,
  `eformno` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `leave_head`
--

INSERT INTO `leave_head` (`request_id`, `emp_id`, `leave_type`, `start_date`, `end_date`, `reason`, `status`, `eformno`, `created_at`, `updated_at`) VALUES
(15, '01-003', 'Vacation', '2025-06-13', '2025-06-16', 'Test', 'Draft', 20250001, '2025-06-13 01:57:30', '2025-06-13 02:37:21'),
(17, '01-003', 'Emergency', '2025-06-13', '2025-06-15', 'TEST POST', 'Pending', 20250002, '2025-06-13 03:03:55', '2025-06-13 03:08:19'),
(19, '01-004', 'Sick', '2025-06-13', '2025-06-14', 'TEST FOR SUPERVISOR', 'Approved', 20250003, '2025-06-13 03:19:38', '2025-06-13 03:24:25'),
(21, '01-003', 'Vacation', '2025-06-13', '2025-06-13', 'Testing', 'Draft', 20250004, '2025-06-13 05:54:28', '2025-06-13 05:54:28'),
(22, '01-004', 'Vacation', '2025-06-13', '2025-06-17', 'Trip to California st. Imus Cavite', 'Rejected', 20250005, '2025-06-13 06:07:21', '2025-06-19 07:04:32'),
(26, '01-004', 'Emergency', '2025-06-14', '2025-06-18', 'Leave Test', 'Approved', 20250006, '2025-06-14 07:34:52', '2025-06-19 07:04:29'),
(34, '01-004', 'Vacation', '2025-06-19', '2025-06-22', 'TEST', 'Draft', 20250007, '2025-06-19 05:41:21', '2025-06-19 05:41:21'),
(35, '01-004', 'Vacation', '2025-06-19', '2025-06-22', 'TEST', 'Draft', 20250008, '2025-06-19 05:47:07', '2025-06-19 05:47:07'),
(37, '01-004', 'Others', '2025-06-19', '2025-06-22', 'TEST DELETE', 'Pending', 20250010, '2025-06-19 06:12:59', '2025-06-23 02:59:31'),
(40, '01-004', 'Emergency', '2025-06-21', '2025-06-21', 'test', 'Pending', 20250011, '2025-06-21 01:50:04', '2025-06-21 03:33:13'),
(43, '01-125', 'Vacation', '2025-07-02', '2025-07-03', 'Vacation is lifest', 'Draft', 20250012, '2025-06-24 10:51:34', '2025-06-24 10:51:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leave_head`
--
ALTER TABLE `leave_head`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `employee_id` (`emp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
