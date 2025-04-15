-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2025 at 03:57 PM
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
(1, 'admin', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>ewq ewq ewq</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>John Michael Mancera</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Employee_id: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"1505-003\"</span>\"</span></div><div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"ewq\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"ewq\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"ewq\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"ewq ewq ewq\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 07:05:48', NULL, NULL),
(2, 'admin', 'Deleted an operator', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Deleted Operator:</strong>\r\n                        <span class=\'text-danger fw-semibold\'>ewq ewq ewq</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Deleted by:</strong>\r\n                        <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Employee ID: <span class=\'text-danger\'>\"1505-003\"</span></div>\r\n                        <div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"ewq ewq ewq\"</span></div>\r\n                        <div class=\'mb-2\'>First Name: <span class=\'text-danger\'>\"ewq\"</span></div>\r\n                        <div class=\'mb-2\'>Middle Name: <span class=\'text-danger\'>\"ewq\"</span></div>\r\n                        <div class=\'mb-2\'>Last Name: <span class=\'text-danger\'>\"ewq\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 07:05:55', NULL, NULL),
(3, '1901-025', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>NA Anguring NA</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Michelle Ann  Layosa Ramos</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Employee_id: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"1901-025\"</span>\"</span></div><div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"NA\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Anguring\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"NA\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"NA Anguring NA\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 07:12:47', NULL, NULL),
(4, '1901-025', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Michelle   Dela Cruz</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Michelle Ann  Layosa Ramos</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"1\"</span> → <span class=\'text-success\'>\"0\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 07:15:00', NULL, NULL),
(5, '1901-025', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Arlene  Pelaez</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Michelle Ann  Layosa Ramos</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"1\"</span> → <span class=\'text-success\'>\"0\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 07:15:05', NULL, NULL),
(6, '1901-025', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>mary rose natanauan magsino</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Michelle Ann  Layosa Ramos</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"2\"</span> → <span class=\'text-success\'>\"0\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 07:15:11', NULL, NULL),
(7, '1901-025', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>camille joy de mesa dimaano</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Michelle Ann  Layosa Ramos</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"2\"</span> → <span class=\'text-success\'>\"0\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 07:15:15', NULL, NULL),
(8, '1901-025', 'Added attendance record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>Michelle Ann  Layosa Ramos</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'><div class=\'mb-1\'><strong>Date:</strong> <span class=\'text-success\'>\"2025-04-12\"</span></div><div class=\'mb-1\'><strong>Ds_count:</strong> <span class=\'text-success\'>\"27\"</span></div><div class=\'mb-1\'><strong>Ns_count:</strong> <span class=\'text-success\'>\"26\"</span></div><div class=\'mb-1\'><strong>Total_mp:</strong> <span class=\'text-success\'>\"27\"</span></div><div class=\'mb-1\'><strong>Rate:</strong> <span class=\'text-success\'>\"100%\"</span></div><div class=\'mb-1\'><strong>Sl:</strong> <span class=\'text-success\'>\"2\"</span></div><div class=\'mb-1\'><strong>Vl:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Nu:</strong> <span class=\'text-success\'>\"0\"</span></div></div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 07:17:20', NULL, NULL),
(9, '1701-027', 'Added attendance record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'><div class=\'mb-1\'><strong>Date:</strong> <span class=\'text-success\'>\"2025-04-12\"</span></div><div class=\'mb-1\'><strong>Ds_count:</strong> <span class=\'text-success\'>\"28\"</span></div><div class=\'mb-1\'><strong>Ns_count:</strong> <span class=\'text-success\'>\"26\"</span></div><div class=\'mb-1\'><strong>Total_mp:</strong> <span class=\'text-success\'>\"45\"</span></div><div class=\'mb-1\'><strong>Rate:</strong> <span class=\'text-success\'>\"96%\"</span></div><div class=\'mb-1\'><strong>Sl:</strong> <span class=\'text-success\'>\"2\"</span></div><div class=\'mb-1\'><strong>Vl:</strong> <span class=\'text-success\'>\"0\"</span></div><div class=\'mb-1\'><strong>Nu:</strong> <span class=\'text-success\'>\"0\"</span></div></div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:07:18', NULL, NULL),
(10, '1701-027', 'Deleted an operator', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Deleted Operator:</strong>\r\n                        <span class=\'text-danger fw-semibold\'>NA Anguring NA</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Deleted by:</strong>\r\n                        <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Employee ID: <span class=\'text-danger\'>\"1901-025\"</span></div>\r\n                        <div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"NA Anguring NA\"</span></div>\r\n                        <div class=\'mb-2\'>First Name: <span class=\'text-danger\'>\"NA\"</span></div>\r\n                        <div class=\'mb-2\'>Middle Name: <span class=\'text-danger\'>\"Anguring\"</span></div>\r\n                        <div class=\'mb-2\'>Last Name: <span class=\'text-danger\'>\"NA\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:07:50', NULL, NULL),
(11, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Jonalyn DeVera</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Jonalyn\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"DeVera\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Jonalyn DeVera\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:13:40', NULL, NULL),
(12, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Alma  Sabuito</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Alma \"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Sabuito\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Alma  Sabuito\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:14:38', NULL, NULL),
(13, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Genelyne  Sillacay</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Genelyne \"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Sillacay\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Genelyne  Sillacay\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:14:58', NULL, NULL),
(14, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Evelyn Jhid  Mansalay</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Evelyn Jhid \"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Mansalay\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Evelyn Jhid  Mansalay\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:15:13', NULL, NULL),
(15, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Shermae  Mendoza</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Shermae \"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Mendoza\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Shermae  Mendoza\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:15:40', NULL, NULL),
(16, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Evelinda Obsinada</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Evelinda\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Obsinada\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Evelinda Obsinada\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:17:02', NULL, NULL),
(17, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Irica Padilla</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Irica\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Padilla\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Irica Padilla\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:17:25', NULL, NULL),
(18, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Cheryl Mae Burgos</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Cheryl Mae\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Burgos\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Cheryl Mae Burgos\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:17:42', NULL, NULL),
(19, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Hazel Sumague</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Hazel\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Sumague\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Hazel Sumague\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:17:57', NULL, NULL),
(20, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Mylene Magno</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" Mylene\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Magno\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Mylene Magno\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:18:17', NULL, NULL),
(21, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Mary Grace Visda</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Mary Grace\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Visda\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Mary Grace Visda\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:18:31', NULL, NULL),
(22, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Marites Castillo</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Marites\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Castillo\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Marites Castillo\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:18:46', NULL, NULL),
(23, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Jackielyn Hernandez</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Jackielyn\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Hernandez\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Jackielyn Hernandez\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:19:07', NULL, NULL),
(24, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Princess Brotonel</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" Princess\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Brotonel\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Princess Brotonel\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:19:20', NULL, NULL),
(25, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Rica Shanine Gosim</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Rica Shanine\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Gosim\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Rica Shanine Gosim\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:19:37', NULL, NULL),
(26, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Menchie Pelaez</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" Menchie\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Pelaez\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Menchie Pelaez\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:20:04', NULL, NULL),
(27, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Jenellie Belga</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" Jenellie\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Belga\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Jenellie Belga\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:20:16', NULL, NULL),
(28, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Ma. Mardi Jorge</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" Ma. Mardi\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Jorge\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Ma. Mardi Jorge\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:20:27', NULL, NULL),
(29, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Arjelen Barnedo</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Arjelen\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Barnedo\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Arjelen Barnedo\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:20:38', NULL, NULL),
(30, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Rose Ann Holgado</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" Rose Ann\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Holgado\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Rose Ann Holgado\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:20:54', NULL, NULL),
(31, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Baby Joy Carlom</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" Baby Joy\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Carlom\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Baby Joy Carlom\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:21:10', NULL, NULL),
(32, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Anita Jusoy</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Anita\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Jusoy\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Anita Jusoy\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:21:24', NULL, NULL),
(33, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Rodelyn Cortez</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Rodelyn\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Cortez\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Rodelyn Cortez\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:21:44', NULL, NULL),
(34, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Jeanelyn Albania</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" Jeanelyn\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Albania\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Jeanelyn Albania\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:22:00', NULL, NULL),
(35, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Aivy Joy  Canta</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" Aivy Joy \"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Canta\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Aivy Joy  Canta\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:22:15', NULL, NULL),
(36, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Irene Delos Santos</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" Irene\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Delos Santos\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Irene Delos Santos\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:22:28', NULL, NULL);
INSERT INTO `activity_logs` (`id`, `user_id`, `action_type`, `action_description`, `ip_address`, `user_agent`, `created_at`, `updated_at`, `deleted_at`) VALUES
(37, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Maryflor Dequiña</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" Maryflor\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Dequiña\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Maryflor Dequiña\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:22:44', NULL, NULL),
(38, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Edlyn Dela Rosa,</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Edlyn\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Dela Rosa,\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Edlyn Dela Rosa,\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:22:55', NULL, NULL),
(39, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Edelyn Balde</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" Edelyn\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Balde\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Edelyn Balde\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:23:07', NULL, NULL),
(40, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Cris Judy  Mendoza</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" Cris Judy \"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Mendoza\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Cris Judy  Mendoza\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:23:26', NULL, NULL),
(41, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Maria Kimberly Ballozos</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Maria Kimberly\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Ballozos\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Maria Kimberly Ballozos\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:23:39', NULL, NULL),
(42, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Jasmin Fosana</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Jasmin\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Fosana\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Jasmin Fosana\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:23:50', NULL, NULL),
(43, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Jolina Padua</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" Jolina\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Padua\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Jolina Padua\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:24:05', NULL, NULL),
(44, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Anabel Laureta</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Anabel\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Laureta\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Anabel Laureta\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:24:16', NULL, NULL),
(45, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Judy Ann Olgado</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Judy Ann\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Olgado\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Judy Ann Olgado\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:24:28', NULL, NULL),
(46, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Claribel Mendoza</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" Claribel\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Mendoza\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Claribel Mendoza\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:24:42', NULL, NULL),
(47, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Mary Ann Grajo</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Mary Ann\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Grajo \"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Mary Ann Grajo\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:24:53', NULL, NULL),
(48, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Roxanne Valenzuela</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Roxanne\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Valenzuela\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Roxanne Valenzuela\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:25:07', NULL, NULL),
(49, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Mary Grace Del Pilar</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Mary Grace\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Del Pilar\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Mary Grace Del Pilar\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:25:18', NULL, NULL),
(50, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Gemma Agdoro</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Gemma\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Agdoro\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Gemma Agdoro\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:25:29', NULL, NULL),
(51, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Cize Del Rosario</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Cize\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Del Rosario\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Cize Del Rosario\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:25:39', NULL, NULL),
(52, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Evelyn Lumanglas</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Evelyn\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Lumanglas\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Evelyn Lumanglas\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:25:54', NULL, NULL),
(53, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Ley-Ann Cas</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" Ley-Ann\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Cas\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Ley-Ann Cas\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:26:06', NULL, NULL),
(54, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Rovelyn Maristela</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Rovelyn\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Maristela\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Rovelyn Maristela\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:26:55', NULL, NULL),
(55, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Joyce Ann  Cambal</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" Joyce Ann \"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Cambal\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Joyce Ann  Cambal\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:27:05', NULL, NULL),
(56, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Jessica Puntanar</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" Jessica\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Puntanar\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Jessica Puntanar\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:27:17', NULL, NULL),
(57, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>May Marie Ogorida</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\" May Marie\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Ogorida\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"May Marie Ogorida\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:27:29', NULL, NULL),
(58, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>April Camara</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"April\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Camara\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"April Camara\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:27:39', NULL, NULL),
(59, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Micaella Justin Camos</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Micaella Justin\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Camos\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Micaella Justin Camos\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:27:50', NULL, NULL),
(60, '1701-027', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>Rizza Esmino</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Rizza\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Esmino\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Rizza Esmino\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-12 12:28:03', NULL, NULL),
(61, 'admin', 'Added new user', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Test user Test user Test user</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong>\r\n                        <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Employee_id: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"9877-222\"</span>\"</span></div><div class=\'mb-2\'>User_type: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"0\"</span>\"</span></div><div class=\'mb-2\'>Password: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"202cb962ac59075b964b07152d234b70\"</span>\"</span></div><div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Test user\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Test user\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Test user\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"Test user Test user Test user\"</span>\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-13 22:17:24', NULL, NULL),
(62, '9877-222', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Gemma Agdoro</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Test user Test user Test user</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"N/A\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-13 22:17:41', NULL, NULL),
(63, '9877-222', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Gemma Agdoro</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Test user Test user Test user</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"N/A\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-13 22:18:04', NULL, NULL),
(64, '9877-222', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Gemma Agdoro</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Test user Test user Test user</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"N/A\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-13 22:28:47', NULL, NULL),
(65, 'admin', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Gemma Agdoro</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"N/A\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-13 22:35:13', NULL, NULL),
(66, 'admin', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Gemma Agdoro</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-13 22:37:30', NULL, NULL),
(67, 'admin', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Gemma Agdoro</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"1\"</span> → <span class=\'text-success\'>\"0\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-13 22:37:40', NULL, NULL),
(68, 'admin', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Gemma Agdoro</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-13 22:40:46', NULL, NULL),
(69, 'admin', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Gemma Agdoro</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"1\"</span> → <span class=\'text-success\'>\"0\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-13 22:40:55', NULL, NULL),
(70, '1701-027', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Gemma Agdoro</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-13 23:52:33', NULL, NULL),
(71, '1701-027', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Jeanelyn Albania</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"2\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-13 23:52:38', NULL, NULL),
(72, '1701-027', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Edelyn Balde</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-13 23:52:42', NULL, NULL),
(73, '1701-027', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Maria Kimberly Ballozos</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-13 23:52:53', NULL, NULL),
(74, '1701-027', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Arjelen Barnedo</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"2\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-13 23:52:57', NULL, NULL),
(75, '1701-027', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Jenellie Belga</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"2\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-13 23:53:09', NULL, NULL);
INSERT INTO `activity_logs` (`id`, `user_id`, `action_type`, `action_description`, `ip_address`, `user_agent`, `created_at`, `updated_at`, `deleted_at`) VALUES
(76, '1701-027', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Princess Brotonel</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"2\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-13 23:53:13', NULL, NULL),
(77, '1701-027', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Cheryl Mae Burgos</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"2\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-13 23:53:25', NULL, NULL),
(78, '1701-027', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>April Camara</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-13 23:53:29', NULL, NULL),
(79, '1701-027', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Joyce Ann  Cambal</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-13 23:53:36', NULL, NULL),
(80, '1701-027', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Micaella Justin Camos</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-13 23:53:52', NULL, NULL),
(81, '1701-027', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Aivy Joy  Canta</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-13 23:54:00', NULL, NULL),
(82, '1701-027', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Baby Joy Carlom</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"2\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-13 23:54:06', NULL, NULL),
(83, '1701-027', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Ley-Ann Cas</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-13 23:54:14', NULL, NULL),
(84, '1701-027', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Marites Castillo</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Neshill Anguring Dumaguing</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"2\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-13 23:54:21', NULL, NULL),
(85, 'admin', 'Updated defect', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'><strong>Defect:</strong> <span class=\'text-primary fw-semibold\'></span></div>\r\n                <div class=\'mb-2\'><strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em></div>\r\n                <div class=\'mt-2\'><div class=\'mb-1\'>Name: \r\n                <span class=\'text-danger\'>\"\"</span> → \r\n                <span class=\'text-success\'>\"Operator name is this?\"</span></div><div class=\'mb-1\'>Defect_date: \r\n                <span class=\'text-danger\'>\"2025-04-02\"</span> → \r\n                <span class=\'text-success\'>\"2025-04-01\"</span></div></div>\r\n            </div>', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-14 23:46:29', NULL, NULL),
(86, 'admin', 'Updated defect', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'><strong>Defect:</strong> <span class=\'text-primary fw-semibold\'></span></div>\r\n                <div class=\'mb-2\'><strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em></div>\r\n                <div class=\'mt-2\'><div class=\'mb-1\'>Name: \r\n                <span class=\'text-danger\'>\"\"</span> → \r\n                <span class=\'text-success\'>\"Operator Name\"</span></div><div class=\'mb-1\'>Count: \r\n                <span class=\'text-danger\'>\"2\"</span> → \r\n                <span class=\'text-success\'>\"555555555555\"</span></div><div class=\'mb-1\'>Defect_date: \r\n                <span class=\'text-danger\'>\"2025-04-11\"</span> → \r\n                <span class=\'text-success\'>\"2025-04-10\"</span></div></div>\r\n            </div>', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-14 23:47:53', NULL, NULL),
(87, 'admin', 'Updated defect', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'><strong>Defect:</strong> <span class=\'text-primary fw-semibold\'>Operator Name</span></div>\r\n                <div class=\'mb-2\'><strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em></div>\r\n                <div class=\'mt-2\'><div class=\'mb-1\'>Count: \r\n                <span class=\'text-danger\'>\"2147483647\"</span> → \r\n                <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'>Defect_date: \r\n                <span class=\'text-danger\'>\"2025-04-10\"</span> → \r\n                <span class=\'text-success\'>\"2025-04-09\"</span></div></div>\r\n            </div>', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-14 23:48:06', NULL, NULL),
(88, 'admin', 'Added new operator', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Operator:</strong>\r\n                    <span class=\'text-primary fw-semibold\'>qwe ewq</span>\r\n                </div>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Added by:</strong>\r\n                    <em class=\'text-muted\'>John Michael Mancera</em>\r\n                </div>\r\n                <div class=\'mt-2\'>\r\n                    <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"qwe\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"ewq\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"qwe ewq\"</span>\"</span></div>\r\n                </div>\r\n            </div>\r\n        ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-14 23:58:34', NULL, NULL),
(89, 'admin', 'Deleted an operator', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Deleted Operator:</strong>\r\n                        <span class=\'text-danger fw-semibold\'>qwe ewq</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Deleted by:</strong>\r\n                        <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Employee ID: <span class=\'text-danger\'>\"\"</span></div>\r\n                        <div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"qwe ewq\"</span></div>\r\n                        <div class=\'mb-2\'>First Name: <span class=\'text-danger\'>\"qwe\"</span></div>\r\n                        <div class=\'mb-2\'>Middle Name: <span class=\'text-danger\'>\"\"</span></div>\r\n                        <div class=\'mb-2\'>Last Name: <span class=\'text-danger\'>\"ewq\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-14 23:58:39', NULL, NULL),
(90, 'admin', 'Deleted defect', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'><strong>Defect:</strong> <span class=\'text-danger fw-semibold\'>Operator name is this?</span></div>\r\n                <div class=\'mb-2\'><strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em></div>\r\n                <div class=\'mt-2 text-danger\'><i class=\'fas fa-trash-alt\'></i> This defect record was permanently deleted.</div>\r\n            </div>', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-15 00:03:19', NULL, NULL),
(91, 'admin', 'Deleted defect', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'><strong>Defect:</strong> <span class=\'text-danger fw-semibold\'>Operator Name</span></div>\r\n                <div class=\'mb-2\'><strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em></div>\r\n                <div class=\'mt-2 text-danger\'><i class=\'fas fa-trash-alt\'></i> This defect record was permanently deleted.</div>\r\n            </div>', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-15 00:03:29', NULL, NULL),
(92, 'admin', 'Deleted defect', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'><strong>Defect:</strong> <span class=\'text-danger fw-semibold\'>Evelyn Jhid  Mansalay</span></div>\r\n                <div class=\'mb-2\'><strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em></div>\r\n                <div class=\'mt-2 text-danger\'><i class=\'fas fa-trash-alt\'></i> This defect record was permanently deleted.</div>\r\n            </div>', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-15 00:04:05', NULL, NULL),
(93, 'admin', 'Deleted defect', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'><strong>Defect:</strong> <span class=\'text-danger fw-semibold\'>Jonalyn DeVera</span></div>\r\n                <div class=\'mb-2\'><strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em></div>\r\n                <div class=\'mt-2 text-danger\'><i class=\'fas fa-trash-alt\'></i> This defect record was permanently deleted.</div>\r\n            </div>', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-15 00:05:17', NULL, NULL),
(94, 'admin', 'Deleted defect', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'><strong>Defect:</strong> <span class=\'text-danger fw-semibold\'>Alma  Sabuito</span></div>\r\n                <div class=\'mb-2\'><strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em></div>\r\n                <div class=\'mt-2 text-danger\'><i class=\'fas fa-trash-alt\'></i> This defect record was permanently deleted.</div>\r\n            </div>', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-15 00:05:41', NULL, NULL),
(95, 'admin', 'Updated defect', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'><strong>Defect:</strong> <span class=\'text-primary fw-semibold\'>Princess Brotonel</span></div>\r\n                <div class=\'mb-2\'><strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em></div>\r\n                <div class=\'mt-2\'><div class=\'mb-1\'>Defect_date: \r\n                <span class=\'text-danger\'>\"2025-04-15\"</span> → \r\n                <span class=\'text-success\'>\"2025-04-14\"</span></div></div>\r\n            </div>', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-15 02:06:26', NULL, NULL),
(96, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Martin Abraham</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>Top 5 defects for the month of april</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>NENE</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-15 03:04:23', NULL, NULL),
(97, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Martin Abraham</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>NENE</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>Top 5 defects for the month of april</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-15 03:04:30', NULL, NULL);

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
  `rate` varchar(255) NOT NULL,
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
(28, '2025-04-03', 23, 22, 45, '93.00', 2, 1, 0, '2025-04-03 06:13:56', '2025-04-03 06:13:56'),
(29, '2025-04-04', 23, 20, 45, '96.00', 2, 0, 0, '2025-04-04 11:31:17', '2025-04-04 11:31:17'),
(30, '2025-04-05', 23, 22, 45, '94.00', 2, 0, 0, '2025-04-05 13:00:10', '2025-04-05 13:00:10'),
(31, '2025-04-07', 28, 26, 54, '94.00', 2, 1, 0, '2025-04-07 12:37:24', '2025-04-07 12:37:24'),
(32, '2025-04-08', 28, 26, 54, '94.00', 1, 2, 0, '2025-04-08 04:27:11', '2025-04-08 04:27:11'),
(33, '2025-04-09', 28, 26, 54, '94.00', 2, 1, 0, '2025-04-09 05:31:46', '2025-04-09 05:31:46'),
(34, '2025-04-11', 27, 0, 26, '97.00', 1, 0, 0, '2025-04-10 21:04:26', '2025-04-10 21:04:26'),
(35, '2025-04-12', 27, 26, 27, '100%', 2, 1, 0, '2025-04-11 23:17:19', '2025-04-11 23:17:19'),
(36, '2025-04-12', 28, 26, 45, '96%', 2, 0, 0, '2025-04-12 04:07:18', '2025-04-12 04:07:18');

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

--
-- Dumping data for table `defects`
--

INSERT INTO `defects` (`id`, `defect_type`, `empid`, `encodeby`, `id_shift`, `name`, `defect_date`, `count`, `created_at`) VALUES
(104, 'Broken/damaged connector', '1904-007', 'mary rose natanauan magsino', 2, '', '2025-04-02', 3, '2025-04-02 06:59:46'),
(105, 'Deformed terminal', '1701-027', 'Neshill Anguring Dumaguing', 1, '', '2025-04-04', 1, '2025-04-04 09:57:32'),
(106, 'Wrong insert', '1701-027', 'Neshill Anguring Dumaguing', 1, '', '2025-04-05', 2, '2025-04-04 19:32:13'),
(107, 'Wrong insert', '2101-016', 'camille joy de mesa dimaano', 2, '', '2025-04-05', 2, '2025-04-05 03:48:41'),
(108, 'Wrong insert', '1701-027', 'Neshill Anguring Dumaguing', 1, '', '2025-04-06', 1, '2025-04-05 20:59:07'),
(109, 'Deformed terminal', '1701-027', 'Neshill Anguring Dumaguing', 1, '', '2025-04-06', 2, '2025-04-05 21:00:43'),
(110, 'Deformed terminal', '1701-027', 'Neshill Anguring Dumaguing', 1, '', '2025-04-08', 3, '2025-04-07 20:34:45'),
(111, 'Wrong insert', '1701-027', 'Neshill Anguring Dumaguing', 1, '', '2025-04-08', 1, '2025-04-08 13:37:59'),
(112, 'Wrong insert', '1904-007', 'mary rose natanauan magsino', 2, '', '2025-04-11', 2, '2025-04-11 05:16:18'),
(114, 'Half-locked connector', '1901-025', 'Michelle Ann  Layosa Ramos', 1, 'NA Anguring NA', '2025-04-12', 1, '2025-04-12 07:13:08'),
(115, 'Wrong insert', '1701-027', 'Neshill Anguring Dumaguing', 2, 'Marites Castillo', '2025-04-12', 1, '2025-04-12 12:28:31'),
(116, 'Deformed/bend terminal', '1701-027', 'Neshill Anguring Dumaguing', 2, 'Jackielyn Hernandez', '2025-04-12', 1, '2025-04-12 12:46:51'),
(119, 'Wrong use of VT', 'admin', 'John Michael Mancera', 1, 'Genelyne  Sillacay', '2025-04-15', 3, '2025-04-15 00:04:54'),
(120, 'Wrong use of VT', 'admin', 'John Michael Mancera', 1, 'Shermae  Mendoza', '2025-04-15', 3, '2025-04-15 00:04:59'),
(121, 'Incoming defect', 'admin', 'John Michael Mancera', 1, 'Princess Brotonel', '2025-04-14', 2, '2025-04-15 00:05:04'),
(123, 'Wrong insert', 'admin', 'John Michael Mancera', 1, 'Alma  Sabuito', '2025-04-15', 1, '2025-04-15 00:20:54');

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
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `id` int(11) NOT NULL DEFAULT 1,
  `category_toggle` tinyint(1) NOT NULL DEFAULT 0,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`id`, `category_toggle`, `updated_at`) VALUES
(1, 0, '2025-04-15 15:53:17');

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
(3, '', 'Jonalyn DeVera', 'Jonalyn', '', 'DeVera', 0, 0, ''),
(4, '', 'Alma  Sabuito', 'Alma ', '', 'Sabuito', 0, 0, ''),
(5, '', 'Genelyne  Sillacay', 'Genelyne ', '', 'Sillacay', 0, 0, ''),
(6, '', 'Evelyn Jhid  Mansalay', 'Evelyn Jhid ', '', 'Mansalay', 0, 0, ''),
(7, '', 'Shermae  Mendoza', 'Shermae ', '', 'Mendoza', 0, 0, ''),
(8, '', 'Evelinda Obsinada', 'Evelinda', '', 'Obsinada', 0, 0, ''),
(9, '', 'Irica Padilla', 'Irica', '', 'Padilla', 0, 0, ''),
(10, '', 'Cheryl Mae Burgos', 'Cheryl Mae', '', 'Burgos', 0, 2, ''),
(11, '', 'Hazel Sumague', 'Hazel', '', 'Sumague', 0, 0, ''),
(12, '', 'Mylene Magno', ' Mylene', '', 'Magno', 0, 0, ''),
(13, '', 'Mary Grace Visda', 'Mary Grace', '', 'Visda', 0, 0, ''),
(14, '', 'Marites Castillo', 'Marites', '', 'Castillo', 0, 2, ''),
(15, '', 'Jackielyn Hernandez', 'Jackielyn', '', 'Hernandez', 0, 0, ''),
(16, '', 'Princess Brotonel', ' Princess', '', 'Brotonel', 0, 2, ''),
(17, '', 'Rica Shanine Gosim', 'Rica Shanine', '', 'Gosim', 0, 0, ''),
(18, '', 'Menchie Pelaez', ' Menchie', '', 'Pelaez', 0, 0, ''),
(19, '', 'Jenellie Belga', ' Jenellie', '', 'Belga', 0, 2, ''),
(20, '', 'Ma. Mardi Jorge', ' Ma. Mardi', '', 'Jorge', 0, 0, ''),
(21, '', 'Arjelen Barnedo', 'Arjelen', '', 'Barnedo', 0, 2, ''),
(22, '', 'Rose Ann Holgado', ' Rose Ann', '', 'Holgado', 0, 0, ''),
(23, '', 'Baby Joy Carlom', ' Baby Joy', '', 'Carlom', 0, 2, ''),
(24, '', 'Anita Jusoy', 'Anita', '', 'Jusoy', 0, 0, ''),
(25, '', 'Rodelyn Cortez', 'Rodelyn', '', 'Cortez', 0, 0, ''),
(26, '', 'Jeanelyn Albania', ' Jeanelyn', '', 'Albania', 0, 2, ''),
(27, '', 'Aivy Joy  Canta', ' Aivy Joy ', '', 'Canta', 0, 1, ''),
(28, '', 'Irene Delos Santos', ' Irene', '', 'Delos Santos', 0, 0, ''),
(29, '', 'Maryflor Dequiña', ' Maryflor', '', 'Dequiña', 0, 0, ''),
(30, '', 'Edlyn Dela Rosa,', 'Edlyn', '', 'Dela Rosa,', 0, 0, ''),
(31, '', 'Edelyn Balde', ' Edelyn', '', 'Balde', 0, 1, ''),
(32, '', 'Cris Judy  Mendoza', ' Cris Judy ', '', 'Mendoza', 0, 0, ''),
(33, '', 'Maria Kimberly Ballozos', 'Maria Kimberly', '', 'Ballozos', 0, 1, ''),
(34, '', 'Jasmin Fosana', 'Jasmin', '', 'Fosana', 0, 0, ''),
(35, '', 'Jolina Padua', ' Jolina', '', 'Padua', 0, 0, ''),
(36, '', 'Anabel Laureta', 'Anabel', '', 'Laureta', 0, 0, ''),
(37, '', 'Judy Ann Olgado', 'Judy Ann', '', 'Olgado', 0, 0, ''),
(38, '', 'Claribel Mendoza', ' Claribel', '', 'Mendoza', 0, 0, ''),
(39, '', 'Mary Ann Grajo', 'Mary Ann', '', 'Grajo ', 0, 0, ''),
(40, '', 'Roxanne Valenzuela', 'Roxanne', '', 'Valenzuela', 0, 0, ''),
(41, '', 'Mary Grace Del Pilar', 'Mary Grace', '', 'Del Pilar', 0, 0, ''),
(42, '', 'Gemma Agdoro', 'Gemma', '', 'Agdoro', 0, 1, ''),
(43, '', 'Cize Del Rosario', 'Cize', '', 'Del Rosario', 0, 0, ''),
(44, '', 'Evelyn Lumanglas', 'Evelyn', '', 'Lumanglas', 0, 0, ''),
(45, '', 'Ley-Ann Cas', ' Ley-Ann', '', 'Cas', 0, 1, ''),
(46, '', 'Rovelyn Maristela', 'Rovelyn', '', 'Maristela', 0, 0, ''),
(47, '', 'Joyce Ann  Cambal', ' Joyce Ann ', '', 'Cambal', 0, 1, ''),
(48, '', 'Jessica Puntanar', ' Jessica', '', 'Puntanar', 0, 0, ''),
(49, '', 'May Marie Ogorida', ' May Marie', '', 'Ogorida', 0, 0, ''),
(50, '', 'April Camara', 'April', '', 'Camara', 0, 1, ''),
(51, '', 'Micaella Justin Camos', 'Micaella Justin', '', 'Camos', 0, 1, ''),
(52, '', 'Rizza Esmino', 'Rizza', '', 'Esmino', 0, 0, '');

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
(41, 'admin', '1', 'John Martin Abraham', 'John', 'Martin', 'Abraham', '', '99', '2025-03-25 07:07:18', NULL, 'd88865c4a0315d589a3fee9bbfb992cd', '2025-03-24 15:07:18', 2025),
(43, '1701-035', '0', 'Kresia Anne  Conde Hernandez', 'Kresia Anne ', 'Conde', 'Hernandez', '', '0', '2025-03-25 07:59:02', NULL, '3a1e655328599b6a1208115f2271c942', '2025-03-24 15:59:02', 2025),
(48, '1904-007', '0', 'mary rose natanauan magsino', 'mary rose', 'natanauan', 'magsino', '', '0', '2025-04-01 15:47:55', NULL, '171293841d3fdd4af2e12426ce202ac9', '2025-03-31 23:47:55', 2025),
(49, '2101-016', '0', 'camille joy de mesa dimaano', 'camille joy', 'de mesa', 'dimaano', '', '0', '2025-04-01 15:48:51', NULL, 'e8fe547e1a016acdc23b7428b14cc5fe', '2025-03-31 23:48:51', 2025),
(50, '1901-025', '0', 'Michelle Ann  Layosa Ramos', 'Michelle Ann ', 'Layosa', 'Ramos', '', '0', '2025-04-01 15:49:22', NULL, '447d14c4e535892e2b2d580977dce131', '2025-03-31 23:49:22', 2025),
(51, '1701-027', '0', 'Neshill Anguring Dumaguing', 'Neshill', 'Anguring', 'Dumaguing', '', '0', '2025-04-03 17:58:33', NULL, '9efcdeb6cffc62696a4cbb641f698606', '2025-04-03 01:58:33', 2025),
(52, '2004-013', '0', 'Arlene  Pelaez', 'Arlene', '', 'Pelaez', '', '0', '2025-04-03 22:20:31', NULL, 'b749f2c7207606dc23e3c8825c173d3e', '2025-04-03 06:20:31', 2025),
(53, '1802-005', '0', 'Michelle   Dela Cruz', 'Michelle ', '', 'Dela Cruz', '', '0', '2025-04-03 22:21:37', NULL, '473732ecf904f9950da106e14d238b9b', '2025-04-03 06:21:37', 2025),
(54, '9877-222', '0', 'Test user Test user Test user', 'Test user', 'Test user', 'Test user', '', '', '2025-04-14 06:17:24', NULL, '202cb962ac59075b964b07152d234b70', '2025-04-13 14:17:24', 2025);

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
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manpower`
--
ALTER TABLE `manpower`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operators`
--
ALTER TABLE `operators`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `defects`
--
ALTER TABLE `defects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;

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
-- AUTO_INCREMENT for table `operators`
--
ALTER TABLE `operators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

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
