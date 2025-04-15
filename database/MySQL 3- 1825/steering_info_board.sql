-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2025 at 12:09 AM
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
(1, '2', 3),
(2, '5', 15),
(3, '2', 3),
(4, '5', 15),
(5, '1', 1),
(6, '1', 1);

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
(1, '2024-03-01', 25, 20, 45, 1.50, 2, 1, 0, '2025-03-18 08:33:43', '2025-03-18 08:33:43'),
(2, '2024-03-02', 30, 18, 48, 1.75, 1, 2, 0, '2025-03-18 08:33:43', '2025-03-18 08:33:43'),
(3, '2024-03-03', 28, 22, 50, 1.60, 0, 3, 1, '2025-03-18 08:33:43', '2025-03-18 08:33:43'),
(4, '2024-03-04', 27, 19, 46, 1.55, 1, 1, 0, '2025-03-18 08:33:43', '2025-03-18 08:33:43'),
(5, '2024-03-05', 26, 21, 47, 2.00, 2, 0, 1, '2025-03-18 08:33:43', '2025-03-18 00:48:41');

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
  `count` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `defects`
--

INSERT INTO `defects` (`id`, `defect_type`, `empid`, `id_shift`, `name`, `defect_date`, `count`, `created_at`) VALUES
(37, 'Deformed/bend terminal', '', 0, 'Juan C. Dillard', '2025-03-06', 1, '2025-03-06 06:14:49'),
(38, 'Half-locked connector', '', 0, 'Mae W. Peterson', '2025-03-06', 1, '2025-03-06 06:15:47'),
(39, 'Deformed/bend terminal', '', 0, 'Mae W. Peterson', '2025-03-06', 2, '2025-03-06 06:15:55'),
(40, 'Stain connector', '', 0, 'Juan C. Dillard', '2025-03-06', 1, '2025-03-06 07:14:40'),
(41, 'Wrong use of VT', '', 0, 'Mae W. Peterson', '2025-03-06', 1, '2025-03-06 07:15:37'),
(42, 'Wrong use of VT', '', 0, 'Juan C. Dillard', '2025-03-06', 2, '2025-03-06 07:15:52'),
(43, 'Half-locked connector', '', 0, 'Juan C. Dillard', '2025-03-06', 2, '2025-03-06 07:21:25'),
(44, 'Damaged lance', '', 0, 'Juan C. Dillard', '2025-03-06', 1, '2025-03-06 08:00:01'),
(47, 'Peel-off terminal', '', 0, 'Juan C. Dillard', '2025-03-06', 1, '2025-03-06 23:11:50'),
(48, 'Deformed/bend terminal', '', 0, 'Juan C. Dillard', '2025-03-07', 1, '2025-03-06 23:20:39'),
(49, 'Droop wire/excess tab', '', 0, 'Juan C. Dillard', '2025-03-07', 3, '2025-03-06 23:49:12'),
(50, 'Peel-off terminal', '', 0, 'Juan C. Dillard', '2025-03-07', 2, '2025-03-07 01:51:46'),
(51, 'Incoming defect', '', 0, 'Juan C. Dillard', '2025-03-07', 6, '2025-03-07 01:56:54'),
(52, 'Mark on VT', '', 0, 'Mae W. Peterson', '2025-03-07', 1, '2025-03-07 02:00:36'),
(53, 'Half-locked connector', '', 0, 'Mae W. Peterson', '2025-03-07', 1, '2025-03-07 07:28:00'),
(54, 'Damaged lance', '', 0, 'Juan C. Dillard', '2025-03-07', 4, '2025-03-07 07:28:06'),
(55, 'Wrong use of VT', '', 0, 'Mae W. Peterson', '2025-03-07', 1, '2025-03-07 07:28:12'),
(56, 'Deformed/bend terminal', '', 0, 'Mae W. Peterson', '2025-03-07', 2, '2025-03-07 07:28:17'),
(57, 'Dent by lance', '', 0, 'Mae W. Peterson', '2025-03-07', 1, '2025-03-07 07:28:24'),
(58, 'Stain connector', '', 0, 'Juan C. Dillard', '2025-03-07', 3, '2025-03-07 07:28:41'),
(59, 'Droop wire/excess tab', '', 0, 'Mae W. Peterson', '2025-03-07', 2, '2025-03-07 07:29:07'),
(60, 'Short/long wire', '', 0, 'Mae W. Peterson', '2025-03-07', 1, '2025-03-07 07:29:21'),
(61, 'Damaged lance', '', 0, 'Juan C. Dillard', '2025-03-08', 2, '2025-03-07 22:49:35'),
(62, 'Deformed/bend terminal', '', 0, 'Juan C. Dillard', '2025-03-08', 1, '2025-03-07 22:49:56'),
(63, 'Droop wire/excess tab', '', 0, 'Juan C. Dillard', '2025-03-08', 1, '2025-03-08 07:55:37'),
(64, 'Half-locked connector', '', 0, 'QQ QQ QQ', '2025-03-10', 1, '2025-03-10 01:17:51'),
(65, 'Half-locked connector', '', 0, 'Jeruz A. Malwarte', '2025-03-10', 1, '2025-03-10 01:59:47'),
(66, 'Wrong use of VT', '', 0, 'QQ QQ QQ', '2025-03-10', 1, '2025-03-10 02:01:41'),
(67, 'Wrong use of VT', '', 0, 'Juan C. Dillard', '2025-03-10', 2, '2025-03-10 02:20:58'),
(68, 'Half-locked connector', '', 0, 'Juan C. Dillard', '2025-03-10', 1, '2025-03-10 07:41:43'),
(69, 'Excess mold', '', 0, 'Jeruz A. Malwarte', '2025-03-10', 2, '2025-03-10 07:44:08'),
(70, 'Peel-off terminal', '', 0, 'Hammer M. Man', '2025-03-10', 1, '2025-03-10 09:15:06'),
(71, 'Half-locked connector', '2501-033', 0, 'Angela M. Lopez', '2025-03-18', 1, '2025-03-18 08:42:22'),
(72, 'Deformed terminal', '2501-033', 0, 'Angela M. Lopez', '2025-03-18', 1, '2025-03-18 09:05:40');

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
(14, 'Excess mold');

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
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employee_id`, `user_type`, `fullname`, `fname`, `mname`, `lname`, `id_shift`, `duty`, `date`, `username`, `password`, `created_at`) VALUES
(7, '2501-031', 'Manager', 'Maria R. Santos', 'Maria', 'R.', 'Santos', '2', '2', '2025-03-18 17:00:00', 'marias', '9b74c9897bac770ffc029102a200c5de', '2025-03-11 03:00:00'),
(8, '2501-032', 'Employee', 'John C. Dela Cruz', 'John', 'C.', 'Dela Cruz', '1', '1', '2025-03-18 08:00:00', 'johndc', '1a1dc91c907325c69271ddf0c944bc72', '2025-03-12 01:30:00'),
(9, '2501-033', 'HR', 'Angela M. Lopez', 'Angela', 'M.', 'Lopez', '0', '0', '2025-03-18 09:00:00', 'angelal', '7bd86c3c1970444fca10f73b1f26dae8', '2025-03-13 06:15:00'),
(10, '2501-034', 'Supervisor', 'Carlos T. Ramirez', 'Carlos', 'T.', 'Ramirez', '2', '2', '2025-03-18 22:00:00', 'carlosr', '25d55ad283aa400af464c76d713c07ad', '2025-03-14 08:45:00');

--
-- Indexes for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `defects`
--
ALTER TABLE `defects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `defects_type`
--
ALTER TABLE `defects_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
