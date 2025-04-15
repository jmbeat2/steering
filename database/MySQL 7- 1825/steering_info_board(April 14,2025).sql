-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2025 at 06:48 AM
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
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `action_type`, `action_description`, `ip_address`, `user_agent`, `created_at`, `updated_at`, `deleted_at`) VALUES
(229, 'admin', 'Added new user', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>qwe qwe qwe</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong>\r\n                        <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Employee_id: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"2009-002\"</span>\"</span></div><div class=\'mb-2\'>User_type: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"0\"</span>\"</span></div><div class=\'mb-2\'>Password: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"202cb962ac59075b964b07152d234b70\"</span>\"</span></div><div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"qwe\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"qwe\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"qwe\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"qwe qwe qwe\"</span>\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:31:02', NULL, NULL),
(230, '2009-002', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>John A. Smith</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:40:45', NULL, NULL),
(231, '2009-002', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>John A. Smith</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:40:58', NULL, NULL),
(232, '2009-002', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>QQ EE WW</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Employee_id: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"2009-002\"</span>\"</span></div><div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"QQ\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"EE\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"WW\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"QQ EE WW\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:42:12', NULL, NULL),
(233, '2009-002', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>QQ EE WW</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:42:18', NULL, NULL),
(234, '2009-002', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>John A. Smith</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:44:17', NULL, NULL),
(235, '2009-002', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>QQ EE WW</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"1\"</span> → <span class=\'text-success\'>\"2\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:44:21', NULL, NULL),
(236, '2009-002', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>qwe qwe qwe</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:46:13', NULL, NULL),
(237, '2009-002', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>qwe qwe qwe</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"1\"</span> → <span class=\'text-success\'>\"2\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:46:31', NULL, NULL),
(238, '2009-002', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>qwe qwe qwe</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"2\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:46:42', NULL, NULL),
(239, '2009-002', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>qwe qwe qwe</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"1\"</span> → <span class=\'text-success\'>\"2\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:46:49', NULL, NULL),
(240, '2009-002', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>qwe qwe qwe</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"2\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:46:59', NULL, NULL),
(241, '2009-002', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>qwe qwe qwe</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"1\"</span> → <span class=\'text-success\'>\"0\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:48:05', NULL, NULL),
(242, '2009-002', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>qwe qwe qwe</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:48:21', NULL, NULL),
(243, '2009-002', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>qwe qwe qwe</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"1\"</span> → <span class=\'text-success\'>\"0\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:48:28', NULL, NULL),
(244, '2009-002', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>John A. Smith</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"1\"</span> → <span class=\'text-success\'>\"0\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:52:31', NULL, NULL),
(245, '2009-002', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>QQ EE WW</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"2\"</span> → <span class=\'text-success\'>\"0\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:52:36', NULL, NULL),
(246, '2009-002', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>John A. Smith</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:52:44', NULL, NULL),
(247, '2009-002', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>QQ EE WW</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:52:48', NULL, NULL),
(248, '2009-002', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>ewq qwe ewq</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"ewq\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"qwe\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"ewq\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"ewq qwe ewq\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:54:25', NULL, NULL),
(249, '2009-002', 'Updated operator', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'><strong>Operator:</strong> <span class=\'text-primary fw-semibold\'>ewq qwe ewq</span></div>\r\n                    <div class=\'mb-2\'><strong>Updated by:</strong> <em class=\'text-muted\'>qwe qwe qwe</em></div>\r\n                    <div class=\'mt-2\'><div class=\'mb-2\'>Fname: \r\n                    <span class=\'text-danger\'>\"ewq\"</span> → \r\n                    <span class=\'text-success\'>\"QUICK\"</span>\r\n                </div><div class=\'mb-2\'>Mname: \r\n                    <span class=\'text-danger\'>\"qwe\"</span> → \r\n                    <span class=\'text-success\'>\"BROWN\"</span>\r\n                </div><div class=\'mb-2\'>Lname: \r\n                    <span class=\'text-danger\'>\"ewq\"</span> → \r\n                    <span class=\'text-success\'>\"FOX\"</span>\r\n                </div><div class=\'mb-2\'>Fullname: \r\n                    <span class=\'text-danger\'>\"ewq qwe ewq\"</span> → \r\n                    <span class=\'text-success\'>\"QUICK BROWN FOX\"</span>\r\n                </div></div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:55:26', NULL, NULL),
(250, '2009-002', 'Deleted an operator', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Deleted Operator:</strong>\r\n                        <span class=\'text-danger fw-semibold\'>John A. Smith</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Deleted by:</strong>\r\n                        <em class=\'text-muted\'>qwe qwe qwe</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Employee ID: <span class=\'text-danger\'>\"EMP001\"</span></div>\r\n                        <div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"John A. Smith\"</span></div>\r\n                        <div class=\'mb-2\'>First Name: <span class=\'text-danger\'>\"John\"</span></div>\r\n                        <div class=\'mb-2\'>Middle Name: <span class=\'text-danger\'>\"A.\"</span></div>\r\n                        <div class=\'mb-2\'>Last Name: <span class=\'text-danger\'>\"Smith\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-12 07:56:09', NULL, NULL),
(251, 'admin', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>QUICK BROWN FOX</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"2\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-13 22:23:05', NULL, NULL),
(252, 'admin', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>QQ EE WW</span>\r\n                    </div>\r\n                    <div class=\'mb-2 text-muted\'>No changes were made.</div>\r\n                    <div>\r\n                        <strong class=\'text-muted\'>Updated by:</strong>\r\n                        <em>John Michael Mancera</em>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145.localdomain', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-13 22:30:36', NULL, NULL);

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
(78, '2', 2),
(79, '3', 2),
(80, '1', 11),
(81, '5', 4),
(84, '1', 1);

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
  `rate` varchar(255) NOT NULL,
  `sl` int(11) NOT NULL,
  `vl` int(11) NOT NULL,
  `nu` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `defects`
--

CREATE TABLE `defects` (
  `id` int(11) NOT NULL,
  `defect_type` varchar(255) NOT NULL,
  `empid` varchar(255) NOT NULL,
  `encodeby` varchar(255) NOT NULL,
  `id_shift` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `defect_date` date NOT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `operators`
--

CREATE TABLE `operators` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `id_shift` int(10) NOT NULL,
  `duty` int(10) NOT NULL,
  `authorized` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `operators`
--

INSERT INTO `operators` (`id`, `employee_id`, `fullname`, `fname`, `mname`, `lname`, `id_shift`, `duty`, `authorized`) VALUES
(30, '2009-002', 'QQ EE WW', 'QQ', 'EE', 'WW', 1, 1, ''),
(31, '', 'QUICK BROWN FOX', 'QUICK', 'BROWN', 'FOX', 0, 2, '');

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
(2, 'CROSSTRAIN AND SKILLED 2024');

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
(1, 'TOP 5 DEFECTS');

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
(60, '2009-002', '0', 'qwe qwe qwe', 'qwe', 'qwe', 'qwe', '', '0', '2025-04-12 15:31:02', NULL, '202cb962ac59075b964b07152d234b70', '2025-04-11 23:31:02', 2025);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
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
-- Indexes for table `operators`
--
ALTER TABLE `operators`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cs`
--
ALTER TABLE `cs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `defects`
--
ALTER TABLE `defects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

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
-- AUTO_INCREMENT for table `operators`
--
ALTER TABLE `operators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
