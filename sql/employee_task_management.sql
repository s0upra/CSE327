-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2024 at 07:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_task_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_manager`
--

CREATE TABLE `admin_manager` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_phone` varchar(15) NOT NULL,
  `admin_gender` varchar(10) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_manager`
--

INSERT INTO `admin_manager` (`admin_id`, `admin_name`, `admin_email`, `admin_phone`, `admin_gender`, `admin_pass`) VALUES
(1, 'ABC', 'abc@gmail.com', '9759843243', 'Male', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu'),
(2, 'XYZ', 'xyz@gmail.com', '8754092145', 'Male', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu'),
(3, 'XXX', 'xxx@gmail.com', '6704532161', 'Female', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`, `admin_id`) VALUES
(1, 'Accounts', 1),
(2, 'Sales', 2),
(3, 'HR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_email` varchar(50) NOT NULL,
  `emp_phone` varchar(15) NOT NULL,
  `emp_gender` varchar(10) NOT NULL,
  `emp_pass` varchar(255) NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `bank_account_number` varchar(20) DEFAULT NULL,
  `paid_for_month` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_email`, `emp_phone`, `emp_gender`, `emp_pass`, `dept_id`, `bank_account_number`, `paid_for_month`) VALUES
(1, 'John Doe', 'john.doe1@example.com', '1234567890', 'Male', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 1, '123456789012', 0),
(2, 'Jane Smith', 'jane.smith2@example.com', '2345678901', 'Female', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 2, '234567890123', 0),
(3, 'Alice Johnson', 'alice.johnson3@example.com', '3456789012', 'Female', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 3, '345678901234', 1),
(4, 'Bob Brown', 'bob.brown4@example.com', '4567890123', 'Male', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 1, '456789012345', 1),
(5, 'Emily Davis', 'emily.davis5@example.com', '5678901234', 'Female', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 2, '567890123456', 0),
(6, 'Michael Wilson', 'michael.wilson6@example.com', '6789012345', 'Male', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 3, '678901234567', 1),
(7, 'Sarah White', 'sarah.white7@example.com', '7890123456', 'Female', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 1, '789012345678', 0),
(8, 'David Hall', 'david.hall8@example.com', '8901234567', 'Male', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 2, '890123456789', 1),
(9, 'Laura Clark', 'laura.clark9@example.com', '9012345678', 'Female', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 3, '901234567890', 1),
(10, 'James Lewis', 'james.lewis10@example.com', '1122334455', 'Male', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 1, '112233445566', 0),
(11, 'Emma Young', 'emma.young11@example.com', '2233445566', 'Female', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 2, '223344556677', 1),
(12, 'Daniel King', 'daniel.king12@example.com', '3344556677', 'Male', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 3, '334455667788', 0),
(13, 'Sophia Scott', 'sophia.scott13@example.com', '4455667788', 'Female', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 1, '445566778899', 1),
(14, 'Andrew Wright', 'andrew.wright14@example.com', '5566778899', 'Male', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 2, '556677889900', 1),
(15, 'Olivia Lopez', 'olivia.lopez15@example.com', '6677889900', 'Female', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 3, '667788990011', 0),
(16, 'Ethan Hill', 'ethan.hill16@example.com', '7788990011', 'Male', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 1, '778899001122', 1),
(17, 'Chloe Green', 'chloe.green17@example.com', '8899001122', 'Female', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 2, '889900112233', 1),
(18, 'Ryan Baker', 'ryan.baker18@example.com', '9900112233', 'Male', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 3, '990011223344', 0),
(19, 'Lily Adams', 'lily.adams19@example.com', '0011223344', 'Female', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 1, '001122334455', 1),
(20, 'Noah Perez', 'noah.perez20@example.com', '1234506789', 'Male', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 2, '123450678901', 0),
(21, 'Mia Nelson', 'mia.nelson21@example.com', '2345607890', 'Female', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 3, '234560789012', 0),
(22, 'Lucas Carter', 'lucas.carter22@example.com', '3456708901', 'Male', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 1, '345670890123', 1),
(23, 'Ava Mitchell', 'ava.mitchell23@example.com', '4567809012', 'Female', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 2, '456780901234', 1),
(24, 'Jackson Martinez', 'jackson.martinez24@example.com', '5678901234', 'Male', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 3, '567890123456', 0),
(25, 'Ella Roberts', 'ella.roberts25@example.com', '6789012345', 'Female', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 1, '678901234567', 1),
(26, 'William Moore', 'william.moore26@example.com', '7890123456', 'Male', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 2, '789012345678', 0),
(27, 'Grace Evans', 'grace.evans27@example.com', '8901234567', 'Female', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 3, '890123456789', 1),
(28, 'Henry Turner', 'henry.turner28@example.com', '9012345678', 'Male', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 1, '901234567890', 0),
(29, 'Zoe Parker', 'zoe.parker29@example.com', '1122334455', 'Female', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 2, '112233445566', 1),
(30, 'Matthew Stewart', 'matthew.stewart30@example.com', '2233445566', 'Male', '$2y$10$JqQATS3B4R4y3hFLDx8Lkuz01WlZ573ZJeC/pbLNSXXjeEIMGETbu', 3, '223344556677', 1);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `task_id` varchar(20) NOT NULL,
  `task_title` varchar(200) NOT NULL,
  `task_desc` varchar(255) DEFAULT NULL,
  `task_priority` varchar(30) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `end_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`task_id`, `task_title`, `task_desc`, `task_priority`, `start_date`, `end_date`) VALUES
