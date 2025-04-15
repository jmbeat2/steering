-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2025 at 02:23 PM
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
  `action_type` varchar(50) DEFAULT NULL,
  `action_description` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `action_type`, `action_description`, `ip_address`, `user_agent`, `created_at`) VALUES
(86, 'admin', 'Added new user', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>ew wew ew</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong>\r\n                        <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Employee_id: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"1111-113\"</span>\"</span></div><div class=\'mb-2\'>User_type: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"0\"</span>\"</span></div><div class=\'mb-2\'>Password: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"afc3272e889524662847c1313f12c716\"</span>\"</span></div><div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"ew\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"wew\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"ew\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"ew wew ew\"</span>\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 02:38:03'),
(87, 'admin', 'Update user', '\r\n        <div class=\'text-start\'>\r\n            <div class=\'mb-2\'>\r\n                <strong>User:</strong>\r\n                <span class=\'text-primary fw-semibold\'>qq ee ww</span>\r\n            </div>\r\n            <div class=\'mb-2\'>\r\n                <strong>Updated by:</strong>\r\n                <em class=\'text-muted\'>John Michael Mancera</em>\r\n            </div>\r\n            <div class=\'mt-2\'>\r\n                <div class=\'mb-2\'>Employee_id: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"1111-113\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"41412\"</span>\"</span></div><div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"ew\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"qq\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"wew\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"ee\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"ew\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"ww\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"ew wew ew\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"qq ee ww\"</span>\"</span></div>\r\n            </div>\r\n        </div>\r\n    ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 02:38:21'),
(88, 'admin', 'Delete user', '\r\n        <div class=\'text-start\'>\r\n            <div class=\'mb-2\'>\r\n                <strong>User:</strong>\r\n                <span class=\'text-primary fw-semibold\'>ew ew ew</span>\r\n            </div>\r\n            <div class=\'mb-2\'>\r\n                <strong>Deleted by:</strong>\r\n                <em class=\'text-muted\'>John Michael Mancera</em>\r\n            </div>\r\n        </div>\r\n    ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 02:39:36'),
(90, '1616-161', 'Update user', '\r\n        <div class=\'text-start\'>\r\n            <div class=\'mb-2\'>\r\n                <strong>User:</strong>\r\n                <span class=\'text-primary fw-semibold\'>Jericho ChoiceS Maneklang</span>\r\n            </div>\r\n            <div class=\'mb-2\'>\r\n                <strong>Updated by:</strong>\r\n                <em class=\'text-muted\'>ew ew ew</em>\r\n            </div>\r\n            <div class=\'mt-2\'>\r\n                <div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"Choice\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"ChoiceS\"</span>\"</span></div><div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"1\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"Jericho Choice Maneklang\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"Jericho ChoiceS Maneklang\"</span>\"</span></div>\r\n            </div>\r\n        </div>\r\n    ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 02:40:05'),
(91, '1616-161', 'Delete user', '\r\n        <div class=\'text-start\'>\r\n            <div class=\'mb-2\'>\r\n                <strong>User:</strong>\r\n                <span class=\'text-primary fw-semibold\'>we we ew</span>\r\n            </div>\r\n            <div class=\'mb-2\'>\r\n                <strong>Deleted by:</strong>\r\n                <em class=\'text-muted\'>ew ew ew</em>\r\n            </div>\r\n        </div>\r\n    ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 02:40:28'),
(92, '1616-161', 'Logout', 'User logged out', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 02:42:18'),
(93, '1505-321', 'Login', 'User Login', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 02:42:29'),
(94, '1505-321', 'Logout', 'User logged out', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 02:43:00'),
(95, '1505-321', 'Login', 'User Login', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 02:43:15'),
(96, 'admin', 'Logout', 'User logged out', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 02:44:08'),
(97, 'admin', 'Login', 'User Login', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 02:44:12'),
(98, '1505-321', 'Login', 'User Login', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 02:44:45'),
(99, '1505-321', 'Login', 'User Login', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 02:45:12'),
(100, '1505-321', 'Login', 'User Login', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 02:46:32'),
(101, 'admin', 'Login', 'User Login', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 02:46:52'),
(102, 'admin', 'Login', 'User Login', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 02:47:29'),
(103, 'admin', 'Login', 'User Login', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 02:48:24'),
(104, 'admin', 'Update user', '\r\n        <div class=\'text-start\'>\r\n            <div class=\'mb-2\'>\r\n                <strong>User:</strong>\r\n                <span class=\'text-primary fw-semibold\'>Jericho ChoiceS Maneklang</span>\r\n            </div>\r\n            <div class=\'mb-2\'>\r\n                <strong>Updated by:</strong>\r\n                <em class=\'text-muted\'>John Michael Mancera</em>\r\n            </div>\r\n            <div class=\'mt-2\'>\r\n                <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"1\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"\"</span>\"</span></div>\r\n            </div>\r\n        </div>\r\n    ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 02:48:33'),
(105, 'admin', 'Login', 'User Login', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 03:00:49'),
(106, '1505-321', 'Login', 'User Login', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 03:41:40'),
(107, '1505-321', 'Login', 'User Login', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 03:44:51'),
(108, '1505-321', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Jericho ChoiceS Maneklang</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Jericho ChoiceS Maneklang</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"1\"</span> → <span class=\'text-success\'>\"2\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 03:44:58'),
(109, '1505-321', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Jericho ChoiceS Maneklang</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Jericho ChoiceS Maneklang</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"2\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 04:53:27'),
(110, '1505-321', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Jericho ChoiceS Maneklang</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Jericho ChoiceS Maneklang</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"1\"</span> → <span class=\'text-success\'>\"0\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 04:53:32'),
(111, '1505-321', 'Login', 'User Login', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 05:22:30');

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
(4, '1', 2),
(29, '3', 3),
(39, '2', 2),
(44, '3', 3),
(45, '3', 2),
(48, '1', 2),
(49, '1', 1);

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
(27, '2025-03-25', 28, 0, 28, 0.00, 0, 1, 0, '2025-03-24 15:57:04', '2025-03-24 15:57:04');

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
(88, 'Half-locked connector', 'admin', 1, '124 124 124', '2025-03-25', 0, '2025-03-24 23:19:12'),
(89, 'Damaged lance', 'admin', 1, '124 124 124', '2025-03-25', 0, '2025-03-24 23:19:16'),
(90, 'Wrong use of VT', 'admin', 1, '124 124 124', '2025-03-25', 0, '2025-03-24 23:19:20'),
(91, 'Deformed/bend terminal', 'admin', 1, '124 124 124', '2025-03-25', 0, '2025-03-24 23:19:24'),
(92, 'Dent by lance', 'admin', 1, '124 124 124', '2025-03-25', 0, '2025-03-24 23:19:28'),
(93, 'Incoming defect', 'admin', 1, '124 124 124', '2025-03-25', 0, '2025-03-24 23:19:30'),
(94, 'Mark on VT', 'admin', 1, '124 124 124', '2025-03-25', 0, '2025-03-24 23:19:35'),
(95, 'Stain connector', 'admin', 1, '124 124 124', '2025-03-25', 0, '2025-03-24 23:19:38'),
(96, 'Droop wire/excess tab', 'admin', 1, '124 124 124', '2025-03-25', 0, '2025-03-24 23:19:40'),
(97, 'Deformed terminal', 'admin', 1, '124 124 124', '2025-03-25', 0, '2025-03-24 23:19:43'),
(98, 'Short/long wire', 'admin', 1, '124 124 124', '2025-03-25', 0, '2025-03-24 23:19:50'),
(99, 'Broken/damaged connector', 'admin', 1, '124 124 124', '2025-03-25', 0, '2025-03-24 23:20:39'),
(100, 'Peel-off terminal', 'admin', 1, '124 124 124', '2025-03-25', 0, '2025-03-24 23:20:43'),
(101, 'Excess mold', 'admin', 1, '124 124 124', '2025-03-25', 0, '2025-03-24 23:20:45'),
(102, 'Half-locked connector', 'admin', 99, 'John Michael Mancera', '2025-03-26', 1, '2025-03-26 02:30:12'),
(103, 'Half-locked connector', '1701-035', 2, 'Kresia Anne  Conde Hernandez', '2025-04-07', 1, '2025-04-07 03:50:01'),
(104, 'Damaged lance', '1701-035', 2, 'Kresia Anne  Conde Hernandez', '2025-04-07', 1, '2025-04-07 03:50:05'),
(105, 'Wrong use of VT', '1701-035', 2, 'Kresia Anne  Conde Hernandez', '2025-04-07', 1, '2025-04-07 03:50:08'),
(106, 'Deformed/bend terminal', '1701-035', 2, 'Kresia Anne  Conde Hernandez', '2025-04-07', 6, '2025-04-07 03:50:10'),
(107, 'Dent by lance', '1701-035', 2, 'Kresia Anne  Conde Hernandez', '2025-04-07', 1, '2025-04-07 03:50:14'),
(108, 'Incoming defect', '1701-035', 2, 'Kresia Anne  Conde Hernandez', '2025-04-07', 1, '2025-04-07 03:50:17'),
(109, 'Mark on VT', '1701-035', 2, 'Kresia Anne  Conde Hernandez', '2025-04-07', 1, '2025-04-07 03:50:20'),
(110, 'Stain connector', '1701-035', 2, 'Kresia Anne  Conde Hernandez', '2025-04-07', 1, '2025-04-07 03:50:22'),
(111, 'Droop wire/excess tab', '1701-035', 2, 'Kresia Anne  Conde Hernandez', '2025-04-07', 3, '2025-04-07 03:50:27'),
(112, 'Deformed terminal', '1701-035', 2, 'Kresia Anne  Conde Hernandez', '2025-04-07', 1, '2025-04-07 03:50:32'),
(113, 'Short/long wire', '1701-035', 2, 'Kresia Anne  Conde Hernandez', '2025-04-07', 1, '2025-04-07 03:50:35'),
(114, 'Broken/damaged connector', '1701-035', 2, 'Kresia Anne  Conde Hernandez', '2025-04-07', 2, '2025-04-07 03:50:39'),
(115, 'Peel-off terminal', '1701-035', 2, 'Kresia Anne  Conde Hernandez', '2025-04-07', 2, '2025-04-07 03:50:46'),
(116, 'Excess mold', '1701-035', 2, 'Kresia Anne  Conde Hernandez', '2025-04-07', 1, '2025-04-07 03:50:48'),
(117, 'Damaged lance', '1701-035', 2, 'Kresia Anne  Conde Hernandez', '2025-05-07', 1, '2025-05-07 05:01:38');

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
-- Table structure for table `hashes`
--

CREATE TABLE `hashes` (
  `id` int(11) NOT NULL,
  `plaintext` varchar(255) NOT NULL,
  `md5_hash` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hashes`
--

INSERT INTO `hashes` (`id`, `plaintext`, `md5_hash`) VALUES
(1, '123456', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'password', '5f4dcc3b5aa765d61d8327deb882cf99'),
(3, '123456789', '25f9e794323b453885f5181f1b624d0b'),
(4, 'qwerty', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
(5, 'abc123', 'e99a18c428cb38d5f260853678922e03'),
(6, 'password1', '7c6a180b36896a0a8c02787eeafb0e4c'),
(7, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(8, 'letmein', '0d107d09f5bbe40cade3de5c71e9e9b7'),
(48, 'd3fault', 'd88865c4a0315d589a3fee9bbfb992cd');

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
(2, 'December 11 2024');

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
(1, 'TOP 5 DEFECTS FOR THIS MONTH OF APRIL');

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
(43, '1701-035', '0', 'Kresia Anne  Conde Hernandez', 'Kresia Anne ', 'Conde', 'Hernandez', '', '2', '2025-03-25 07:59:02', NULL, '202cb962ac59075b964b07152d234b70', '2025-03-24 15:59:02', 2025),
(47, '1505-321', '0', 'Jericho ChoiceS Maneklang', 'Jericho', 'ChoiceS', 'Maneklang', '', '', '2025-04-07 12:58:31', NULL, '202cb962ac59075b964b07152d234b70', '2025-04-06 20:58:31', 2025),
(74, '5675-734', '0', 'ewq ewq ewq', 'ewq', 'ewq', 'ewq', '', '', '2025-04-09 07:48:21', NULL, 'df22f17124884fc51f1ac69d610096ac', '2025-04-08 15:48:21', 2025),
(78, '6786-78', '0', 'e we w', 'e', 'we', 'w', '', '', '2025-04-09 07:58:50', NULL, '9fe8593a8a330607d76796b35c64c600', '2025-04-08 15:58:50', 2025),
(80, '2146-575', '0', 'ewq  ewq', 'ewq', '', 'ewq', '', '1', '2025-04-09 07:59:14', NULL, '6bdcbb606161c47eab0615ff6e13313f', '2025-04-08 15:59:14', 2025),
(81, '4564', '0', 'ewq ewq ewq', 'ewq', 'ewq', 'ewq', '', '', '2025-04-09 08:00:06', NULL, '4d1ea1367acf0560c6716dd076a84d7f', '2025-04-08 16:00:06', 2025),
(84, '7', '0', 'w q w', 'w', 'q', 'w', '', '', '2025-04-09 08:04:39', NULL, 'e1671797c52e15f763380b45e841ec32', '2025-04-08 16:04:39', 2025),
(85, '4', '0', 'w e w', 'w', 'e', 'w', '', '', '2025-04-09 08:05:52', NULL, '79a628b2d968cfe1a7f9c5e398f6b96a', '2025-04-08 16:05:52', 2025),
(86, '8989-89', '0', 'ew ew ew', 'ew', 'ew', 'ew', '', '', '2025-04-09 08:08:17', NULL, '79a628b2d968cfe1a7f9c5e398f6b96a', '2025-04-08 16:08:17', 2025),
(87, '44', '0', 'e w q', 'e', 'w', 'q', '', '', '2025-04-09 08:09:42', NULL, 'f1290186a5d0b1ceab27f4e77c0c5d68', '2025-04-08 16:09:42', 2025),
(88, '8', '0', 'w e q', 'w', 'e', 'q', '', '', '2025-04-09 08:10:15', NULL, 'f1290186a5d0b1ceab27f4e77c0c5d68', '2025-04-08 16:10:15', 2025),
(91, '22', '0', 'q w e', 'q', 'w', 'e', '', '', '2025-04-09 08:13:22', NULL, '4d1ea1367acf0560c6716dd076a84d7f', '2025-04-08 16:13:22', 2025),
(93, '412', '0', 'ewq ewq eqw', 'ewq', 'ewq', 'eqw', '', '', '2025-04-09 08:18:20', NULL, '4d1ea1367acf0560c6716dd076a84d7f', '2025-04-08 16:18:20', 2025),
(94, '4574', '0', 'ewq ewq w', 'ewq', 'ewq', 'w', '', '', '2025-04-09 08:20:48', NULL, '76d80224611fc919a5d54f0ff9fba446', '2025-04-08 16:20:48', 2025),
(95, '7552-3', '0', 'ewq ew w', 'ewq', 'ew', 'w', '', '', '2025-04-09 08:21:47', NULL, '4d1ea1367acf0560c6716dd076a84d7f', '2025-04-08 16:21:47', 2025),
(97, '51', '0', 'w ew ew', 'w', 'ew', 'ew', '', '', '2025-04-09 08:27:01', NULL, '79a628b2d968cfe1a7f9c5e398f6b96a', '2025-04-08 16:27:01', 2025),
(101, '2131-231', '0', 'ew ew ew', 'ew', 'ew', 'ew', '', '1', '2025-04-09 08:34:54', NULL, '79a628b2d968cfe1a7f9c5e398f6b96a', '2025-04-08 16:34:53', 2025),
(102, '6', '0', 'w q w', 'w', 'q', 'w', '', '', '2025-04-09 08:38:10', NULL, 'e1671797c52e15f763380b45e841ec32', '2025-04-08 16:38:10', 2025),
(103, '54', '0', 'ew ew ew', 'ew', 'ew', 'ew', '', '', '2025-04-09 08:39:24', NULL, '79a628b2d968cfe1a7f9c5e398f6b96a', '2025-04-08 16:39:24', 2025),
(104, '90', '0', 'wq wq wq', 'wq', 'wq', 'wq', '', '', '2025-04-09 08:43:01', NULL, '2c204d849495890a8fad6b44ee78ac73', '2025-04-08 16:43:01', 2025),
(105, '1616-161', '0', 'ew ew ew', 'ew', 'ew', 'ew', '', '2', '2025-04-09 08:47:12', NULL, '202cb962ac59075b964b07152d234b70', '2025-04-08 16:47:12', 2025),
(106, '2222-3', '0', 'ewe we we', 'ewe', 'we', 'we', '', '', '2025-04-09 10:14:37', NULL, '79a628b2d968cfe1a7f9c5e398f6b96a', '2025-04-08 18:14:37', 2025),
(107, '2323', '0', 'ew ew ew', 'ew', 'ew', 'ew', '', '', '2025-04-09 10:15:18', NULL, '79a628b2d968cfe1a7f9c5e398f6b96a', '2025-04-08 18:15:18', 2025),
(108, '89', '0', 'ew ew ew', 'ew', 'ew', 'ew', '', '', '2025-04-09 10:15:50', NULL, '79a628b2d968cfe1a7f9c5e398f6b96a', '2025-04-08 18:15:50', 2025),
(111, '5423-142', '0', 'ew ew ew', 'ew', 'ew', 'ew', '', '', '2025-04-09 10:17:41', NULL, '79a628b2d968cfe1a7f9c5e398f6b96a', '2025-04-08 18:17:41', 2025),
(114, '4124', '0', 'ewq ewq qwe', 'ewq', 'ewq', 'qwe', '', '', '2025-04-09 10:35:36', NULL, '4d1ea1367acf0560c6716dd076a84d7f', '2025-04-08 18:35:36', 2025),
(115, '41412', '0', 'qq ee ww', 'qq', 'ee', 'ww', '', '', '2025-04-09 10:38:03', NULL, 'afc3272e889524662847c1313f12c716', '2025-04-08 18:38:03', 2025);

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
-- Indexes for table `hashes`
--
ALTER TABLE `hashes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plaintext` (`plaintext`),
  ADD UNIQUE KEY `md5_hash` (`md5_hash`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `defects`
--
ALTER TABLE `defects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

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
-- AUTO_INCREMENT for table `hashes`
--
ALTER TABLE `hashes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

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
