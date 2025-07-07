-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 21, 2025 at 03:25 AM
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
-- Table structure for table `HR_Evaluations`
--

CREATE TABLE `HR_Evaluations` (
  `ID` bigint NOT NULL,
  `Evaluation_ID` varchar(10) NOT NULL,
  `Evaluation_Description` text,
  `ValidityStart` date DEFAULT NULL,
  `ValidityEnd` date DEFAULT NULL,
  `Evaluator_Instructions` text,
  `Evaluatee` text,
  `Evaluator` text,
  `PassingMark` decimal(18,2) DEFAULT NULL,
  `isArchived` tinyint(1) DEFAULT NULL,
  `isExecuted` tinyint(1) DEFAULT NULL,
  `RG_File_Type` varchar(255) DEFAULT NULL,
  `RG_File_Data` longblob,
  `RG_File_Size` varchar(20) DEFAULT NULL,
  `AG_File_Type` varchar(255) DEFAULT NULL,
  `AG_File_Data` longblob,
  `AG_File_Size` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `HR_Evaluations`
--


-- --------------------------------------------------------

--
-- Table structure for table `HR_Evaluations_ResultAction`
--

CREATE TABLE `HR_Evaluations_ResultAction` (
  `ID` bigint NOT NULL,
  `Evaluation_ID` varchar(10) NOT NULL,
  `Evaluatee_ID` varchar(10) NOT NULL,
  `AverageRating` decimal(18,2) DEFAULT NULL,
  `Action` varchar(25) DEFAULT NULL,
  `isFinalized` tinyint(1) DEFAULT NULL,
  `Created_Date` datetime DEFAULT NULL,
  `CreateByID` varchar(7) DEFAULT NULL,
  `CreatedByName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `HR_Evaluations_ResultAction`

-- --------------------------------------------------------

--
-- Table structure for table `HR_Evaluation_Questions`
--

CREATE TABLE `HR_Evaluation_Questions` (
  `ID` bigint NOT NULL,
  `Evaluation_ID` varchar(10) NOT NULL,
  `Question_ID` varchar(11) NOT NULL,
  `Question_Type` char(1) DEFAULT NULL,
  `Description` text,
  `AnswerType` char(1) DEFAULT NULL,
  `AnswerOption1` varchar(20) DEFAULT NULL,
  `AnswerOption2` varchar(20) DEFAULT NULL,
  `AnswerOption3` varchar(20) DEFAULT NULL,
  `AnswerOption4` varchar(20) DEFAULT NULL,
  `AnswerOption5` varchar(20) DEFAULT NULL,
  `AnswerOption6` varchar(20) DEFAULT NULL,
  `AnswerOption7` varchar(20) DEFAULT NULL,
  `AnswerOption8` varchar(20) DEFAULT NULL,
  `AnswerOption9` varchar(20) DEFAULT NULL,
  `AnswerOption10` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `HR_Evaluation_Questions`
--

-- --------------------------------------------------------

--
-- Table structure for table `HR_Evaluation_Tandem`
--

CREATE TABLE `HR_Evaluation_Tandem` (
  `ID` bigint NOT NULL,
  `Evaluation_ID` varchar(10) NOT NULL,
  `Evaluatee` varchar(10) NOT NULL,
  `Evaluator` varchar(10) NOT NULL,
  `AppraisalType` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `HR_Evaluation_Tandem`
--

-- --------------------------------------------------------

--
-- Table structure for table `HR_Evaluator`
--

CREATE TABLE `HR_Evaluator` (
  `ID` bigint NOT NULL,
  `Evaluation_ID` varchar(10) NOT NULL,
  `Evaluatee_ID` varchar(10) NOT NULL,
  `Evaluator_ID` varchar(10) NOT NULL,
  `Evaluation_Date` datetime DEFAULT NULL,
  `Evaluatee_JobTitle` varchar(100) DEFAULT NULL,
  `Evaluatee_Branch` varchar(10) DEFAULT NULL,
  `Evaluator_Job_Title` varchar(100) DEFAULT NULL,
  `Evaluator_Branch` varchar(10) DEFAULT NULL,
  `Appraisal_Type` varchar(50) DEFAULT NULL,
  `KeyObjectives_1` text,
  `KeyObjectives_2` text,
  `KeyObjectives_3` text,
  `KeyObjectives_4` text,
  `KeyObjectives_5` text,
  `KeyObjectives_6` text,
  `KeyObjectives_7` text,
  `KeyObjectives_8` text,
  `KeyObjectives_9` text,
  `KeyObjectives_10` text,
  `EvaluatorComment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `HR_Evaluator`
--


-- --------------------------------------------------------

--
-- Table structure for table `HR_Evaluator_Answers`
--

CREATE TABLE `HR_Evaluator_Answers` (
  `ID` bigint NOT NULL,
  `Evaluation_ID` varchar(10) NOT NULL,
  `Evaluatee_ID` varchar(10) NOT NULL,
  `Evaluator_ID` varchar(10) NOT NULL,
  `Question_ID` varchar(11) NOT NULL,
  `Answer` int DEFAULT NULL,
  `Remarks` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `HR_Evaluator_Answers`
--

-- --------------------------------------------------------

--
-- Table structure for table `HR_Payslip`
--

CREATE TABLE `HR_Payslip` (
  `TransID` bigint NOT NULL,
  `IDNo` varchar(7) DEFAULT NULL,
  `PayDate` varchar(12) DEFAULT NULL,
  `File_Type` varchar(255) DEFAULT NULL,
  `File_Data` longblob,
  `File_Size` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_details`
--
-- --------------------------------------------------------

--
-- Table structure for table `leave_head`
--

CREATE TABLE `leave_head` (
  `request_id` int NOT NULL,
  `emp_id` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `leave_type` enum('Sick','Vacation','Emergency','Others') NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `status` enum('Draft','Pending','Approved','Rejected') DEFAULT NULL,
  `eformno` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_head`
--


-- --------------------------------------------------------

--
-- Table structure for table `overtime`
--

CREATE TABLE `overtime` (
  `request_id` int NOT NULL,
  `emp_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ot_date` date NOT NULL,
  `start_time` time NOT NULL,
  `st_overMidnight` tinyint(1) NOT NULL,
  `end_time` time NOT NULL,
  `ed_overMidnight` tinyint(1) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Draft','Pending','Approved','Rejected') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `overtime`
--



-- --------------------------------------------------------

--
-- Table structure for table `remote`
--

CREATE TABLE `remote` (
  `request_id` int NOT NULL,
  `emp_id` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Draft','Pending','Approved','Rejected') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `remote`
--



-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `request_id` int NOT NULL,
  `emp_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `request_type` enum('overtime','remote','leave') NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--



-- --------------------------------------------------------

--
-- Table structure for table `time_logs`
--

CREATE TABLE `time_logs` (
  `log_id` int NOT NULL,
  `emp_id` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `log_type` enum('timeIn','timeOut') NOT NULL,
  `log_time` time NOT NULL,
  `log_pic` longblob NOT NULL,
  `log_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--

--
-- Table structure for table `user_access_module`
--

CREATE TABLE `user_access_module` (
  `id` int NOT NULL,
  `userid` int NOT NULL,
  `module_id` int NOT NULL,
  `access_level` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_head`
--

CREATE TABLE `user_head` (
  `userid` int NOT NULL,
  `emp_id` varchar(100) NOT NULL,
  `emp_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `emp_position` varchar(100) NOT NULL,
  `user_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_type` varchar(25) NOT NULL,
  `emp_supervisor_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `emp_devicehash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `license_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emp_mobileno` varchar(25) NOT NULL,
  `profile_pic` longblob,
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `modified_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_head`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_login_history`
--

CREATE TABLE `user_login_history` (
  `id` int NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `log_description` varchar(255) NOT NULL,
  `log_date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_login_history`
--




-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int NOT NULL,
  `userid` int NOT NULL,
  `device_hash` varchar(255) NOT NULL,
  `usertoken` varchar(255) NOT NULL,
  `issued_at` date NOT NULL,
  `expires_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_token`
--



--
-- Indexes for dumped tables
--

--
-- Indexes for table `HR_Evaluations`
--
ALTER TABLE `HR_Evaluations`
  ADD PRIMARY KEY (`Evaluation_ID`);

--
-- Indexes for table `HR_Evaluations_ResultAction`
--
ALTER TABLE `HR_Evaluations_ResultAction`
  ADD PRIMARY KEY (`Evaluation_ID`,`Evaluatee_ID`);

--
-- Indexes for table `HR_Evaluation_Questions`
--
ALTER TABLE `HR_Evaluation_Questions`
  ADD PRIMARY KEY (`Evaluation_ID`,`Question_ID`);

--
-- Indexes for table `HR_Evaluation_Tandem`
--
ALTER TABLE `HR_Evaluation_Tandem`
  ADD PRIMARY KEY (`Evaluation_ID`,`Evaluatee`,`Evaluator`);

--
-- Indexes for table `HR_Evaluator`
--
ALTER TABLE `HR_Evaluator`
  ADD PRIMARY KEY (`Evaluation_ID`,`Evaluatee_ID`,`Evaluator_ID`);

--
-- Indexes for table `HR_Evaluator_Answers`
--
ALTER TABLE `HR_Evaluator_Answers`
  ADD PRIMARY KEY (`Evaluation_ID`,`Evaluatee_ID`,`Evaluator_ID`,`Question_ID`);

--
-- Indexes for table `HR_Payslip`
--
ALTER TABLE `HR_Payslip`
  ADD PRIMARY KEY (`TransID`),
  ADD KEY `IDNo` (`IDNo`);

--
-- Indexes for table `leave_details`
--
ALTER TABLE `leave_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_request_id` (`leave_request_id`);

--
-- Indexes for table `leave_head`
--
ALTER TABLE `leave_head`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `employee_id` (`emp_id`);

--
-- Indexes for table `overtime`
--
ALTER TABLE `overtime`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `employee_id` (`emp_id`);

--
-- Indexes for table `remote`
--
ALTER TABLE `remote`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `employee_id` (`emp_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `employee_id` (`emp_id`);

--
-- Indexes for table `time_logs`
--
ALTER TABLE `time_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `employee_id` (`emp_id`);

--
-- Indexes for table `user_head`
--
ALTER TABLE `user_head`
  ADD PRIMARY KEY (`userid`,`emp_id`);

--
-- Indexes for table `user_login_history`
--
ALTER TABLE `user_login_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leave_details`
--
ALTER TABLE `leave_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `request_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `time_logs`
--
ALTER TABLE `time_logs`
  MODIFY `log_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_head`
--
ALTER TABLE `user_head`
  MODIFY `userid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_login_history`
--
ALTER TABLE `user_login_history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
