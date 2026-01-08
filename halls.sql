-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2025 at 07:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `halls`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `hall_id` int(10) DEFAULT NULL,
  `slot_id` int(10) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `remarks` varchar(10000) DEFAULT current_timestamp(),
  `no_of_participants` int(11) NOT NULL,
  `dept` varchar(11) NOT NULL,
  `status` varchar(255) DEFAULT 'pending',
  `image` varchar(300) NOT NULL,
  `image1` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `hall_id`, `slot_id`, `booking_date`, `user_id`, `created_at`, `updated_at`, `remarks`, `no_of_participants`, `dept`, `status`, `image`, `image1`) VALUES
(99, 3, 28, '2024-08-30', 1, '2024-08-30 01:30:32', '2024-08-30 01:30:32', '', 0, '0', 'approved', '', ''),
(100, 3, 29, '2024-08-30', 1, '2024-08-30 01:34:58', '2024-08-30 01:34:58', 'bye', 0, '0', 'approved', '', ''),
(101, 3, 30, '2024-08-30', 232, '2024-08-30 02:16:25', '2024-08-30 02:16:25', 'ok', 0, '0', 'approved', '', ''),
(102, 3, 30, '2024-08-31', 1, '2024-08-31 19:45:57', '2024-08-31 19:45:57', '', 0, '0', 'rejected', '', ''),
(103, 3, 34, '2024-08-31', 1, '2024-08-31 19:45:57', '2024-08-31 19:45:57', '', 0, '0', 'approved', '', ''),
(104, 3, 30, '2024-08-31', 1, '2024-08-31 19:48:35', '2024-08-31 19:48:35', '', 0, '0', 'approved', '', ''),
(105, 3, 35, '2024-08-31', 1, '2024-08-31 19:49:02', '2024-08-31 19:49:02', '', 0, '0', 'approved', '', ''),
(106, 3, 33, '2024-08-31', 1, '2024-08-31 19:50:19', '2024-08-31 19:50:19', '', 0, '0', 'approved', '', ''),
(107, 3, 29, '2024-08-31', 1, '2024-08-31 19:53:55', '2024-08-31 19:53:55', '', 0, '0', 'approved', '', ''),
(108, 3, 36, '2024-08-31', 1, '2024-08-31 19:55:51', '2024-08-31 19:55:51', '', 0, '0', 'approved', '', ''),
(109, 3, 31, '2024-08-31', 1, '2024-08-31 19:58:57', '2024-08-31 19:58:57', '', 0, '0', 'approved', '', ''),
(110, 3, 39, '2024-08-31', 1, '2024-08-31 20:05:12', '2024-08-31 20:05:12', '', 0, '0', 'approved', '', ''),
(111, 3, 31, '2024-09-01', 1, '2024-09-01 06:48:50', '2024-09-01 06:48:50', '', 0, '0', 'pending', '', ''),
(112, 3, 35, '2024-09-01', 1, '2024-09-01 10:22:14', '2024-09-01 10:22:14', '', 0, '0', 'approved', '', ''),
(113, 3, 39, '2024-09-01', 1, '2024-09-01 10:49:58', '2024-09-01 10:49:58', '', 0, '0', 'approved', '', ''),
(114, 3, 29, '2024-09-01', 1, '2024-09-01 10:53:19', '2024-09-01 10:53:19', '', 0, '0', 'approved', '', ''),
(115, 3, 33, '2024-09-01', 1, '2024-09-01 10:54:09', '2024-09-01 10:54:09', '', 0, '0', 'approved', '', ''),
(116, 3, 30, '2024-09-01', 162, '2024-09-01 10:55:42', '2024-09-01 10:55:42', 'hfkhs', 0, '0', 'approved', '', ''),
(117, 3, 28, '2024-09-01', 1, '2024-09-01 12:37:12', '2024-09-01 12:37:12', 'jgjgjgh', 0, '0', 'approved', '', ''),
(118, 3, 38, '2024-09-01', 1, '2024-09-01 13:10:42', '2024-09-01 13:10:42', 'hkhjhk', 34, '0', 'approved', '', ''),
(119, 3, 34, '2024-09-01', 1, '2024-09-01 13:12:30', '2024-09-01 13:12:30', 'sawe', 34, 'fsafa', 'approved', '', ''),
(120, 3, 27, '2024-09-01', 1, '2024-09-01 13:20:32', '2024-09-01 13:20:32', 'All the best', 45, 'English', 'approved', '', ''),
(121, 3, 36, '2024-09-01', 1, '2024-09-01 13:20:32', '2024-09-01 13:20:32', 'Not good', 45, 'English', 'rejected', '', ''),
(122, 3, 37, '2024-09-01', 1, '2024-09-01 18:30:19', '2024-09-01 18:30:19', 'bye', 34, '', 'approved', 'IMG_20240705_123051.jpg', ''),
(123, 5, 61, '2024-09-01', 1, '2024-09-01 19:01:26', '2024-09-01 19:01:26', '', 56, '', 'approved', '', ''),
(124, 3, 35, '2024-09-02', 1, '2024-09-02 01:37:27', '2024-09-02 01:37:27', '', 100, 'BCA', 'approved', '', ''),
(125, 3, 34, '2024-09-02', 1, '2024-09-02 01:39:14', '2024-09-02 01:39:14', '', 100, 'BCA', 'pending', 'IMG_20240705_123051.jpg', ''),
(126, 3, 28, '2024-09-02', 1, '2024-09-02 01:39:50', '2024-09-02 01:39:50', '', 0, '', 'pending', 'WhatsApp Image 2024-07-02 at 2.59.38 PM.jpeg', ''),
(127, 3, 30, '2024-09-02', 1, '2024-09-02 01:40:18', '2024-09-02 01:40:18', '', 0, '', 'approved', 'WhatsApp Image 2024-07-02 at 3.00.14 PM.jpeg', ''),
(128, 6, 77, '2024-09-02', 1, '2024-09-02 04:42:38', '2024-09-02 04:42:38', '', 0, '', 'pending', 'IMG_20240705_123051.jpg', ''),
(129, 3, 30, '2024-09-04', 1, '2024-09-04 06:28:15', '2024-09-04 06:28:15', '', 0, '', 'pending', '', ''),
(130, 3, 28, '2024-09-05', 1, '2024-09-05 16:35:22', '2024-09-05 16:35:22', '', 0, '', 'pending', '', ''),
(131, 3, 30, '2024-09-06', 162, '2024-09-05 18:49:33', '2024-09-05 18:49:33', '', 0, '', 'pending', '', ''),
(132, 3, 30, '2024-09-12', 1, '2024-09-11 20:00:34', '2024-09-11 20:00:34', '', 0, '', 'pending', '', ''),
(133, 3, 29, '2024-09-12', 1, '2024-09-11 20:00:34', '2024-09-11 20:00:34', '', 0, '', 'pending', '', ''),
(134, 3, 28, '2024-09-21', 1, '2024-09-20 17:14:40', '2024-09-20 17:14:40', '', 0, '', 'pending', 'IMG_20240705_123051.jpg', ''),
(135, 3, 28, '2024-09-21', 1, '2024-09-20 17:15:19', '2024-09-20 17:15:19', '', 0, '', 'pending', 'IMG_20240705_123051.jpg', ''),
(136, 3, 30, '2024-09-21', 1, '2024-09-20 17:15:19', '2024-09-20 17:15:19', '', 0, '', 'pending', 'IMG_20240705_123051.jpg', ''),
(137, 3, 28, '2024-09-21', 1, '2024-09-20 17:15:53', '2024-09-20 17:15:53', '', 0, '', 'pending', 'IMG_20240705_123051.jpg', ''),
(138, 3, 30, '2024-09-21', 1, '2024-09-20 17:15:53', '2024-09-20 17:15:53', '', 0, '', 'pending', 'IMG_20240705_123051.jpg', ''),
(139, 3, 31, '2024-09-21', 1, '2024-09-20 17:15:53', '2024-09-20 17:15:53', '', 0, '', 'pending', 'IMG_20240705_123051.jpg', ''),
(140, 3, 28, '2024-09-21', 1, '2024-09-20 17:16:48', '2024-09-20 17:16:48', '', 0, '', 'pending', 'IMG_20240705_123051.jpg', ''),
(141, 3, 30, '2024-09-21', 1, '2024-09-20 17:16:48', '2024-09-20 17:16:48', '', 0, '', 'pending', 'IMG_20240705_123051.jpg', ''),
(142, 3, 31, '2024-09-21', 1, '2024-09-20 17:16:48', '2024-09-20 17:16:48', '', 0, '', 'pending', 'IMG_20240705_123051.jpg', ''),
(143, 3, 34, '2024-09-21', 1, '2024-09-20 17:16:48', '2024-09-20 17:16:48', '', 0, '', 'pending', 'IMG_20240705_123051.jpg', ''),
(144, 3, 32, '2024-09-21', 1, '2024-09-20 17:21:17', '2024-09-20 17:21:17', '', 0, '', 'pending', 'WhatsApp Image 2024-07-02 at 3.00.14 PM.jpeg', ''),
(145, 3, 38, '2024-09-21', 1, '2024-09-20 17:46:17', '2024-09-20 17:46:17', 'now', 0, '', 'pending', 'WhatsApp Image 2024-06-26 at 12.47.10 PM.jpeg', 'WhatsApp Image 2024-07-02 at 3.00.14 PM.jpeg'),
(146, 3, 39, '2024-09-21', 1, '2024-09-20 18:04:53', '2024-09-20 18:04:53', '', 0, '', 'pending', 'WhatsApp Image 2024-07-02 at 2.59.38 PM.jpeg', 'WhatsApp Image 2024-06-26 at 12.47.10 PM.jpeg'),
(147, 3, 27, '2024-09-22', 1, '2024-09-20 18:07:05', '2024-09-20 18:07:05', 'ok', 200, 'BCA', 'approved', 'IMG_20240705_123051.jpg', 'WhatsApp Image 2024-06-26 at 12.47.10 PM.jpeg'),
(148, 5, 61, '2024-09-22', 1, '2024-09-20 18:07:05', '2024-09-20 18:07:05', 'no', 200, 'BCA', 'rejected', 'IMG_20240705_123051.jpg', 'WhatsApp Image 2024-06-26 at 12.47.10 PM.jpeg'),
(149, 5, 60, '2024-09-22', 1, '2024-09-20 18:09:33', '2024-09-20 18:09:33', '', 0, '', 'pending', '', ''),
(150, 5, 61, '2024-09-22', 1, '2024-09-20 18:09:33', '2024-09-20 18:09:33', '', 0, '', 'pending', '', ''),
(151, 3, 33, '2024-09-23', 1, '2024-09-20 18:14:38', '2024-09-20 18:14:38', '', 0, '', 'pending', '', ''),
(152, 3, 34, '2024-09-23', 1, '2024-09-20 18:14:53', '2024-09-20 18:14:53', '', 0, '', 'pending', '', ''),
(153, 3, 35, '2024-09-23', 1, '2024-09-20 18:14:53', '2024-09-20 18:14:53', '', 0, '', 'pending', '', ''),
(154, 3, 30, '2024-09-22', 1, '2024-09-21 05:09:40', '2024-09-21 05:09:40', 'hai', 768, 'bca', 'pending', 'vb ss.png', 'Untitled.jpg'),
(155, 3, 34, '2024-09-22', 1, '2024-09-21 05:10:12', '2024-09-21 05:10:12', '', 0, '', 'pending', '', ''),
(156, 3, 39, '2024-09-22', 1, '2024-09-21 05:10:20', '2024-09-21 05:10:20', '', 0, '', 'pending', '', ''),
(157, 1, 1, '2025-01-31', 1, '2025-01-30 06:38:13', '2025-01-30 06:38:13', '', 0, '', 'approved', '', ''),
(158, 1, 2, '2025-01-31', 1, '2025-01-30 06:38:13', '2025-01-30 06:38:13', '', 0, '', 'pending', '', ''),
(159, 1, 3, '2025-01-31', 1, '2025-01-30 06:38:13', '2025-01-30 06:38:13', '', 0, '', 'pending', '', ''),
(160, 1, 4, '2025-01-31', 1, '2025-01-30 06:38:13', '2025-01-30 06:38:13', '', 0, '', 'pending', '', ''),
(161, 2, 19, '2025-01-31', 1, '2025-01-30 06:38:13', '2025-01-30 06:38:13', '', 0, '', 'pending', '', ''),
(162, 2, 26, '2025-01-31', 1, '2025-01-30 06:38:13', '2025-01-30 06:38:13', '', 0, '', 'pending', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `halls`
--

CREATE TABLE `halls` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `halls`
--

INSERT INTO `halls` (`id`, `name`, `updated_at`) VALUES
(1, 'DJB Audi', '0000-00-00 00:00:00'),
(2, 'DJB Basement', '0000-00-00 00:00:00'),
(3, 'GJB 1', '2024-01-06 15:24:32'),
(4, 'GJB 2', '2024-01-06 15:24:32'),
(5, 'Amphitheatre', '2024-01-06 15:24:32'),
(6, 'VC Room', '2024-01-06 15:24:32'),
(7, 'PJEC', '2024-01-06 15:24:32'),
(8, 'Board Room 3', '2024-01-06 15:24:32'),
(9, 'PG Audi', '2024-01-06 15:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

CREATE TABLE `slots` (
  `id` int(11) NOT NULL,
  `hall_id` int(5) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `slots`
--

INSERT INTO `slots` (`id`, `hall_id`, `name`, `updated_at`) VALUES
(1, 1, '07:00 - 08:00', '2024-01-06 01:19:47'),
(2, 1, '08:00 - 08:50', '2024-01-06 01:19:47'),
(3, 1, '08:50 - 09:40', '2024-01-06 01:19:47'),
(4, 1, '09:40 - 10:00', '2024-01-06 01:19:47'),
(5, 1, '10:00 - 10:50', '2024-01-06 01:19:47'),
(6, 1, '10:50 - 11:40', '2024-01-06 01:19:47'),
(7, 1, '11:40 - 12:40', '2024-01-06 01:19:47'),
(8, 1, '12:40 - 01:30', '2024-01-06 01:19:47'),
(9, 1, '01:30 - 02:20', '2024-01-06 01:19:47'),
(10, 1, '02:20 - 03:10', '2024-01-06 01:19:47'),
(11, 1, '03:10 - 04:00', '2024-01-06 01:19:47'),
(12, 1, '04:00 - 04:50', '2024-01-06 01:19:47'),
(13, 1, 'After 5:00 pm', '2024-01-06 01:19:47'),
(14, 2, '07:00 - 08:00', '2024-01-06 01:19:47'),
(15, 2, '08:00 - 08:50', '2024-01-06 01:19:47'),
(16, 2, '08:50 - 09:40', '2024-01-06 01:19:47'),
(17, 2, '09:40 - 10:00', '2024-01-06 01:19:47'),
(18, 2, '10:00 - 10:50', '2024-01-06 01:19:47'),
(19, 2, '10:50 - 11:40', '2024-01-06 01:19:47'),
(20, 2, '11:40 - 12:40', '2024-01-06 01:19:47'),
(21, 2, '12:40 - 01:30', '2024-01-06 01:19:47'),
(22, 2, '01:30 - 02:20', '2024-01-06 01:19:47'),
(23, 2, '02:20 - 03:10', '2024-01-06 01:19:47'),
(24, 2, '03:10 - 04:00', '2024-01-06 01:19:47'),
(25, 2, '04:00 - 04:50', '2024-01-06 01:19:47'),
(26, 2, 'After 5:00 pm', '2024-01-06 01:19:47'),
(27, 3, '07:00 - 08:00', '2024-01-06 01:19:47'),
(28, 3, '08:00 - 08:50', '2024-01-06 01:19:47'),
(29, 3, '08:50 - 09:40', '2024-01-06 01:19:47'),
(30, 3, '09:40 - 10:00', '2024-01-06 01:19:47'),
(31, 3, '10:00 - 10:50', '2024-01-06 01:19:47'),
(32, 3, '10:50 - 11:40', '2024-01-06 01:19:47'),
(33, 3, '11:40 - 12:40', '2024-01-06 01:19:47'),
(34, 3, '12:40 - 01:30', '2024-01-06 01:19:47'),
(35, 3, '01:30 - 02:20', '2024-01-06 01:19:47'),
(36, 3, '02:20 - 03:10', '2024-01-06 01:19:47'),
(37, 3, '03:10 - 04:00', '2024-01-06 01:19:47'),
(38, 3, '04:00 - 04:50', '2024-01-06 01:19:47'),
(39, 3, 'After 5:00 pm', '2024-01-06 01:19:47'),
(40, 4, '07:00 - 08:00', '2024-01-06 01:19:47'),
(41, 4, '08:00 - 08:50', '2024-01-06 01:19:47'),
(42, 4, '08:50 - 09:40', '2024-01-06 01:19:47'),
(43, 4, '09:40 - 10:00', '2024-01-06 01:19:47'),
(44, 4, '10:00 - 10:50', '2024-01-06 01:19:47'),
(45, 4, '10:50 - 11:40', '2024-01-06 01:19:47'),
(46, 4, '11:40 - 12:40', '2024-01-06 01:19:47'),
(47, 4, '12:40 - 01:30', '2024-01-06 01:19:47'),
(48, 4, '01:30 - 02:20', '2024-01-06 01:19:47'),
(49, 4, '02:20 - 03:10', '2024-01-06 01:19:47'),
(50, 4, '03:10 - 04:00', '2024-01-06 01:19:47'),
(51, 4, '04:00 - 04:50', '2024-01-06 01:19:47'),
(52, 4, 'After 5:00 pm', '2024-01-06 01:19:47'),
(53, 5, '07:00 - 08:00', '2024-01-06 01:19:47'),
(54, 5, '08:00 - 08:50', '2024-01-06 01:19:47'),
(55, 5, '08:50 - 09:40', '2024-01-06 01:19:47'),
(56, 5, '09:40 - 10:00', '2024-01-06 01:19:47'),
(57, 5, '10:00 - 10:50', '2024-01-06 01:19:47'),
(58, 5, '10:50 - 11:40', '2024-01-06 01:19:47'),
(59, 5, '11:40 - 12:40', '2024-01-06 01:19:47'),
(60, 5, '12:40 - 01:30', '2024-01-06 01:19:47'),
(61, 5, '01:30 - 02:20', '2024-01-06 01:19:47'),
(62, 5, '02:20 - 03:10', '2024-01-06 01:19:47'),
(63, 5, '03:10 - 04:00', '2024-01-06 01:19:47'),
(64, 5, '04:00 - 04:50', '2024-01-06 01:19:47'),
(65, 5, 'After 5:00 pm', '2024-01-06 01:19:47'),
(66, 6, '07:00 - 08:00', '2024-01-06 01:19:47'),
(67, 6, '08:00 - 08:50', '2024-01-06 01:19:47'),
(68, 6, '08:50 - 09:40', '2024-01-06 01:19:47'),
(69, 6, '09:40 - 10:00', '2024-01-06 01:19:47'),
(70, 6, '10:00 - 10:50', '2024-01-06 01:19:47'),
(71, 6, '10:50 - 11:40', '2024-01-06 01:19:47'),
(72, 6, '11:40 - 12:40', '2024-01-06 01:19:47'),
(73, 6, '12:40 - 01:30', '2024-01-06 01:19:47'),
(74, 6, '01:30 - 02:20', '2024-01-06 01:19:47'),
(75, 6, '02:20 - 03:10', '2024-01-06 01:19:47'),
(76, 6, '03:10 - 04:00', '2024-01-06 01:19:47'),
(77, 6, '04:00 - 04:50', '2024-01-06 01:19:47'),
(78, 6, 'After 5:00 pm', '2024-01-06 01:19:47'),
(79, 7, '07:00 - 08:00', '2024-01-06 01:19:47'),
(80, 7, '08:00 - 08:50', '2024-01-06 01:19:47'),
(81, 7, '08:50 - 09:40', '2024-01-06 01:19:47'),
(82, 7, '09:40 - 10:00', '2024-01-06 01:19:47'),
(83, 7, '10:00 - 10:50', '2024-01-06 01:19:47'),
(84, 7, '10:50 - 11:40', '2024-01-06 01:19:47'),
(85, 7, '11:40 - 12:40', '2024-01-06 01:19:47'),
(86, 7, '12:40 - 01:30', '2024-01-06 01:19:47'),
(87, 7, '01:30 - 02:20', '2024-01-06 01:19:47'),
(88, 7, '02:20 - 03:10', '2024-01-06 01:19:47'),
(89, 7, '03:10 - 04:00', '2024-01-06 01:19:47'),
(90, 7, '04:00 - 04:50', '2024-01-06 01:19:47'),
(91, 7, 'After 5:00 pm', '2024-01-06 01:19:47'),
(92, 8, '07:00 - 08:00', '2024-01-06 01:19:47'),
(93, 8, '08:00 - 08:50', '2024-01-06 01:19:47'),
(94, 8, '08:50 - 09:40', '2024-01-06 01:19:47'),
(95, 8, '09:40 - 10:00', '2024-01-06 01:19:47'),
(96, 8, '10:00 - 10:50', '2024-01-06 01:19:47'),
(97, 8, '10:50 - 11:40', '2024-01-06 01:19:47'),
(98, 8, '11:40 - 12:40', '2024-01-06 01:19:47'),
(99, 8, '12:40 - 01:30', '2024-01-06 01:19:47'),
(100, 8, '01:30 - 02:20', '2024-01-06 01:19:47'),
(101, 8, '02:20 - 03:10', '2024-01-06 01:19:47'),
(102, 8, '03:10 - 04:00', '2024-01-06 01:19:47'),
(103, 8, '04:00 - 04:50', '2024-01-06 01:19:47'),
(104, 8, 'After 5:00 pm', '2024-01-06 01:19:47'),
(105, 9, '07:00 - 08:00', '2024-01-06 01:19:47'),
(106, 9, '08:00 - 08:50', '2024-01-06 01:19:47'),
(107, 9, '08:50 - 09:40', '2024-01-06 01:19:47'),
(108, 9, '09:40 - 10:00', '2024-01-06 01:19:47'),
(109, 9, '10:00 - 10:50', '2024-01-06 01:19:47'),
(110, 9, '10:50 - 11:40', '2024-01-06 01:19:47'),
(111, 9, '11:40 - 12:40', '2024-01-06 01:19:47'),
(112, 9, '12:40 - 01:30', '2024-01-06 01:19:47'),
(113, 9, '01:30 - 02:20', '2024-01-06 01:19:47'),
(114, 9, '02:20 - 03:10', '2024-01-06 01:19:47'),
(115, 9, '03:10 - 04:00', '2024-01-06 01:19:47'),
(116, 9, '04:00 - 04:50', '2024-01-06 01:19:47'),
(117, 9, 'After 5:00 pm', '2024-01-06 01:19:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `official_email` varchar(255) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `official_email`, `department_name`, `phone_number`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'peter', 'admin@gmail.com', 'bca', '7904562539', 'admin', 'admin', '2024-01-06 21:32:03', '2024-06-30 16:53:36'),
(2, 'user', 'ARUNA S', 'aruna.s@mccblr.edu.in', 'Bachelor of Education', '9845850105', 'aruna.s@mccblr.edu.in', '255913', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'user', 'ASWATHI M', 'aswathi@mccblr.eduin', 'Bachelor of Education', '9620498431', 'aswathi@mccblr.eduin', '788947', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'user', 'DR SUJITHA NS', 'sujitha@mccblr.edu.in', 'Bachelor of Education', '9964556930', 'sujitha@mccblr.edu.in', '622494', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'user', 'DR. THIRUMALESHA', 'thirumalesh@mccblr.edu.in', 'Bachelor of Education', '9141119990', 'thirumalesh@mccblr.edu.in', '164664', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'user', 'KAUSHAL KUMAR PATEL', 'kaushalkumarpatel@mccblr.edu.in', 'Bachelor of Education', '9900243101', 'kaushalkumarpatel@mccblr.edu.in', '993884', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'user', 'MERIN M CHERIAN', 'merincherian@mccblr.edu.in', 'Bachelor of Education', '9488150097', 'merincherian@mccblr.edu.in', '523152', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'user', 'NISHA DAVID BORGES', 'nisha.david.borges@mccblr.edu.in', 'Bachelor of Education', '9980735395', 'nisha.david.borges@mccblr.edu.in', '195159', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'user', 'ROSHNA JOSEPH', 'roshna.joseph@mccblr.edu.in', 'Bachelor of Education', '9448728207', 'roshna.joseph@mccblr.edu.in', '434268', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'user', 'S.DURGA DEVI', 'durgadevi@mccblr.edu.in', 'Bachelor of Education', '9739651701', 'durgadevi@mccblr.edu.in', '762349', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'user', 'SHANTHI S', 'shanthisubbiah@mccblr.edu.in', 'Bachelor of Education', '9741595934', 'shanthisubbiah@mccblr.edu.in', '527913', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'user', 'BANNHI DAS', 'bannhi.das@mccblr.edu.in', 'Biotechnology', '9916977470', 'bannhi.das@mccblr.edu.in', '349061', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'user', 'DR PREETHA NAIR', 'preetha.nair@mccblr.edu.in', 'Biotechnology', '9448475388', 'preetha.nair@mccblr.edu.in', '477756', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'user', 'DR SINDHU ANOOP', 'sindhu.anoop@mccblr.edu.in', 'Biotechnology', '9986021990', 'sindhu.anoop@mccblr.edu.in', '627747', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'user', 'MS TELPHY KURIAKOSE', 'ms.telphy.kuriakose@mccblr.edu.in', 'Biotechnology', '9980474747', 'ms.telphy.kuriakose@mccblr.edu.in', '111271', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'user', 'SANDHYA K S', 'sandhyaks@mccblr.edu.in', 'Biotechnology', '7406643554', 'sandhyaks@mccblr.edu.in', '625562', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'user', 'THEJASWI BHANDARY', 'thejaswibhandary@mccblr.edu.in', 'Biotechnology', '9535235239', 'thejaswibhandary@mccblr.edu.in', '592026', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'user', 'DAKSHAYANI', 'dakshayanimalkapur@mccblr.edu.in', 'Botany', '7204216609', 'dakshayanimalkapur@mccblr.edu.in', '842147', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'user', 'DR. JAYANTHI D', 'jayanthi@mccblr.edu.in', 'Botany', '8105710702', 'jayanthi@mccblr.edu.in', '960784', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'user', 'DR. PARVATHY M', 'dr.parvathy@mccblr.edu.in', 'Botany', '9591137071', 'dr.parvathy@mccblr.edu.in', '871403', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'user', 'DR. PRIYANKA SINGLA', 'priyankasingla@mccblr.edu.in', 'Botany', '8588808449', 'priyankasingla@mccblr.edu.in', '940049', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'user', 'DR. SAVITHA, M. MURTHY ', 'dr.savithamurthy@mccblr.edu.in', 'Botany', '9880914378', 'dr.savithamurthy@mccblr.edu.in', '866021', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'user', 'DR. SHALINI, B.U.', 'shalini.b.u@mccblr.edu.in', 'Botany', '9880459945', 'shalini.b.u@mccblr.edu.in', '273882', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'user', 'GEORGE LEKHA', 'George.Lekha@mccblr.edu.in', 'Botany', '9900511967', 'George.Lekha@mccblr.edu.in', '784021', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'user', 'SANDHYA PANICKER', 'sandhya.p@mccblr.edu.in', 'Botany', '8123194813', 'sandhya.p@mccblr.edu.in', '288847', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'user', 'SUMATHI R', 'dr.sumathi@mccblr.edu.in', 'Botany', '9483508966', 'dr.sumathi@mccblr.edu.in', '867261', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'user', 'ANTO JULIET MARY M', 'ANTO.JULIET.MARY@mccblr.edu.in', 'Business Management', '9731127268', 'ANTO.JULIET.MARY@mccblr.edu.in', '703267', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'user', 'DR STANLEY VINCENT G', 'stanleyvincent@mccblr.edu.in', 'Business Management', '9787981147', 'stanleyvincent@mccblr.edu.in', '281381', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'user', 'DR. ANU KRISHNAMURTHY', 'anu.krishnamurthy@mccblr.edu.in', 'Business Management', '9449711210', 'anu.krishnamurthy@mccblr.edu.in', '856657', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'user', 'DR.ANILKUMAR R', 'Anil.r@mccblr.edu.in', 'Business Management', '7406121375', 'Anil.r@mccblr.edu.in', '798232', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'user', 'MAMATA RANI', 'MAMATA.RANI@mccblr.edu.in', 'Business Management', '8867744674', 'MAMATA.RANI@mccblr.edu.in', '196886', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'user', 'NIKITHA NEELAPPA S', 'nikithaneelappa@mccblr.edu.in', 'Business Management', '8884511047', 'nikithaneelappa@mccblr.edu.in', '397510', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'user', 'PREETI BANGARWA', 'preeti.bangarwa@mccblr.edu.in', 'Business Management', '9711878135', 'preeti.bangarwa@mccblr.edu.in', '214191', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'user', 'PRIYANKA JOE', 'priyanka.joe@mccblr.edu.in', 'Business Management', '9632102667', 'priyanka.joe@mccblr.edu.in', '866942', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'user', 'RAJKUMAR. S', 'sraj@mccblr.edu.in', 'Business Management', '9844813126', 'sraj@mccblr.edu.in', '847112', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'user', 'SHOBHA T.S', 'shobha.t.s@mccblr.edu.in', 'Business Management', '9945841070', 'shobha.t.s@mccblr.edu.in', '385600', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'user', 'SINDHU T', 'sindhu.t@mccblr.edu.in', 'Business Management', '9663403702', 'sindhu.t@mccblr.edu.in', '570907', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'user', 'SUMITA KUMAR', 'SUMITA.KUMAR@mccblr.edu.in', 'Business Management', '9844750486', 'SUMITA.KUMAR@mccblr.edu.in', '522681', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'user', 'VENISSA N SHENOY', 'VENISSA.N.SHENOY@mccblr.edu.in', 'Business Management', '9008416643', 'VENISSA.N.SHENOY@mccblr.edu.in', '529467', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'user', 'DR UMAYAL L', 'umayal.l@mccblr.edu.in', 'Chemistry', '9900937829', 'umayal.l@mccblr.edu.in', '323027', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'user', 'DR. K. C. MAHESH', 'k.c.mahesh@mccblr.edu.in ', 'Chemistry', '9901407814', 'k.c.mahesh@mccblr.edu.in ', '926865', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'user', 'DR. N.S.KAVIYARASI', 'n.s.kaviyarasi@mccblr.edu.in', 'Chemistry', '9535123503', 'n.s.kaviyarasi@mccblr.edu.in', '761742', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'user', 'DR.CHANDRAMA BASU', 'CHANDRAMA.BASU@mccblr.edu.in', 'Chemistry', '9986516737', 'CHANDRAMA.BASU@mccblr.edu.in', '523025', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'user', 'N BHAGYALAKSHMI', 'n.bhagyalakshmi@mccblr.edu.in', 'Chemistry', '8553407897', 'n.bhagyalakshmi@mccblr.edu.in', '911130', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'user', 'NETHRAVATHI C.', 'nethravathi.c@mccblr.edu.in', 'Chemistry', '9164374393', 'nethravathi.c@mccblr.edu.in', '583458', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'user', 'SYEDA HASEEN BUVABI', 'syeda.haseen.buvabi@mccblr.edu.in', 'Chemistry', '9980010211', 'syeda.haseen.buvabi@mccblr.edu.in', '595132', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'user', 'VIMALA PREETHAM RAJ', 'VIMALA.PREETHAM.RAJ@mccblr.edu.in', 'Chemistry', '9449695520', 'VIMALA.PREETHAM.RAJ@mccblr.edu.in', '668297', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'user', 'RAJANI KORAH', 'rajanikorah@mccblr.edu.in', 'CIPP', '9845311982', 'rajanikorah@mccblr.edu.in', '723238', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'user', 'AATIKA BI', 'aatika.bi@mccblr.edu.in', 'Commerce', '9972546602', 'aatika.bi@mccblr.edu.in', '757348', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'user', 'AISHWARYA.K', 'aishwarya.k@mccblr.edu.in', 'Commerce', '9900613640', 'aishwarya.k@mccblr.edu.in', '508206', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'user', 'ARUNA BHASKAR', 'aruna.bhaskar@mccblr.edu.in', 'Commerce', '9611121965', 'aruna.bhaskar@mccblr.edu.in', '379536', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'user', 'CANDIDA SMITHA', 'candida.smitha@mccblr.edu.in', 'Commerce', '9886195256', 'candida.smitha@mccblr.edu.in', '974087', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'user', 'CHAITRA UMESH', 'Chaithraumesh@mccblr.edu.in', 'Commerce', '8660624926', 'Chaithraumesh@mccblr.edu.in', '758484', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'user', 'DANESHA S', 'danesha@mccblr.edu.in', 'Commerce', '9444654864', 'danesha@mccblr.edu.in', '407462', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'user', 'DANIEL ROSARIO', 'daniel.rosario@mccblr.edu.in', 'Commerce', '9741971997', 'daniel.rosario@mccblr.edu.in', '108659', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'user', 'DR. VIJAYA CAROLINE', 'vijaya.caroline@mccblr.edu.in', 'Commerce', '9481782451', 'vijaya.caroline@mccblr.edu.in', '895914', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'user', 'DR. YOGITHA L J', 'yogitha.l.j@mccblr.edu.in', 'Commerce', '9741235106', 'yogitha.l.j@mccblr.edu.in', '612841', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'user', 'GETCHCYA SONU M C', 'getchcya@mccblr.edu.in', 'Commerce', '9632555552', 'getchcya@mccblr.edu.in', '869240', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'user', 'GRACE VARGHESE', 'gracevarghese@mccblr.edu.in', 'Commerce', '7059937518', 'gracevarghese@mccblr.edu.in', '290612', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'user', 'H PUSHPA', 'hpushpa@mccblr.edu.in', 'Commerce', '7899765343', 'hpushpa@mccblr.edu.in', '107261', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'user', 'JAIKALA L', 'jaikala.l@mccblr.edu.in', 'Commerce', '8762312042', 'jaikala.l@mccblr.edu.in', '756182', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'user', 'JANAKI J', 'janaki.j@mccblr.edu.in', 'Commerce', '9538991918', 'janaki.j@mccblr.edu.in', '617801', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'user', 'JAYALAKSHMI.N', 'jayalakshmi.n@mccblr.edu.in', 'Commerce', '9164546257', 'jayalakshmi.n@mccblr.edu.in', '924532', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'user', 'K R SURABI', 'surabi@mccblr.edu.in', 'Commerce', '9900544781', 'surabi@mccblr.edu.in', '731638', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'user', 'LAKSHMI ESHWAR', 'LAKSHMI.ESHWAR@mccblr.edu.in', 'Commerce', '9538825190', 'LAKSHMI.ESHWAR@mccblr.edu.in', '845047', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'user', 'LAKSHMI S', 'lakshmi.s@mccblr.edu.in', 'Commerce', '9449089302', 'lakshmi.s@mccblr.edu.in', '643144', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'user', 'LAVANYA K N', 'Lavanya.k.n@mccblr.edu.in', 'Commerce', '8147751935', 'Lavanya.k.n@mccblr.edu.in', '591388', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'user', 'M.JOSEPHINE REBECCA', 'josephine.rebecca@mccblr.edu.in', 'Commerce', '8296446482', 'josephine.rebecca@mccblr.edu.in', '934535', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'user', 'MEENAKSHI DINESH', 'meenakshi.dinesh@mccblr.edu.in', 'Commerce', '9845412922', 'meenakshi.dinesh@mccblr.edu.in', '214525', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'user', 'MEGHASHREE GS ', 'MEGHASHREE@mccblr.edu.in', 'Commerce', '6363194044', 'MEGHASHREE@mccblr.edu.in', '852869', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'user', 'MIFZALA ANSAR', 'mifzala.ansar@mccblr.edu.in', 'Commerce', '9916384914', 'mifzala.ansar@mccblr.edu.in', '889896', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'user', 'MONICA JANET CLIFFORD', 'monicajanetclifford@mccblr.edu.in', 'Commerce', '8095777056', 'monicajanetclifford@mccblr.edu.in', '148156', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'user', 'MONISHA M', 'monisham@mccblr.edu.in', 'Commerce', '8861566137', 'monisham@mccblr.edu.in', '491569', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'user', 'NAVYASHREE B C', 'navyashree.bc@mccblr.edu.in', 'Commerce', '7259527355', 'navyashree.bc@mccblr.edu.in', '674798', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'user', 'NEELAM SHARMA', 'neelamsharma@mccblr.edu.in', 'Commerce', '8123183138', 'neelamsharma@mccblr.edu.in', '131863', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'user', 'PADMASHREE C R', 'padmashreecr@mccblr.edu.in', 'Commerce', '9164236190', 'padmashreecr@mccblr.edu.in', '894091', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'user', 'PREEMA DSA', 'PREEMA@mccblr.edu.in', 'Commerce', '9480758394', 'PREEMA@mccblr.edu.in', '162761', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'user', 'PREMA LATHA.V', 'prema.latha.v@mccblr.edu.in', 'Commerce', '9886009863', 'prema.latha.v@mccblr.edu.in', '409830', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'user', 'RAJANI H PILLAI', 'rajani.h.pillai@mccblr.edu.in', 'Commerce', '9901126402', 'rajani.h.pillai@mccblr.edu.in', '760477', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'user', 'S SHRUTHI SINDHE', 's.shruthisindhe@mccblr.edu.in', 'Commerce', '8892064747', 's.shruthisindhe@mccblr.edu.in', '336663', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'user', 'SAMRIN A R', 'samrin.ar@mccblr.edu.in', 'Commerce', '9632316850', 'samrin.ar@mccblr.edu.in', '537065', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'user', 'SHARRON JASMINE V.', 'sharron.jasmine@mccblr.edu.in', 'Commerce', '9538550517', 'sharron.jasmine@mccblr.edu.in', '521975', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'user', 'SHIRISHA S', 'shirisha.s@mccblr.edu.in', 'Commerce', '7019511986', 'shirisha.s@mccblr.edu.in', '630797', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'user', 'SHRUTHI. R', 'shruthi.r@mccblr.edu.in', 'Commerce', '8884893423', 'shruthi.r@mccblr.edu.in', '337860', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'user', 'SITARA G', 'sitara.g@mccblr.edu.in', 'Commerce', '9972382707', 'sitara.g@mccblr.edu.in', '940038', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'user', 'SNEHA.V ', 'sneha.v@mccblr.edu.in', 'Commerce', '9535077500', 'sneha.v@mccblr.edu.in', '322721', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'user', 'SOUMYA S NAIR', 'soumya.s.nair@mccblr.edu.in', 'Commerce', '9535567072', 'soumya.s.nair@mccblr.edu.in', '265239', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'user', 'SPANDHANA PRIYA C S', 'spandanapriya@mccblr.edu.in', 'Commerce', '9844368545', 'spandanapriya@mccblr.edu.in', '225082', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'user', 'SURAKSHA', 'Suraksha@mccblr.edu.in', 'Commerce', '9496303724', 'Suraksha@mccblr.edu.in', '419878', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'user', 'SURIYA ', 'suriya@mccblr.edu.in', 'Commerce', '9886374951', 'suriya@mccblr.edu.in', '409143', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'user', 'V.N RAGHU', 'raghu@mccblr.edu.in', 'Commerce', '9886199009', 'raghu@mccblr.edu.in', '842406', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'user', 'VANITHA ', 'vanitha@mccblr.edu.in', 'Commerce', '8147281671', 'vanitha@mccblr.edu.in', '398253', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'user', 'VEDAPRADHA R', 'vedapradha@mccblr.edu.in', 'Commerce', '8861217955', 'vedapradha@mccblr.edu.in', '807721', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'user', 'YAMUNA G', 'yamunag@mccblr.edu.in', 'Commerce', '8951988460', 'yamunag@mccblr.edu.in', '476523', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'user', 'CHINMAY PANDHARIPANDE', 'chinmay.p@mccblr.edu.in', 'Communication Studies', '8884320417', 'chinmay.p@mccblr.edu.in', '392042', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'user', 'KALA RAMESH', 'KALA.RAMESH@mccblr.edu.in', 'Communication Studies', '9886831541', 'KALA.RAMESH@mccblr.edu.in', '779342', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'user', 'MANJULA BHAT', 'manjula.bhat@mccblr.edu.in', 'Communication Studies', '9900096473', 'manjula.bhat@mccblr.edu.in', '201016', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'user', 'MARY SHARON LOPEZ', 'sharonlopez@mccblr.edu.in', 'Communication Studies', '9886000699', 'sharonlopez@mccblr.edu.in', '328396', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'user', 'MYTHILI S BHAT', 'mythilisbhat@mccblr.edu.in', 'Communication Studies', '9620137765', 'mythilisbhat@mccblr.edu.in', '918850', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'user', 'NITHIN M', 'NITHIN.M@mccblr.edu.in', 'Communication Studies', '9886081269', 'NITHIN.M@mccblr.edu.in', '341999', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'user', 'DENIS R', 'denisr@mccblr.edu.in', 'Computer science', '9787369928', 'denisr@mccblr.edu.in', '106429', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'user', 'DIGVIJAY SAWANT', 'digvijay.sawant@mccblr.edu.in', 'Computer science', '9834003659', 'digvijay.sawant@mccblr.edu.in', '855988', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'user', 'K.UMA', 'kuma@mccblr.edu.in', 'Computer science', '9986058215', 'kuma@mccblr.edu.in', '670629', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'user', 'PERPETUA F NORONHA', 'perpetua.f.noronha@mccblr.edu.in', 'Computer science', '9632600720', 'perpetua.f.noronha@mccblr.edu.in', '756759', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'user', 'PETER JOSE P', 'peter.j@mccblr.edu.in', 'Computer science', '8220908288', 'peter.j@mccblr.edu.in', '861224', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'user', 'R AISHWARYA', 'r.aishwarya@mccblr.edu.in', 'Computer science', '9886225865', 'r.aishwarya@mccblr.edu.in', '125853', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'user', 'RENJU K', 'renju.k@mccblr.edu.in', 'Computer science', '9341163619', 'renju.k@mccblr.edu.in', '888913', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'user', 'SARWATH UNNISA', 'sarwath@mccblr.edu.in', 'Computer science', '8431473168', 'sarwath@mccblr.edu.in', '272921', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'user', 'SHIRLEY SHEEBA S', 'shirley.s@mccblr.edu.in', 'Computer science', '7411508345', 'shirley.s@mccblr.edu.in', '224517', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'user', 'SUSHMA MARGARET A', 'sushma.margaret.a@mccblr.edu.in', 'Computer science', '9964503191', 'sushma.margaret.a@mccblr.edu.in', '338929', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'user', 'ANJANA MANI', 'anjana.mani@mccblr.edu.in', 'Economics', '9845442116', 'anjana.mani@mccblr.edu.in', '970642', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'user', 'DR. C. J. LAKSHMI', 'lakshmi.cj@mccblr.edu.in', 'Economics', '9444327108', 'lakshmi.cj@mccblr.edu.in', '108953', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'user', 'DR. SHANTHI  S', 'shanthi.s@mccblr.edu.in', 'Economics', '9844172752', 'shanthi.s@mccblr.edu.in', '496388', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'user', 'DR. SUMA M SINGH', 'sumasingh@mccblr.edu.in', 'Economics', '9481655427', 'sumasingh@mccblr.edu.in', '234864', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'user', 'JOEL CHERIAN MANI', 'joel.cherian@mccblr.edu.in', 'Economics', '9901040611', 'joel.cherian@mccblr.edu.in', '666249', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'user', 'KAVYA SHREE KUMAR', 'kavyak@mccblr.edu.in', 'Economics', '9663330994', 'kavyak@mccblr.edu.in', '520230', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'user', 'RAJESH CHANDRA', 'rajeshchandra@mcc.edu.in', 'Economics', '9426264497', 'rajeshchandra@mcc.edu.in', '781702', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'user', 'ROOPA ADARSH', 'roopa.adarsh@mccblr.edu.in', 'Economics', '9880676445', 'roopa.adarsh@mccblr.edu.in', '652206', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'user', 'SHWETA SHARMA', 'shweta.sharma@mccblr.edu.in', 'Economics', '9742149465', 'shweta.sharma@mccblr.edu.in', '202706', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'user', 'SUNANDA B V', 'sunandabv@mccblr.edu.in', 'Economics', '9480314302', 'sunandabv@mccblr.edu.in', '472396', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'user', 'TANIA MUKHERJEE', 'tania.mukherjee@mccblr.edu.in', 'Economics', '7760511660', 'tania.mukherjee@mccblr.edu.in', '676814', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'user', 'VIJAYA PRIYA S', 'priyaeco@mccblr.edu.in', 'Economics', '9449987540', 'priyaeco@mccblr.edu.in', '729539', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'user', 'DR. UPENDRA RAJU A', 'upendraraju@mccblr.edu.in', 'Electronics', '9886608836', 'upendraraju@mccblr.edu.in', '793316', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'user', 'HASITHA K', 'HASITHA.K@mccblr.edu.in', 'Electronics', '9845559764', 'HASITHA.K@mccblr.edu.in', '985545', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'user', 'MAHANTESH SUBHASH HINGLAJE', 'mahantesh@mccblr.edu.in', 'Electronics', '9591065590', 'mahantesh@mccblr.edu.in', '456351', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'user', 'SUMA  N', 'suma.n@mccblr.edu.in', 'Electronics', '9980931961', 'suma.n@mccblr.edu.in', '680764', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'user', 'C. FANSTA FERNANDO', 'fansta.fernando@mccblr.edu.in', 'English', '7598834161', 'fansta.fernando@mccblr.edu.in', '551495', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'user', 'DR LATHA S', 'latha.s@mccblr.edu.in', 'English', '9945071285', 'latha.s@mccblr.edu.in', '215893', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'user', 'DR PAYAL MUKHERJEE', 'payal@mccblr.edu.in', 'English', '7849022142', 'payal@mccblr.edu.in', '161596', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'user', 'DR SR SAJITHA', 'sr.sajitha@mccblr.edu.in', 'English', '8618495211', 'sr.sajitha@mccblr.edu.in', '575693', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'user', 'DR. ASHIMA SOLANKI SONA', 'ashima@mccblr.edu.in', 'English', '7798242422', 'ashima@mccblr.edu.in', '904540', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'user', 'DR. CECILIA OSYANJU ', 'cecilia@mccblr.edu.in', 'English', '8454917228', 'cecilia@mccblr.edu.in', '318298', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'user', 'DR. PRIYANKA DUTTA', 'priyankadutta@mccblr.edu.in', 'English', '9620959788', 'priyankadutta@mccblr.edu.in', '576583', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'user', 'DR.ADITI CHATTERJEE', 'aditichatterjee@mccblr.edu.in', 'English', '8861406699', 'aditichatterjee@mccblr.edu.in', '414668', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'user', 'DR.NITHYA RAJESH', 'nithyak@mccblr.edu.in', 'English', '9986412040', 'nithyak@mccblr.edu.in', '121368', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'user', 'I. VINITHA CHANDRA', 'I.VINITHA.CHANDRA@mccblr.edu.in', 'English', '9962056800', 'I.VINITHA.CHANDRA@mccblr.edu.in', '866497', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'user', 'KOSHY AV', 'koshyav@mccblr.edu.in', 'English', '9019680498', 'koshyav@mccblr.edu.in', '788230', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'user', 'MAMATHA V FREEMAN', 'mamatha.v.f@mccblr.edu.in', 'English', '9742110661', 'mamatha.v.f@mccblr.edu.in', '103178', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'user', 'REVATHI. P. M', 'Revathi@mccblr.edu.in', 'English', '9945732075', 'Revathi@mccblr.edu.in', '874199', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'user', 'RIANKA SARKAR', 'riankasarkar@mccblr.edu.in', 'English', '9972806506', 'riankasarkar@mccblr.edu.in', '978311', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'user', 'RONIKA MUKHERJEE', 'ronika@mccblr.edu.in', 'English', '8861225388', 'ronika@mccblr.edu.in', '646207', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'user', 'SHERYL PUTHUR', 'sheryl.puthur@mccblr.edu.in', 'English', '9986239619', 'sheryl.puthur@mccblr.edu.in', '582696', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'user', 'SREEVIDYA SURENDRAN', 'sreevidya.surendran@mccblr.edu.in', 'English', '9703346153', 'sreevidya.surendran@mccblr.edu.in', '988174', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'user', 'HELENROSELENE', 'HELENROSELENE@mccblr.edu.in', 'Environmental Science', '9900331434', 'HELENROSELENE@mccblr.edu.in', '538702', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'user', 'SOUMYA G.S.', 'soumyamahesh@mccblr.edu.in', 'Environmental Science', '9880630947', 'soumyamahesh@mccblr.edu.in', '255597', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'user', 'ANNCEE STEPHENS', 'anncee.stephens@mccblr.edu.in', 'Fashion and Apparel Design', '8197332250', 'anncee.stephens@mccblr.edu.in', '333552', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'user', 'ARCHANA B', 'archana.b@mccblr.edu.in ', 'Fashion and Apparel Design', '9448308832', 'archana.b@mccblr.edu.in ', '526483', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'user', 'MANASA C S', 'manasa.c.s@mccblr.edu.in', 'Fashion and Apparel Design', '8123201027', 'manasa.c.s@mccblr.edu.in', '204089', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'user', 'NANDISWARI D', 'nandiswari.d@mccblr.edu.in', 'Fashion and Apparel Design', '9341097872', 'nandiswari.d@mccblr.edu.in', '692792', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'user', 'AMRITA CHAKRABORTY', 'amrita.chakraborty@mccblr.edu.in', 'Food Science and Nutrition', '8197640460', 'amrita.chakraborty@mccblr.edu.in', '745549', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'user', 'NITA ANN JOHNSON', 'nita.j@mccblr.edu.in', 'Food Science and Nutrition', '9344442125', 'nita.j@mccblr.edu.in', '114315', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'user', 'JAYANTHIMARIE VICTORIA A K', 'jayanthimarie.ak@mccblr.edu.in', 'French', '8870931867', 'jayanthimarie.ak@mccblr.edu.in', '602525', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'user', 'MARY ROCKEY', 'maryrockey@mccblr.edu.in', 'French', '7559128781', 'maryrockey@mccblr.edu.in', '417851', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'user', 'LIZY WILSON', 'lizy.wilson@mccblr.edu.in', 'German', '9740583793', 'lizy.wilson@mccblr.edu.in', '461245', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'user', 'DR. PRIYANKA', 'priyanka@mccblr.edu.in', 'Hindi', '7290859844', 'priyanka@mccblr.edu.in', '340527', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'user', 'DR. RATHOD PUNDLIK', 'rathodpundlik@mccblr.edu.in', 'Hindi', '9441161697', 'rathodpundlik@mccblr.edu.in', '272221', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'user', 'DR.ANUPAMA PA', 'anupamapa@mccblr.edu.in', 'Hindi', '8105566341', 'anupamapa@mccblr.edu.in', '775788', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'user', 'DR.KOYAL BISWAS', 'koyal.biswas@mccblr.edu.in', 'Hindi', '9035042342', 'koyal.biswas@mccblr.edu.in', '963461', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'user', 'VANISHRI BUGGI', 'vanishreebuggi@mccblr.edu.in', 'Hindi', '9482124045', 'vanishreebuggi@mccblr.edu.in', '572667', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'user', 'CHANTHU S', 'chanthu@mccblr.edu.in', 'History', '9703270676', 'chanthu@mccblr.edu.in', '606471', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'user', 'SUJIN BABU', 'sujinbabu@mccblr.edu.in', 'History', '9995057212', 'sujinbabu@mccblr.edu.in', '839760', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'user', 'A. SUNDARAVALLI', 'sundaravalli@mccblr.edu.in', 'Home Science', '9343207060', 'sundaravalli@mccblr.edu.in', '989101', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'user', 'DOROTHY ANTHONY', 'DOROTHY.ANTHONY@mccblr.edu.in', 'Home Science', '9611344998', 'DOROTHY.ANTHONY@mccblr.edu.in', '316893', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'user', 'DR. SAPNA DINESH', 'sapna.dinesh@mccblr.edu.in', 'Home Science', '9605131599', 'sapna.dinesh@mccblr.edu.in', '279996', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'user', 'SWATHI.R', 'swathi.reddy@mccblr.edu.in', 'Home Science', '9632585492', 'swathi.reddy@mccblr.edu.in', '789003', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'user', 'DR. SUJATA GUPTA KEDAR', 'sujata.gupta.kedar@mccblr.edu.in', 'Human Development', '9986103406', 'sujata.gupta.kedar@mccblr.edu.in', '348881', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'user', 'DR.SRIVIDYA.K', 'SRIVIDYAK@mccblr.edu.in', 'Human Development', '9845436108', 'SRIVIDYAK@mccblr.edu.in', '307412', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'user', 'LINGESHWARI MYSORE', 'lingeshwari.mysore@mccblr.edu.in', 'Human Development', '9663985495', 'lingeshwari.mysore@mccblr.edu.in', '179896', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'user', 'SAVITHA L', 'savitha.l@mccblr.edu.in', 'Human Development', '9686228053', 'savitha.l@mccblr.edu.in', '394424', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'user', 'AMBIKA DEVI K', 'ambika.devi@mccblr.edu.in', 'Interior Design Management', '8904030060', 'ambika.devi@mccblr.edu.in', '523102', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'user', 'DR. NAGALAKSHMI. C.S.', 'nagalakshmi.c.s@mccblr.edu.in', 'Interior Design Management', '9341246910', 'nagalakshmi.c.s@mccblr.edu.in', '506512', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'user', 'DR. PHIBANRILIN PYNGROPE', 'phibanrilinpyngrope@mccblr.edu', 'Interior Design Management', '6380154368', 'phibanrilinpyngrope@mccblr.edu', '949232', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'user', 'S.SNEHA', 'ssneha@mccblr.edu.in', 'Interior Design Management', '9886103327', 'ssneha@mccblr.edu.in', '664818', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'user', 'BINEK KRISHNA K S', 'binek.krishna@mccblr.edu.in', 'Journalism', '9884263223', 'binek.krishna@mccblr.edu.in', '379830', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'user', 'DR. SHILPA J', 'shilpa.j@mccblr.edu.in', 'Journalism', '9731564402', 'shilpa.j@mccblr.edu.in', '127834', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'user', 'SOLOMON MARIA DONALD', 'solomon.donald@mccblr.edu.in', 'Journalism', '8105109994', 'solomon.donald@mccblr.edu.in', '547046', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'user', 'VIVITHA MK', 'vivitha.mk@mccblr.edu.in', 'Journalism', '9980596843', 'vivitha.mk@mccblr.edu.in', '941601', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'user', 'ANITHA K V', 'anithakv@mccblr.edu.in', 'Kannada', '9972347304', 'anithakv@mccblr.edu.in', '878976', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'user', 'DR.CHETANA HEGDE', 'chetana.hegde@mccblr.edu.in', 'Kannada', '9591674524', 'chetana.hegde@mccblr.edu.in', '407601', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'user', 'RAVISHA H.V', 'ravisha.h.v@mccblr.edu.in', 'Kannada', '9844737240', 'ravisha.h.v@mccblr.edu.in', '763219', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'user', 'DR. MYRENE ROSELYN DSOUZA', 'myrene.roselyn.dsouza@mccblr.edu.in', 'M.Sc Biochemistry', '9886025023', 'myrene.roselyn.dsouza@mccblr.edu.in', '782005', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'user', 'DR. THILAGAVATHY, A', 'thilagavathy.a@mccblr.edu.in', 'M.Sc Biochemistry', '9449890900', 'thilagavathy.a@mccblr.edu.in', '256526', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'user', 'KAVITHA G SINGH', 'kavitha.g.singh@mccblr.edu.in', 'M.Sc Biochemistry', '9980490272', 'kavitha.g.singh@mccblr.edu.in', '631853', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'user', 'SHLINI P', 'SHLINI.P@mccblr.edu.in', 'M.Sc Biochemistry', '9844498174', 'SHLINI.P@mccblr.edu.in', '713540', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'user', 'SOWMYASHREE G', 'sowmyashree.g@mccblr.edu.in', 'M.Sc Biochemistry', '9731749093', 'sowmyashree.g@mccblr.edu.in', '231210', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'user', 'DR. VYSHALI P', 'vyshali.p@mccblr.edu.in', 'M.Sc Biotechnology', '9980433748', 'vyshali.p@mccblr.edu.in', '225742', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'user', 'PADMASHREE KULKARNI', 'padmashree.kulkarni@mccblr.edu.in', 'M.Sc Lifescience', '7760885432', 'padmashree.kulkarni@mccblr.edu.in', '302657', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'user', 'SAJITHA T P', 'SAJITHATP@mccblr.edu.in', 'M.Sc Lifescience', '9972184082', 'SAJITHATP@mccblr.edu.in', '768940', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'user', 'SOWMYA KUMAR', 'sowmya.kumar@mccblr.edu.in', 'M.Sc Lifescience', '9845783689', 'sowmya.kumar@mccblr.edu.in', '100937', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'user', 'SUBA GNANA ABRAHAM MANUEL', 'subamanuel@mccblr.edu.in', 'M.Sc Lifescience', '8073420804', 'subamanuel@mccblr.edu.in', '718571', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'user', 'DR.N.PRADEEP ', 'pradeepzax@mccblr.edu.in', 'M.Sc NanoScience and Technology', '9482849535', 'pradeepzax@mccblr.edu.in', '445265', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'user', 'DR. M. CLEMENT JOE ANAND', 'clement.joe@mccblr.edu.in', 'Mathematics', '9791648595', 'clement.joe@mccblr.edu.in', '970545', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'user', 'KAVITHA S', 'kavitha.s@mccblr.edu.in', 'Mathematics', '9611830464', 'kavitha.s@mccblr.edu.in', '423251', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'user', 'RAJSHREE DAHAL', 'rajshree.dahal@mccblr.edu.in', 'Mathematics', '6360364697', 'rajshree.dahal@mccblr.edu.in', '645638', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'user', 'THULASI K R', 'thulasi.kr@mccblr.edu.in', 'Mathematics', '9489182374', 'thulasi.kr@mccblr.edu.in', '359398', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'user', 'VARSHA S N', 'varsha.sn@mccblr.edu.in', 'Mathematics', '8123272168', 'varsha.sn@mccblr.edu.in', '448741', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'user', 'VIJAYALAKSHMI .B', 'vijayalakshmi.b@mccblr.edu.in', 'Mathematics', '9480428315', 'vijayalakshmi.b@mccblr.edu.in', '274883', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'user', 'YASHASVI S R KADAM', 'yashasvisrkadam@mccblr.edu.in', 'Mathematics', '9880318621', 'yashasvisrkadam@mccblr.edu.in', '109509', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'user', 'DR. KARUNA M', 'karuna.m@mccblr.edu.in ', 'MBA', '9886732669', 'karuna.m@mccblr.edu.in ', '239076', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'user', 'JENCY JOSE', 'JENCY.JOSE@mccblr.edu.in', 'MCA', '9538898986', 'JENCY.JOSE@mccblr.edu.in', '365009', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'user', 'P. BAVITHRA MATHARASI', 'p.bavithra.matharasi@mccblr.edu.in', 'MCA', '9900093356', 'p.bavithra.matharasi@mccblr.edu.in', '771509', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'admin', 'S REGINA LOURDHU SUGANTHI', 'reginalsuganthi@mccblr.edu.in', 'MCA', '9901905131', 'reginalsuganthi@mccblr.edu.in', '812780', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'user', 'SHAILA MARY J', 'SHAILA.MARY.J@mccblr.edu.in', 'MCA', '9844543188', 'SHAILA.MARY.J@mccblr.edu.in', '818151', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'admin', 'VIJAYALAKSHMI N', 'vijayalakshmi.n@mccblr.edu.in', 'MCA', '9845506441', 'vijayalakshmi.n@mccblr.edu.in', '980813', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'user', 'ANU MARIAM KURIAN', 'anu.mariam.kurian@mccblr.edu.in', 'MicroBiology', '8792640835', 'anu.mariam.kurian@mccblr.edu.in', '858523', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'user', 'DR. SARAYU MOHANA', 'sarayu.mohana@mccblr.edu.in', 'MicroBiology', '9538995224', 'sarayu.mohana@mccblr.edu.in', '304948', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'user', 'DR GEETHA SANTHOSH', 'geethasanthosh@mccblr.edu.in', 'Nutrition and Dietetics', '9880014658', 'geethasanthosh@mccblr.edu.in', '566596', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'user', 'DR. SANGEETA PANDEY', 'SANGEETA.PANDEY@mccblr.edu.in', 'Nutrition and Dietetics', '9535708708', 'SANGEETA.PANDEY@mccblr.edu.in', '319811', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'user', 'DR.V.PADMA', 'padma.v@mccblr.edu.in', 'Nutrition and Dietetics', '9535261774', 'padma.v@mccblr.edu.in', '488533', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'user', 'LAKSHMI JITHENDRAN', 'lakshmi.jithendran@mcc.blr.edu.in', 'Nutrition and Dietetics', '9740714824', 'lakshmi.jithendran@mcc.blr.edu.in', '293047', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'user', 'MARY REGI', 'MARY.REGI@mccblr.edu.in', 'Nutrition and Dietetics', '9886394844', 'MARY.REGI@mccblr.edu.in', '774579', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'user', 'MITRAVINDA SAVANUR', 'mitravinda@mccblr.edu.in', 'Nutrition and Dietetics', '9920150352', 'mitravinda@mccblr.edu.in', '908364', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'user', 'P. VASANTHA KUMARI', 'vasanthi.kumari@mccblr.edu.in', 'Nutrition and Dietetics', '8754826520', 'vasanthi.kumari@mccblr.edu.in', '986575', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'user', 'SHUBHI AGARWAL', 'shubhi.agarwal@mccblr.edu.in', 'Nutrition and Dietetics', '8277181581', 'shubhi.agarwal@mccblr.edu.in', '777978', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'user', 'ANJANA BASTIN', 'anjanabastin@mccblr.edu.in', 'PG Dept.Of Commerce & Management', '9747251367', 'anjanabastin@mccblr.edu.in', '727454', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'user', 'DIVYA PURNIAH', 'divya.P@mccblr.edu.in', 'PG Dept.Of Commerce & Management', '9740078911', 'divya.P@mccblr.edu.in', '743637', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'user', 'DR NITU SHARMA', 'nitusharma@mccblr.edu.in', 'PG Dept.Of Commerce & Management', '9886184813', 'nitusharma@mccblr.edu.in', '707228', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'user', 'DR. GOVINDA GOWDA HG', 'GovindaGowda@mccblr.edu.in', 'PG Dept.Of Commerce & Management', '9844169326', 'GovindaGowda@mccblr.edu.in', '438637', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'user', 'DR. RAGHAVENDRA K S', 'Raghavendra@mccblr.edu.in', 'PG Dept.Of Commerce & Management', '9844439166', 'Raghavendra@mccblr.edu.in', '365923', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'user', 'DR. SINDHU A.N', 'sindhu.a.n@mccblr.edu.in', 'PG Dept.Of Commerce & Management', '9740245236', 'sindhu.a.n@mccblr.edu.in', '655007', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'user', 'DR. SIVAKAMI.R', 'sivakamir@mccblr.edu.in', 'PG Dept.Of Commerce & Management', '9686183874', 'sivakamir@mccblr.edu.in', '646302', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'user', 'SOLOMON JAYAKUMAR', 'solomon.jayakumar@mccblr.edu.in', 'PG Dept.Of Commerce & Management', '9845144167', 'solomon.jayakumar@mccblr.edu.in', '843943', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'user', 'TISA MARIA ANTONY', 'tisamaria@mccblr.edu.in', 'PG Dept.Of Commerce & Management', '8113003445', 'tisamaria@mccblr.edu.in', '957831', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'user', 'DR.K.MARY DOLLY', 'marydolly@mccblr.edu.in', 'Physical Education', '9448620478', 'marydolly@mccblr.edu.in', '294987', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'user', 'PRAJWAL ', 'prajwal@mccblr.edu.in', 'Physical Education', '8746979681', 'prajwal@mccblr.edu.in', '210815', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'user', 'DR. RINITA J', 'RINITAJ@MCCBLR.EDU.IN', 'Physics', '9489808324', 'RINITAJ@MCCBLR.EDU.IN', '546529', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'user', 'DR.K.S.SHAMALA', 'K.S.SHAMALA@mccblr.edu.in', 'Physics', '9448344160', 'K.S.SHAMALA@mccblr.edu.in', '406440', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'role', 'name', 'official_email', 'department_name', 'phone_number', 'username', 'password', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'user', 'ALICE MATHEW', 'ALICE.MATHEW@mccblr.edu.in', 'Political Science', '9845210200', 'ALICE.MATHEW@mccblr.edu.in', '170129', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'user', 'GEORGE DIMITROV', 'georgedimitrov@mccblr.edu.in', 'Political Science', '9842369511', 'georgedimitrov@mccblr.edu.in', '301781', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'user', 'RIMPI BORAH', 'rimpiborah@mccblr.edu.in', 'Political Science', '9868636947', 'rimpiborah@mccblr.edu.in', '990977', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'user', 'AKHILA G RAO', 'akhila@mccblr.edu.in', 'Psychology', '9845067276', 'akhila@mccblr.edu.in', '249963', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'user', 'AKSHAYA P', 'akshaya.p@mccblr.edu.in', 'Psychology', '7760595265', 'akshaya.p@mccblr.edu.in', '227436', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'user', 'ARLENE FERNANDES ', 'arlene.fernandes@mccblr.edu.in', 'Psychology', '9535198687', 'arlene.fernandes@mccblr.edu.in', '851105', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'user', 'DR VIBHASRI R GURJAL', 'VIBHASRI@mccblr.edu.in', 'Psychology', '9739426117', 'VIBHASRI@mccblr.edu.in', '622965', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'user', 'DR. HAMSA N', 'hamsa.n@mccblr.edu.in', 'Psychology', '9448476051', 'hamsa.n@mccblr.edu.in', '842359', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'user', 'DR. LAKSHMI ARUN', 'LAKSHMI.ARUN@mccblr.edu.in', 'Psychology', '9901317234', 'LAKSHMI.ARUN@mccblr.edu.in', '799405', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'user', 'G. S. SHYLASHREE', 'shylashree@mccblr.edu.in', 'Psychology', '9663608339', 'shylashree@mccblr.edu.in', '902534', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'user', 'JYOTHSNA KAMATH B', 'jyothsna.kamath@mccblr.edu.in', 'Psychology', '9740928405', 'jyothsna.kamath@mccblr.edu.in', '944327', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'user', 'PALLAVI KP', 'PALLAVIKP@MCCBLR.EDU.IN', 'Psychology', '9538940374', 'PALLAVIKP@MCCBLR.EDU.IN', '321153', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'user', 'PAVITHRA RAJ ', 'pavithra.raj@mccblr.edu.in', 'Psychology', '9632489919', 'pavithra.raj@mccblr.edu.in', '866556', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'user', 'PRIYA MARIAM KURIAN', 'priyakurian@mccblr.edu.in', 'Psychology', '9986336388', 'priyakurian@mccblr.edu.in', '376084', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'user', 'S NISHA SREE', 'snisha@mccblr.edu.in', 'Psychology', '8746957550', 'snisha@mccblr.edu.in', '847033', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'user', 'S. PAVITRA', 'PAVITRAS@MCCBLR.EDU.IN', 'Psychology', '9611787565', 'PAVITRAS@MCCBLR.EDU.IN', '979109', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'user', 'SR. ARPANA', 'principal@mccblr.co.in', 'Psychology', '9481810530', 'principal@mccblr.co.in', '173840', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 'user', 'SUMANA U N', 'sumanaun@mccblr.edu.in', 'Psychology', '7760740784', 'sumanaun@mccblr.edu.in', '665137', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 'user', 'DR. JYOTHIRMAYI. PC', 'jyothirmayi.pc@mccblr.edu.in', 'Sanskrit', '9900173859', 'jyothirmayi.pc@mccblr.edu.in', '328472', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'user', 'SELVAGANAPATHY M', 'selvaganapathy@mccblr.edu.in', 'Scientific Research & Advanced Learning', '8072973947', 'selvaganapathy@mccblr.edu.in', '585969', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 'user', 'KALAVATHI', 'KALAVATHI@mccblr.edu.in', 'Sociology', '9901226605', 'KALAVATHI@mccblr.edu.in', '587774', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 'user', 'SOPHIA SHARON.M', 'SOPHIA.SHARON.M@mccblr.edu.in', 'Sociology', '9481246579', 'SOPHIA.SHARON.M@mccblr.edu.in', '496131', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 'user', 'VARSHALI BRAHMA', 'VARSHALI.BRAHMA@MCCBLR.EDU.IN', 'Sociology', '8882060417', 'VARSHALI.BRAHMA@MCCBLR.EDU.IN', '248951', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 'user', 'AMBIKA.C.', 'Ambika.c@mccblr.edu.in', 'Statistics', '9900181192', 'Ambika.c@mccblr.edu.in', '928414', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 'user', 'CHANDANA J', 'chandana.j@mccblr.edu.in', 'Statistics', '9632852622', 'chandana.j@mccblr.edu.in', '650641', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 'user', 'DR. MAMATA SHIVA SHANKAR', 'mamata.shiva.shankar@mccblr.edu.in', 'Statistics', '9663487990', 'mamata.shiva.shankar@mccblr.edu.in', '570927', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 'user', 'DR. MRS. LAKSHMI S.K.', 'MRS.LAKSHMI.S.K@mccblr.edu.in', 'Statistics', '9845763510', 'MRS.LAKSHMI.S.K@mccblr.edu.in', '468918', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 'user', 'DR.LALITHA K', 'klalitha@mccblr.edu.in', 'Travel and Tourism', '9449149907', 'klalitha@mccblr.edu.in', '899880', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 'user', 'MEGHA TAMANG', 'megha.tamang@mccblr.edu.in', 'Travel and Tourism', '7431063441', 'megha.tamang@mccblr.edu.in', '687224', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 'user', 'MUKUNDA .B.G', 'mukunda.bg@mccblr.edu.in ', 'Travel and Tourism', '9591091637', 'mukunda.bg@mccblr.edu.in ', '189004', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 'user', 'SEJANA JOSE V', 'sejana.jose@mccblr.edu.in', 'Travel and Tourism', '9886676156', 'sejana.jose@mccblr.edu.in', '844612', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 'user', 'SIVAKAMI V ', 'SIVAKAMI.v@mccblr.edu.in', 'Travel and Tourism', '8056471251', 'SIVAKAMI.v@mccblr.edu.in', '459448', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 'user', 'DEEPAK P', 'deepak.p@mccblr.edu.in', 'Zoology', '9964009076', 'deepak.p@mccblr.edu.in', '970308', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 'user', 'G. NUTHANA GRACE', 'gngrace@mccblr.edu.in', 'Zoology', '8861248875', 'gngrace@mccblr.edu.in', '388798', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 'user', 'RUFINA SUJATHA K.G.', 'RUFINA.SUJATHA.K.G@mccblr.edu.in', 'Zoology', '9448447408', 'RUFINA.SUJATHA.K.G@mccblr.edu.in', '673897', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 'user', 'SREEJA NAIR', 'sreejanair@mccblr.edu.in', 'Zoology', '8494910002', 'sreejanair@mccblr.edu.in', '206372', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halls`
--
ALTER TABLE `halls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slots`
--
ALTER TABLE `slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `halls`
--
ALTER TABLE `halls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `slots`
--
ALTER TABLE `slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