('T001', 'Database Optimization', 'Optimize the performance of employee database queries.', 'High', '2024-11-29 13:41:31', NULL),
('T002', 'UI Design Update', 'Revamp the user interface for the company dashboard.', 'Medium', '2024-11-29 13:41:31', NULL),
('T003', 'Monthly Report', 'Prepare and submit the monthly financial report.', 'High', '2024-11-29 13:41:31', NULL),
('T004', 'Data Backup', 'Ensure all systems are backed up to the cloud.', 'Low', '2024-11-29 13:41:31', NULL),
('T005', 'Network Audit', 'Conduct a security audit of the office network.', 'High', '2024-11-29 13:41:31', NULL),
('T006', 'Training Session', 'Organize a training session on cybersecurity best practices.', 'Medium', '2024-11-29 13:41:31', NULL),
('T007', 'Code Review', 'Review the new features added by the development team.', 'High', '2024-11-29 13:41:31', NULL),
('T008', 'Client Onboarding', 'Assist with onboarding new clients to the platform.', 'Medium', '2024-11-29 13:41:31', NULL),
('T009', 'Marketing Campaign', 'Develop a marketing strategy for the new product launch.', 'Medium', '2024-11-29 13:41:31', NULL),
('T010', 'System Upgrade', 'Upgrade the company’s operating systems to the latest version.', 'High', '2024-11-29 13:41:31', NULL),
('T011', 'Customer Feedback Analysis', 'Analyze customer feedback to identify improvement areas.', 'Low', '2024-11-29 13:41:31', NULL),
('T012', 'Product Prototype Testing', 'Test the prototype of the upcoming product.', 'Medium', '2024-11-29 13:41:31', NULL),
('T013', 'Server Maintenance', 'Perform routine maintenance on company servers.', 'High', '2024-11-29 13:41:31', NULL),
('T014', 'Policy Update', 'Update the company HR policies to comply with new regulations.', 'Medium', '2024-11-29 13:41:31', NULL),
('T015', 'SEO Optimization', 'Optimize the company website for better search engine rankings.', 'Medium', '2024-11-29 13:41:31', NULL),
('T016', 'Bug Fixing', 'Resolve critical bugs reported in the software.', 'High', '2024-11-29 13:41:31', NULL),
('T017', 'Social Media Engagement', 'Increase engagement on the company’s social media platforms.', 'Low', '2024-11-29 13:41:31', NULL),
('T018', 'Inventory Check', 'Audit the inventory to ensure accurate records.', 'Medium', '2024-11-29 13:41:31', NULL),
('T019', 'Meeting Preparation', 'Prepare the agenda and documents for the quarterly meeting.', 'Medium', '2024-11-29 13:41:31', NULL),
('T020', 'User Feedback Implementation', 'Incorporate user suggestions into the product design.', 'High', '2024-11-29 13:41:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_status`
--

CREATE TABLE `task_status` (
  `status_id` int(11) NOT NULL,
  `task_id` varchar(20) NOT NULL,
  `task_status` varchar(20) DEFAULT 'Not Started',
  `task_percentage` int(11) DEFAULT 0,
  `updated_info` varchar(255) DEFAULT '',
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `emp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_manager`
--
ALTER TABLE `admin_manager`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_name` (`admin_name`),
  ADD UNIQUE KEY `admin_email` (`admin_email`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`),
  ADD UNIQUE KEY `dept_name` (`dept_name`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `emp_email` (`emp_email`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `task_status`
--
ALTER TABLE `task_status`
  ADD PRIMARY KEY (`status_id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_manager`
--
ALTER TABLE `admin_manager`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `task_status`
--
ALTER TABLE `task_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin_manager` (`admin_id`) ON DELETE SET NULL;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE SET NULL;

--
-- Constraints for table `task_status`
--
ALTER TABLE `task_status`
  ADD CONSTRAINT `task_status_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `task` (`task_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_status_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
