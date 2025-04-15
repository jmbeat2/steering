-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2025 at 01:56 AM
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
-- Database: `steering_info_board`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `action_description` text DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `status` enum('Present','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cs`
--

CREATE TABLE `cs` (
  `id` int(11) NOT NULL,
  `crosstrain` varchar(255) NOT NULL,
  `skilled` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cs`
--

INSERT INTO `cs` (`id`, `crosstrain`, `skilled`) VALUES
(29, '0', 3),
(39, '0', 4),
(50, '0', 1),
(52, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `daily_attendance`
--

CREATE TABLE `daily_attendance` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `ds_count` int(11) NOT NULL,
  `ns_count` int(11) NOT NULL,
  `total_mp` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `sl` int(11) NOT NULL,
  `vl` int(11) NOT NULL,
  `nu` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daily_attendance`
--

INSERT INTO `daily_attendance` (`id`, `date`, `ds_count`, `ns_count`, `total_mp`, `rate`, `sl`, `vl`, `nu`, `created_at`, `updated_at`) VALUES
(28, '2025-04-03', 23, 22, 45, 93.00, 2, 1, 0, '2025-04-03 06:13:56', '2025-04-03 06:13:56'),
(29, '2025-04-04', 23, 20, 45, 96.00, 2, 0, 0, '2025-04-04 11:31:17', '2025-04-04 11:31:17'),
(30, '2025-04-05', 23, 22, 45, 94.00, 2, 0, 0, '2025-04-05 13:00:10', '2025-04-05 13:00:10'),
(31, '2025-04-07', 28, 26, 54, 94.00, 2, 1, 0, '2025-04-07 12:37:24', '2025-04-07 12:37:24'),
(32, '2025-04-08', 28, 26, 54, 94.00, 1, 2, 0, '2025-04-08 04:27:11', '2025-04-08 04:27:11'),
(33, '2025-04-09', 28, 26, 54, 94.00, 2, 1, 0, '2025-04-09 05:31:46', '2025-04-09 05:31:46'),
(34, '2025-04-11', 27, 0, 26, 97.00, 1, 0, 0, '2025-04-10 21:04:26', '2025-04-10 21:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `defects`
--

CREATE TABLE `defects` (
  `id` int(11) NOT NULL,
  `defect_type` varchar(255) NOT NULL,
  `empid` varchar(255) NOT NULL,
  `id_shift` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `defect_date` date NOT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `defects`
--

INSERT INTO `defects` (`id`, `defect_type`, `empid`, `id_shift`, `name`, `defect_date`, `count`, `created_at`) VALUES
(103, 'Wrong insert', '1904-007', 2, 'mary rose natanauan magsino', '2025-04-02', 1, '2025-04-02 06:56:04'),
(104, 'Broken/damaged connector', '1904-007', 2, 'mary rose natanauan magsino', '2025-04-02', 3, '2025-04-02 06:59:46'),
(105, 'Deformed terminal', '1701-027', 1, 'Neshill Anguring Dumaguing', '2025-04-04', 1, '2025-04-04 09:57:32'),
(106, 'Wrong insert', '1701-027', 1, 'Neshill Anguring Dumaguing', '2025-04-05', 2, '2025-04-04 19:32:13'),
(107, 'Wrong insert', '2101-016', 2, 'camille joy de mesa dimaano', '2025-04-05', 2, '2025-04-05 03:48:41'),
(108, 'Wrong insert', '1701-027', 1, 'Neshill Anguring Dumaguing', '2025-04-06', 1, '2025-04-05 20:59:07'),
(109, 'Deformed terminal', '1701-027', 1, 'Neshill Anguring Dumaguing', '2025-04-06', 2, '2025-04-05 21:00:43'),
(110, 'Deformed terminal', '1701-027', 1, 'Neshill Anguring Dumaguing', '2025-04-08', 3, '2025-04-07 20:34:45'),
(111, 'Wrong insert', '1701-027', 1, 'Neshill Anguring Dumaguing', '2025-04-08', 1, '2025-04-08 13:37:59'),
(112, 'Wrong insert', '1904-007', 2, 'mary rose natanauan magsino', '2025-04-11', 2, '2025-04-11 05:16:18'),
(113, 'Deformed terminal', '1904-007', 2, 'mary rose natanauan magsino', '2025-04-11', 2, '2025-04-11 06:05:52');

-- --------------------------------------------------------

--
-- Table structure for table `defects_type`
--

CREATE TABLE `defects_type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `defects_type`
--

INSERT INTO `defects_type` (`id`, `type`) VALUES
(1, 'Half-locked connector'),
(2, 'Damaged lance'),
(3, 'Wrong use of VT'),
(4, 'Deformed/bend terminal'),
(5, 'Dent by lance'),
(6, 'Incoming defect'),
(7, 'Mark on VT'),
(8, 'Stain connector'),
(9, 'Droop wire/excess tab'),
(10, 'Deformed terminal'),
(11, 'Short/long wire'),
(12, 'Broken/damaged connector'),
(13, 'Peel-off terminal'),
(14, 'Excess mold'),
(15, 'Wrong insert');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manpower`
--

CREATE TABLE `manpower` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_summary`
--

CREATE TABLE `order_summary` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `total_orders` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `performance`
--

CREATE TABLE `performance` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `id` int(11) NOT NULL,
  `shift_code` varchar(255) NOT NULL,
  `shift_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`id`, `shift_code`, `shift_name`) VALUES
(1, 'DS', 'Day Shift'),
(2, 'NS', 'Night Shift');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`id`, `title`) VALUES
(2, 'Defect Monitoring');

-- --------------------------------------------------------

--
-- Table structure for table `title2`
--

CREATE TABLE `title2` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `title2`
--

INSERT INTO `title2` (`id`, `title`) VALUES
(1, 'Top 5 defects for the month of april');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `shift_type` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `firstname`, `middlename`, `lastname`, `shift_type`, `date`) VALUES
(1, 'Juan C. Dillard', 'Juan  ', 'C.', 'Dillard', '1', '2025-03-08 16:53:10'),
(5, 'Mae  W. Peterson', 'Mae ', 'W.', 'Peterson', '2', '2025-03-08 09:20:05'),
(9, 'Martin G. Mallari', 'Martin', 'G.', 'Mallari', '2', '2025-03-10 01:21:35'),
(10, 'Jerome G. Halaz', 'Jerome', 'G.', 'Halaz', '1', '2025-03-10 01:21:49'),
(11, 'Alhalbar S. Kiray', 'Alhalbar', 'S.', 'Kiray', '1', '2025-03-10 01:22:08'),
(12, 'Jeruz A. Malwarte', 'Jeruz', 'A.', 'Malwarte', '1', '2025-03-10 01:59:20'),
(13, 'Hammer M. Man', 'Hammer', 'M.', 'Man', '2', '2025-03-10 01:59:35'),
(14, 'Zyrelle G. Maneklang', 'Zyrelle', 'G.', 'Maneklang', '2', '2025-03-10 07:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `id_shift` varchar(255) NOT NULL,
  `duty` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employee_id`, `user_type`, `fullname`, `fname`, `mname`, `lname`, `id_shift`, `duty`, `date`, `username`, `password`, `created_at`, `updated_at`) VALUES
(41, 'admin', '1', 'John Michael Mancera', 'John', 'Michael', 'Mancera', '', '99', '2025-03-25 07:07:18', NULL, 'd88865c4a0315d589a3fee9bbfb992cd', '2025-03-24 15:07:18', 2025),
(43, '1701-035', '0', 'Kresia Anne  Conde Hernandez', 'Kresia Anne ', 'Conde', 'Hernandez', '', '0', '2025-03-25 07:59:02', NULL, '3a1e655328599b6a1208115f2271c942', '2025-03-24 15:59:02', 2025),
(48, '1904-007', '0', 'mary rose natanauan magsino', 'mary rose', 'natanauan', 'magsino', '', '2', '2025-04-01 15:47:55', NULL, '171293841d3fdd4af2e12426ce202ac9', '2025-03-31 23:47:55', 2025),
(49, '2101-016', '0', 'camille joy de mesa dimaano', 'camille joy', 'de mesa', 'dimaano', '', '2', '2025-04-01 15:48:51', NULL, 'e8fe547e1a016acdc23b7428b14cc5fe', '2025-03-31 23:48:51', 2025),
(50, '1901-025', '0', 'Michelle Ann  Layosa Ramos', 'Michelle Ann ', 'Layosa', 'Ramos', '', '0', '2025-04-01 15:49:22', NULL, '447d14c4e535892e2b2d580977dce131', '2025-03-31 23:49:22', 2025),
(51, '1701-027', '0', 'Neshill Anguring Dumaguing', 'Neshill', 'Anguring', 'Dumaguing', '', '0', '2025-04-03 17:58:33', NULL, '9efcdeb6cffc62696a4cbb641f698606', '2025-04-03 01:58:33', 2025),
(52, '2004-013', '0', 'Arlene  Pelaez', 'Arlene', '', 'Pelaez', '', '1', '2025-04-03 22:20:31', NULL, 'b749f2c7207606dc23e3c8825c173d3e', '2025-04-03 06:20:31', 2025),
(53, '1802-005', '0', 'Michelle   Dela Cruz', 'Michelle ', '', 'Dela Cruz', '', '1', '2025-04-03 22:21:37', NULL, '473732ecf904f9950da106e14d238b9b', '2025-04-03 06:21:37', 2025);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `cs`
--
ALTER TABLE `cs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `defects`
--
ALTER TABLE `defects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `defects_type`
--
ALTER TABLE `defects_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manpower`
--
ALTER TABLE `manpower`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_summary`
--
ALTER TABLE `order_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title2`
--
ALTER TABLE `title2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cs`
--
ALTER TABLE `cs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `defects`
--
ALTER TABLE `defects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `defects_type`
--
ALTER TABLE `defects_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manpower`
--
ALTER TABLE `manpower`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_summary`
--
ALTER TABLE `order_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performance`
--
ALTER TABLE `performance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `title2`
--
ALTER TABLE `title2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `performance`
--
ALTER TABLE `performance`
  ADD CONSTRAINT `performance_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
