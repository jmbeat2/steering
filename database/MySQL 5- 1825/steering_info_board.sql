-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2025 at 03:23 PM
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

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `action_type`, `action_description`, `ip_address`, `user_agent`, `created_at`) VALUES
(17, 'admin', 'Added new user', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>ee ww qq</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong>\r\n                        <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Employee_id: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"2009-002\"</span>\"</span></div><div class=\'mb-2\'>User_type: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"0\"</span>\"</span></div><div class=\'mb-2\'>Password: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"202cb962ac59075b964b07152d234b70\"</span>\"</span></div><div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"ee\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"ww\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"qq\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"ee ww qq\"</span>\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 17:27:49'),
(18, 'admin', 'Update user', '\r\n        <div class=\'text-start\'>\r\n            <div class=\'mb-2\'>\r\n                <strong>User:</strong>\r\n                <span class=\'text-primary fw-semibold\'>ewqewq qweqweqwe ewqewqeqw</span>\r\n            </div>\r\n            <div class=\'mb-2\'>\r\n                <strong>Updated by:</strong>\r\n                <em class=\'text-muted\'>John Michael Mancera</em>\r\n            </div>\r\n            <div class=\'mt-2\'>\r\n                <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"ee\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"ewqewq\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"ww\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"qweqweqwe\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"qq\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"ewqewqeqw\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"ee ww qq\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"ewqewq qweqweqwe ewqewqeqw\"</span>\"</span></div>\r\n            </div>\r\n        </div>\r\n    ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 17:28:05'),
(19, '1701-035', 'Delete user', '\r\n        <div class=\'text-start\'>\r\n            <div class=\'mb-2\'>\r\n                <strong>User:</strong>\r\n                <span class=\'text-primary fw-semibold\'>ewqewq qweqweqwe ewqewqeqw</span>\r\n            </div>\r\n            <div class=\'mb-2\'>\r\n                <strong>Deleted by:</strong>\r\n                <em class=\'text-muted\'>Kresia Anne  Conde Hernandez</em>\r\n            </div>\r\n        </div>\r\n    ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 17:28:37'),
(20, '1701-035', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Kresia Anne  Conde Hernandez</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Kresia Anne  Conde Hernandez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"2\"</span> → <span class=\'text-success\'>\"0\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 17:28:52'),
(21, '1701-035', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>Kresia Anne  Conde Hernandez</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Kresia Anne  Conde Hernandez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"0\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 17:29:02'),
(22, '1701-035', 'Added attendance record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>Kresia Anne  Conde Hernandez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'><div class=\'mb-1\'><strong>Date:</strong> <span class=\'text-success\'>\"2025-04-10\"</span></div><div class=\'mb-1\'><strong>Ds_count:</strong> <span class=\'text-success\'>\"5\"</span></div><div class=\'mb-1\'><strong>Ns_count:</strong> <span class=\'text-success\'>\"5\"</span></div><div class=\'mb-1\'><strong>Total_mp:</strong> <span class=\'text-success\'>\"5\"</span></div><div class=\'mb-1\'><strong>Rate:</strong> <span class=\'text-success\'>\"5\"</span></div><div class=\'mb-1\'><strong>Sl:</strong> <span class=\'text-success\'>\"5\"</span></div><div class=\'mb-1\'><strong>Vl:</strong> <span class=\'text-success\'>\"5\"</span></div><div class=\'mb-1\'><strong>Nu:</strong> <span class=\'text-success\'>\"5\"</span></div></div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 17:29:16'),
(23, '1701-035', 'Updated attendance record', '\r\n            <div class=\'text-start\'>\r\n                <div class=\'mb-2\'>\r\n                    <strong>Updated by:</strong> <em class=\'text-muted\'>Kresia Anne  Conde Hernandez</em>\r\n                </div>\r\n                <div class=\'mt-2\'><div class=\'mb-1\'><strong>Ds_count:</strong> <span class=\'text-danger\'>\"32\"</span> → <span class=\'text-success\'>\"35\"</span></div><div class=\'mb-1\'><strong>Ns_count:</strong> <span class=\'text-danger\'>\"32\"</span> → <span class=\'text-success\'>\"35\"</span></div><div class=\'mb-1\'><strong>Total_mp:</strong> <span class=\'text-danger\'>\"32\"</span> → <span class=\'text-success\'>\"35\"</span></div><div class=\'mb-1\'><strong>Rate:</strong> <span class=\'text-danger\'>\"32.00\"</span> → <span class=\'text-success\'>\"35\"</span></div><div class=\'mb-1\'><strong>Sl:</strong> <span class=\'text-danger\'>\"32\"</span> → <span class=\'text-success\'>\"35\"</span></div><div class=\'mb-1\'><strong>Vl:</strong> <span class=\'text-danger\'>\"32\"</span> → <span class=\'text-success\'>\"35\"</span></div><div class=\'mb-1\'><strong>Nu:</strong> <span class=\'text-danger\'>\"32\"</span> → <span class=\'text-success\'>\"35\"</span></div></div>\r\n            </div>\r\n        ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 17:29:33'),
(24, '1701-035', 'Deleted attendance record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Deleted by:</strong> <em class=\'text-muted\'>Kresia Anne  Conde Hernandez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Record ID:</strong> <span class=\'text-danger\'>30</span></div>\r\n                        <div class=\'mb-1\'><strong>Ds_count:</strong> <span class=\'text-danger\'>35</span></div>\r\n                        <div class=\'mb-1\'><strong>Ns_count:</strong> <span class=\'text-danger\'>35</span></div>\r\n                        <div class=\'mb-1\'><strong>Total_mp:</strong> <span class=\'text-danger\'>35</span></div>\r\n                        <div class=\'mb-1\'><strong>Rate:</strong> <span class=\'text-danger\'>35.00</span></div>\r\n                        <div class=\'mb-1\'><strong>Sl:</strong> <span class=\'text-danger\'>35</span></div>\r\n                        <div class=\'mb-1\'><strong>Vl:</strong> <span class=\'text-danger\'>35</span></div>\r\n                        <div class=\'mb-1\'><strong>Nu:</strong> <span class=\'text-danger\'>35</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 17:29:39'),
(25, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>1</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>1</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 17:44:54'),
(26, '1701-035', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>Kresia Anne  Conde Hernandez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>1</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>1</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 17:45:27'),
(27, '1701-035', 'Updated Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>Kresia Anne  Conde Hernandez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>222</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>222</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 17:45:53'),
(28, '1701-035', 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'>Kresia Anne  Conde Hernandez</em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Record ID:</strong> <span class=\'text-danger\'>29</span></div>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>222</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>222</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 17:46:48'),
(29, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Title ID:</strong> <span class=\'text-danger\'>2</span></div>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>Defect Monitoring</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>Defect Monitorings</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 17:47:56'),
(30, '1701-035', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>Kresia Anne  Conde Hernandez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Title ID:</strong> <span class=\'text-danger\'>2</span></div>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>Defect Monitorings</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>Defect Monitoring</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 17:48:07'),
(31, '1701-035', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>Kresia Anne  Conde Hernandez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>Defect Monitoring</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>Defect Monitoringssss</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 17:49:14'),
(32, '1701-035', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>Kresia Anne  Conde Hernandez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>Defect Monitoringssss</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>Defect Monitoring</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 17:49:24'),
(33, '1701-035', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>Kresia Anne  Conde Hernandez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>Defect Monitoring</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>TEST</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 17:49:41'),
(34, '1701-035', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>Kresia Anne  Conde Hernandez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>TEST</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>TRY</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 17:50:06'),
(35, '1701-035', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>Kresia Anne  Conde Hernandez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>TRY</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>Crosstrain And Skilled 2024</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 17:50:30'),
(36, '1701-035', 'Updated Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>Kresia Anne  Conde Hernandez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>0</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>4</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 17:50:43'),
(37, 'admin', 'Updated Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>0</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>4</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 17:52:50'),
(38, 'admin', 'Updated Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>0</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>4</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 17:52:53'),
(39, '1701-035', 'Updated Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>Kresia Anne  Conde Hernandez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>0</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>4</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 17:53:00'),
(40, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>TEST</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>ASD</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 17:57:16'),
(41, '1701-035', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>Kresia Anne  Conde Hernandez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>ASD</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>DSA</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 17:57:23'),
(42, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>DSA</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>TOP 5 COMMON DEFECTS THIS MONTH OF APRIL</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:03:24'),
(43, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>TOP 5 COMMON DEFECTS THIS MONTH OF APRIL</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>TEST</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:04:33'),
(44, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>TEST</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>AA</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:05:32'),
(45, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>AA</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>AAA</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:06:16'),
(46, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>AAA</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>A</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:07:05'),
(47, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>A</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>ASD</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:08:14'),
(48, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>ASD</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>ASD</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:09:34'),
(49, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>ASD</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>ASD</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:10:30'),
(50, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>ASD</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>ASD</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:11:43'),
(51, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>ASD</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>ASD</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:12:00'),
(52, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>ASD</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>TEST</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:12:19'),
(53, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>TEST</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>TEST</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:12:29'),
(54, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>TEST</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>TEST</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:12:35'),
(55, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>TEST</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>TEST</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:12:48'),
(56, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>TEST</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>TEST</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:14:18'),
(57, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>TEST</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>TEST</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:15:31'),
(58, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>TEST</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>Title test</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:15:54'),
(59, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>Title test</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>TEST</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:16:14'),
(60, 'admin', 'Update user', '\r\n        <div class=\'text-start\'>\r\n            <div class=\'mb-2\'>\r\n                <strong>User:</strong>\r\n                <span class=\'text-primary fw-semibold\'>Kresia Anne  Conde Hernandez</span>\r\n            </div>\r\n            <div class=\'mb-2\'>\r\n                <strong>Updated by:</strong>\r\n                <em class=\'text-muted\'>John Michael Mancera</em>\r\n            </div>\r\n            <div class=\'mt-2\'>\r\n                <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"1\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"\"</span>\"</span></div>\r\n            </div>\r\n        </div>\r\n    ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:16:21'),
(61, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>TEST</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>TEST</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:16:32'),
(62, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>Crosstrain And Skilled 2024</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>Crosstrain And Skilled 2024</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:16:39'),
(63, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>TEST</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>ASD</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:17:32'),
(64, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>Crosstrain And Skilled 2024</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>Crosstrain And Skilled 2024</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:17:35'),
(65, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>Crosstrain And Skilled 2024</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>Crosstrain And Skilled 2024</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:17:46'),
(66, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>Crosstrain And Skilled 2024</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>Crosstrain And Skilled 2024</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:18:12'),
(67, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>Crosstrain And Skilled 2024</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>Crosstrain And Skilled 2024</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:18:43'),
(68, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>Crosstrain And Skilled 2024</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>Crosstrain And Skilled 2024</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:18:59'),
(69, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>ASD</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>AA</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:19:05'),
(70, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>Crosstrain And Skilled 2024</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>Crosstrain And Skilled 2024</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:19:17'),
(71, 'admin', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>AA</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>A</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-09 18:19:26');
INSERT INTO `activity_logs` (`id`, `user_id`, `action_type`, `action_description`, `ip_address`, `user_agent`, `created_at`) VALUES
(72, '1802-005', 'Added new user', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>ERT TRE QWE</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong>\r\n                        <em class=\'text-muted\'>Michelle   Dela Cruz</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Employee_id: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"5656-565\"</span>\"</span></div><div class=\'mb-2\'>User_type: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"0\"</span>\"</span></div><div class=\'mb-2\'>Password: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"9f61408e3afb633e50cdf1b20de6f466\"</span>\"</span></div><div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"ERT\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"TRE\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"QWE\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"<span class=\'text-success\'>\"ERT TRE QWE\"</span>\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 18:22:07'),
(73, '1802-005', 'Update Duty', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>User:</strong>\r\n                        <span class=\'text-primary fw-semibold\'>ERT TRE QWE</span>\r\n                    </div>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong>\r\n                        <em class=\'text-muted\'>Michelle   Dela Cruz</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"\"</span> → <span class=\'text-success\'>\"1\"</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 18:22:18'),
(74, '1802-005', 'Update user', '\r\n        <div class=\'text-start\'>\r\n            <div class=\'mb-2\'>\r\n                <strong>User:</strong>\r\n                <span class=\'text-primary fw-semibold\'>quick brown Brown Fox</span>\r\n            </div>\r\n            <div class=\'mb-2\'>\r\n                <strong>Updated by:</strong>\r\n                <em class=\'text-muted\'>Michelle   Dela Cruz</em>\r\n            </div>\r\n            <div class=\'mt-2\'>\r\n                <div class=\'mb-2\'>Fname: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"ERT\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"quick brown\"</span>\"</span></div><div class=\'mb-2\'>Mname: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"TRE\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"Brown\"</span>\"</span></div><div class=\'mb-2\'>Lname: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"QWE\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"Fox\"</span>\"</span></div><div class=\'mb-2\'>Duty: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"1\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"\"</span>\"</span></div><div class=\'mb-2\'>Fullname: <span class=\'text-danger\'>\"<span class=\'text-danger\'>\"ERT TRE QWE\"</span> \"</span> → <span class=\'text-success\'>\" <span class=\'text-success\'>\"quick brown Brown Fox\"</span>\"</span></div>\r\n            </div>\r\n        </div>\r\n    ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 18:22:30'),
(75, 'admin', 'Added attendance record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'><div class=\'mb-1\'><strong>Date:</strong> <span class=\'text-success\'>\"2025-04-10\"</span></div><div class=\'mb-1\'><strong>Ds_count:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Ns_count:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Total_mp:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Rate:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Sl:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Vl:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Nu:</strong> <span class=\'text-success\'>\"1\"</span></div></div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:40:03'),
(76, 'admin', 'Added attendance record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'><div class=\'mb-1\'><strong>Date:</strong> <span class=\'text-success\'>\"2025-04-10\"</span></div><div class=\'mb-1\'><strong>Ds_count:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Ns_count:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Total_mp:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Rate:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Sl:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Vl:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Nu:</strong> <span class=\'text-success\'>\"1\"</span></div></div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:40:18'),
(77, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>1</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>1</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:42:34'),
(78, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>1</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>1</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:42:41'),
(79, 'admin', 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>1</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>1</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:42:46'),
(80, 'admin', 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>1</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>1</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:42:52'),
(81, 'admin', 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>1</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>1</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:43:36'),
(82, 'admin', 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>1</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>1</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:43:40'),
(83, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>2</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>2</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:44:45'),
(84, 'admin', 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>2</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>2</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:44:49'),
(85, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>1</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>1</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:45:13'),
(86, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>2</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>2</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:45:17'),
(87, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>2</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>2</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:45:22'),
(88, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>3</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>3</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:45:26'),
(89, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>23</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>23</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:46:11'),
(90, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>22</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>22</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:46:20'),
(91, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>3</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>3</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:49:19'),
(92, NULL, 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'></em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>23</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>32</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:49:36'),
(93, NULL, 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'></em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>123</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>321</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:49:49'),
(94, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>56</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>56</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:53:57'),
(95, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>42</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>42</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:54:23'),
(96, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>123</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>3232323</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:54:27'),
(97, 'admin', 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>0</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>4</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:54:31'),
(98, 'admin', 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>3</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>3</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:55:14'),
(99, 'admin', 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>3</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>3</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:56:00'),
(100, 'admin', 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>22</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>22</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:57:11'),
(101, 'admin', 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>23</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>23</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 21:59:47'),
(102, 'admin', 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>23</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>32</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:00:24'),
(103, 'admin', 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>42</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>42</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:01:30'),
(104, 'admin', 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>56</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>56</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:03:03'),
(105, 'admin', 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>123</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>321</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:04:12'),
(106, 'admin', 'Deleted Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Deleted by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>123</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>3232323</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:06:28'),
(107, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>32</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>12</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:07:08'),
(108, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>32</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>12</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:07:33'),
(109, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>321</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>123</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:08:12'),
(110, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>32</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>12</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:08:19'),
(111, 'admin', 'Updated Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>2</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>2</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:08:25'),
(112, 'admin', 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>2</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>2</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:08:46'),
(113, 'admin', 'Updated Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>12</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>2</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:08:51'),
(114, 'admin', 'Updated Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>2</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>2</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:08:55'),
(115, 'admin', 'Updated Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>John Michael Mancera</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>2</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>2</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:08:59'),
(116, NULL, 'Deleted Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Deleted by:</strong> <em class=\'text-muted\'></em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>12</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>2</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:11:11'),
(117, NULL, 'Deleted Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Deleted by:</strong> <em class=\'text-muted\'></em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>32</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>12</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:11:17'),
(118, NULL, 'Deleted Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Deleted by:</strong> <em class=\'text-muted\'></em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>32</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>12</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:11:44'),
(119, NULL, 'Deleted Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Deleted by:</strong> <em class=\'text-muted\'></em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>32</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>12</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:12:38'),
(120, NULL, 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'></em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>321</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>123</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:13:56'),
(121, NULL, 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'></em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>2</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>2</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:14:12'),
(122, NULL, 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'></em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>2</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>2</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:14:43'),
(123, NULL, 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'></em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>32</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>23</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:14:51'),
(124, NULL, 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'></em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>12</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>32</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:15:13'),
(125, NULL, 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'></em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>21</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>12</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:15:20'),
(126, NULL, 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'></em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>44</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>44</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:15:26'),
(127, NULL, 'Updated Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'></em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>2</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>3333333333</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:15:32'),
(128, NULL, 'Updated Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'></em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>2</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>12341241</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:15:38'),
(129, NULL, 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'></em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>2</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>12341241</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:15:42');
INSERT INTO `activity_logs` (`id`, `user_id`, `action_type`, `action_description`, `ip_address`, `user_agent`, `created_at`) VALUES
(130, NULL, 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'></em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>44</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>44</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:16:42'),
(131, NULL, 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'></em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>2</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>2</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:16:59'),
(132, NULL, 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'></em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>2</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>2</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:17:05'),
(133, NULL, 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'></em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>3</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>2</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:17:08'),
(134, NULL, 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'></em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>1</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>11</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:17:10'),
(135, NULL, 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'></em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>5</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>4</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:17:13'),
(136, NULL, 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'></em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>431</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>2</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:17:17'),
(137, NULL, 'Added Crosstrain record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'></em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>45</span></div>\r\n                        <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>45</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:17:20'),
(138, NULL, 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'></em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>431</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>2</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:19:54'),
(139, NULL, 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'></em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>12</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>32</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:20:27'),
(140, NULL, 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'></em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>21</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>12</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:20:30'),
(141, NULL, 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'></em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>32</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>23</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:20:32'),
(142, NULL, 'Deleted Crosstrain record', '\r\n                    <div class=\'text-start\'>\r\n                        <div class=\'mb-2\'>\r\n                            <strong>Deleted by:</strong> <em class=\'text-muted\'></em>\r\n                        </div>\r\n                        <div class=\'mt-2\'>\r\n                            <div class=\'mb-1\'><strong>Crosstrain:</strong> <span class=\'text-danger\'>45</span></div>\r\n                            <div class=\'mb-1\'><strong>Skilled:</strong> <span class=\'text-danger\'>45</span></div>\r\n                        </div>\r\n                    </div>\r\n                ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:20:33'),
(143, '2004-013', 'Added attendance record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>Arlene  Pelaez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'><div class=\'mb-1\'><strong>Date:</strong> <span class=\'text-success\'>\"2025-04-10\"</span></div><div class=\'mb-1\'><strong>Ds_count:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Ns_count:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Total_mp:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Rate:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Sl:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Vl:</strong> <span class=\'text-success\'>\"1\"</span></div><div class=\'mb-1\'><strong>Nu:</strong> <span class=\'text-success\'>\"1\"</span></div></div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:50:51'),
(144, '2004-013', 'Added attendance record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>Arlene  Pelaez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'><div class=\'mb-1\'><strong>Date:</strong> <span class=\'text-success\'>\"2025-04-17\"</span></div><div class=\'mb-1\'><strong>Ds_count:</strong> <span class=\'text-success\'>\"2\"</span></div><div class=\'mb-1\'><strong>Ns_count:</strong> <span class=\'text-success\'>\"2\"</span></div><div class=\'mb-1\'><strong>Total_mp:</strong> <span class=\'text-success\'>\"2\"</span></div><div class=\'mb-1\'><strong>Rate:</strong> <span class=\'text-success\'>\"2\"</span></div><div class=\'mb-1\'><strong>Sl:</strong> <span class=\'text-success\'>\"2\"</span></div><div class=\'mb-1\'><strong>Vl:</strong> <span class=\'text-success\'>\"2\"</span></div><div class=\'mb-1\'><strong>Nu:</strong> <span class=\'text-success\'>\"2\"</span></div></div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:51:00'),
(145, '2004-013', 'Added attendance record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>Arlene  Pelaez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'><div class=\'mb-1\'><strong>Date:</strong> <span class=\'text-success\'>\"2025-04-10\"</span></div><div class=\'mb-1\'><strong>Ds_count:</strong> <span class=\'text-success\'>\"3\"</span></div><div class=\'mb-1\'><strong>Ns_count:</strong> <span class=\'text-success\'>\"3\"</span></div><div class=\'mb-1\'><strong>Total_mp:</strong> <span class=\'text-success\'>\"3\"</span></div><div class=\'mb-1\'><strong>Rate:</strong> <span class=\'text-success\'>\"3\"</span></div><div class=\'mb-1\'><strong>Sl:</strong> <span class=\'text-success\'>\"3\"</span></div><div class=\'mb-1\'><strong>Vl:</strong> <span class=\'text-success\'>\"3\"</span></div><div class=\'mb-1\'><strong>Nu:</strong> <span class=\'text-success\'>\"3\"</span></div></div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:51:13'),
(146, '2004-013', 'Added attendance record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Added by:</strong> <em class=\'text-muted\'>Arlene  Pelaez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'><div class=\'mb-1\'><strong>Date:</strong> <span class=\'text-success\'>\"2025-04-23\"</span></div><div class=\'mb-1\'><strong>Ds_count:</strong> <span class=\'text-success\'>\"2\"</span></div><div class=\'mb-1\'><strong>Ns_count:</strong> <span class=\'text-success\'>\"2\"</span></div><div class=\'mb-1\'><strong>Total_mp:</strong> <span class=\'text-success\'>\"2\"</span></div><div class=\'mb-1\'><strong>Rate:</strong> <span class=\'text-success\'>\"2\"</span></div><div class=\'mb-1\'><strong>Sl:</strong> <span class=\'text-success\'>\"2\"</span></div><div class=\'mb-1\'><strong>Vl:</strong> <span class=\'text-success\'>\"2\"</span></div><div class=\'mb-1\'><strong>Nu:</strong> <span class=\'text-success\'>\"2\"</span></div></div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 22:51:24'),
(147, '2004-013', 'Updated title record', '\r\n                <div class=\'text-start\'>\r\n                    <div class=\'mb-2\'>\r\n                        <strong>Updated by:</strong> <em class=\'text-muted\'>Arlene  Pelaez</em>\r\n                    </div>\r\n                    <div class=\'mt-2\'>\r\n                        <div class=\'mb-1\'><strong>Old Title:</strong> <span class=\'text-danger\'>Crosstrain And Skilled 2024</span></div>\r\n                        <div class=\'mb-1\'><strong>New Title:</strong> <span class=\'text-success\'>CROSSTRAIN AND SKILLED 2024</span></div>\r\n                    </div>\r\n                </div>\r\n            ', 'NBCP-LT-145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', '2025-04-09 23:00:03');

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
(78, '2', 2),
(79, '3', 2),
(80, '1', 11),
(81, '5', 4);

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
(31, '2025-04-07', 28, 26, 54, 94.00, 2, 1, 0, '2025-04-07 12:37:24', '2025-04-07 12:37:24'),
(32, '2025-04-08', 28, 26, 54, 94.00, 1, 2, 0, '2025-04-08 04:27:11', '2025-04-08 04:27:11'),
(33, '2025-04-09', 2, 2, 2, 2.00, 2, 2, 2, '2025-04-08 23:27:15', '2025-04-08 23:38:30'),
(37, '2025-04-10', 5, 5, 5, 5.00, 5, 5, 5, '2025-04-09 17:29:16', '2025-04-09 17:29:16'),
(38, '2025-04-10', 1, 1, 1, 1.00, 1, 1, 1, '2025-04-09 21:40:03', '2025-04-09 21:40:03'),
(39, '2025-04-10', 1, 1, 1, 1.00, 1, 1, 1, '2025-04-09 21:40:18', '2025-04-09 21:40:18'),
(40, '2025-04-10', 1, 1, 1, 1.00, 1, 1, 1, '2025-04-09 22:50:51', '2025-04-09 22:50:51'),
(41, '2025-04-17', 2, 2, 2, 2.00, 2, 2, 2, '2025-04-09 22:51:00', '2025-04-09 22:51:00'),
(42, '2025-04-10', 3, 3, 3, 3.00, 3, 3, 3, '2025-04-09 22:51:13', '2025-04-09 22:51:13'),
(43, '2025-04-23', 2, 2, 2, 2.00, 2, 2, 2, '2025-04-09 22:51:24', '2025-04-09 22:51:24');

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
(111, 'Wrong insert', '1701-027', 1, 'Neshill Anguring Dumaguing', '2025-04-08', 1, '2025-04-08 13:37:59');

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
(1, 'A');

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
(43, '1701-035', '0', 'Kresia Anne  Conde Hernandez', 'Kresia Anne ', 'Conde', 'Hernandez', '', '1', '2025-03-25 07:59:02', NULL, '202cb962ac59075b964b07152d234b70', '2025-03-24 15:59:02', 2025),
(48, '1904-007', '0', 'mary rose natanauan magsino', 'mary rose', 'natanauan', 'magsino', '', '2', '2025-04-01 15:47:55', NULL, '171293841d3fdd4af2e12426ce202ac9', '2025-03-31 23:47:55', 2025),
(49, '2101-016', '0', 'camille joy de mesa dimaano', 'camille joy', 'de mesa', 'dimaano', '', '2', '2025-04-01 15:48:51', NULL, 'e8fe547e1a016acdc23b7428b14cc5fe', '2025-03-31 23:48:51', 2025),
(50, '1901-025', '0', 'Michelle Ann  Layosa Ramos', 'Michelle Ann ', 'Layosa', 'Ramos', '', '2', '2025-04-01 15:49:22', NULL, '447d14c4e535892e2b2d580977dce131', '2025-03-31 23:49:22', 2025),
(52, '2004-013', '0', 'Arlene  Pelaez', 'Arlene', '', 'Pelaez', '', '1', '2025-04-03 22:20:31', NULL, '202cb962ac59075b964b07152d234b70', '2025-04-03 06:20:31', 2025),
(53, '1802-005', '0', 'Michelle   Dela Cruz', 'Michelle ', '', 'Dela Cruz', '', '1', '2025-04-03 22:21:37', NULL, '202cb962ac59075b964b07152d234b70', '2025-04-03 06:21:37', 2025),
(56, '5656-565', '0', 'quick brown Brown Fox', 'quick brown', 'Brown', 'Fox', '', '1', '2025-04-10 10:22:07', NULL, '9f61408e3afb633e50cdf1b20de6f466', '2025-04-09 18:22:07', 2025);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `defects`
--
ALTER TABLE `defects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

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
