-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 29, 2013 at 02:42 PM
-- Server version: 5.5.28
-- PHP Version: 5.3.10-1ubuntu3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `OAB_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE IF NOT EXISTS `appointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `referral_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `org_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `org_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `op_number` int(10) DEFAULT NULL,
  `mr_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `book_date` date NOT NULL,
  `case_type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `appt_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appt_date` date NOT NULL,
  `appt_time` time NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `consultant_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `consultant_fee` float DEFAULT NULL,
  `bill_no11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `concession_authority` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `concession` decimal(10,0) NOT NULL DEFAULT '0',
  `paid_amount` decimal(10,0) NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `reg_fee` float DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `referral_name`, `org_code`, `org_location`, `registration_id`, `op_number`, `mr_no`, `book_date`, `case_type`, `appt_type`, `appt_date`, `appt_time`, `department`, `consultant_id`, `consultant_fee`, `bill_no11`, `concession_authority`, `concession`, `paid_amount`, `user_id`, `patient_type`, `status`, `created_at`, `updated_at`, `reg_fee`, `date`, `time`) VALUES
(1, '', 'Sample', 'Hyderabed', '2', 1, 'MR0000002', '2012-10-16', '1', 'OP', '2012-10-16', '11:15:00', '8', '38', NULL, '35', NULL, 0, 200, '28', 'New', 'Booked', '2012-10-16 05:12:59', '2012-10-16 05:12:59', NULL, '0000-00-00', '00:00:00'),
(2, '', 'Sample', 'Hyderabed', '3', 1, 'MR0000003', '2012-10-16', '1', 'OP', '2012-10-16', '12:15:00', '5', '32', NULL, '36', NULL, 0, 200, '28', 'New', 'Booked', '2012-10-16 05:14:30', '2012-10-16 05:14:30', NULL, '0000-00-00', '00:00:00'),
(3, '', 'Sample', 'Hyderabed', '5', 2, 'MR0000005', '2012-10-16', '1', 'OP', '2012-10-16', '12:00:00', '5', '32', NULL, '38', NULL, 0, 200, '28', 'New', 'Booked', '2012-10-16 05:20:22', '2012-10-16 05:20:22', NULL, '0000-00-00', '00:00:00'),
(4, '', 'Sample', 'Hyderabed', '6', 2, 'MR0000006', '2012-10-16', '1', 'OP', '2012-10-16', '12:15:00', '8', '38', NULL, '39', NULL, 0, 200, '28', 'New', 'Booked', '2012-10-16 05:24:03', '2012-10-16 05:24:03', NULL, '0000-00-00', '00:00:00'),
(5, '', 'Sample', 'Hyderabed', '7', 1, 'MR0000007', '2012-10-16', '1', 'OP', '2012-10-16', '13:00:00', '3', '28', NULL, '40', NULL, 0, 200, '28', 'New', 'Booked', '2012-10-16 05:28:02', '2012-10-16 05:28:02', NULL, '0000-00-00', '00:00:00'),
(6, '', 'Sample', 'Hyderabed', '11', 2, 'MR0000011', '2012-10-16', '1', 'OP', '2012-10-16', '12:15:00', '3', '28', NULL, '44', NULL, 0, 200, '28', 'New', 'Booked', '2012-10-16 05:41:25', '2012-10-16 05:41:25', NULL, '0000-00-00', '00:00:00'),
(7, '2', 'Sample', 'Hyderabed', '12', 3, 'MR0000012', '2012-10-16', '1', 'OP', '2012-10-16', '13:30:00', '3', '28', NULL, '45', NULL, 0, 200, '28', 'New', 'Booked', '2012-10-16 06:15:03', '2012-10-16 06:15:03', NULL, '0000-00-00', '00:00:00'),
(8, '', 'Sample', 'Hyderabed', '13', 1, 'MR0000013', '2012-10-16', '1', 'OP', '2012-10-16', '13:15:00', '7', '36', NULL, '46', NULL, 0, 200, '28', 'New', 'Booked', '2012-10-16 06:16:42', '2012-10-16 06:16:42', NULL, '0000-00-00', '00:00:00'),
(9, '', 'Sample', 'Hyderabed', '14', 1, 'MR0000014', '2012-10-16', '1', 'OP', '2012-10-16', '12:15:00', '10', '3', NULL, '47', NULL, 0, 200, '28', 'New', 'Booked', '2012-10-16 06:18:12', '2012-10-16 06:18:12', NULL, '0000-00-00', '00:00:00'),
(10, '', 'Sample', 'Hyderabed', '15', 1, 'MR0000015', '2012-10-16', '1', 'OP', '2012-10-16', '15:30:00', '11', '9', NULL, '48', NULL, 0, 200, '28', 'New', 'Booked', '2012-10-16 06:19:37', '2012-10-16 06:19:37', NULL, '0000-00-00', '00:00:00'),
(11, '', 'Sample', 'Hyderabed', '16', 1, 'MR0000016', '2012-10-16', '1', 'OP', '2012-10-16', '14:15:00', '1', '24', NULL, '49', NULL, 0, 200, '28', 'New', 'Booked', '2012-10-16 06:21:20', '2012-10-16 06:21:20', NULL, '0000-00-00', '00:00:00'),
(12, '1', 'Sample', 'Hyderabed', '17', 1, 'MR0000017', '2012-10-16', '1', 'OP', '2012-10-16', '13:30:00', '2', '26', NULL, '50', NULL, 0, 200, '28', 'New', 'Booked', '2012-10-16 06:23:22', '2012-10-16 06:23:22', NULL, '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `aricles`
--

CREATE TABLE IF NOT EXISTS `aricles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bookappointments`
--

CREATE TABLE IF NOT EXISTS `bookappointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clinic_id` int(11) DEFAULT NULL,
  `consultant_master_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` text,
  `phonenum` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `apttime` varchar(30) DEFAULT NULL,
  `aptdate` varchar(30) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=142 ;

--
-- Dumping data for table `bookappointments`
--

INSERT INTO `bookappointments` (`id`, `clinic_id`, `consultant_master_id`, `name`, `gender`, `age`, `address`, `phonenum`, `email`, `apttime`, `aptdate`, `created_at`, `updated_at`) VALUES
(56, 1, 1, 'Hari Krishna', 'Male', 23, 'hyderabad', '9032955216', 'harijobmail@gmail.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 10:44:13', '2013-01-21 10:44:13'),
(57, 1, 1, 'Hari Krishna', 'Male', 23, 'hyderabad', '9032955216', 'harijobmail@gmail.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 10:49:13', '2013-01-21 10:49:13'),
(58, 1, 1, 'Hari Krishna', 'Male', 23, 'hyderabad', '9032955216', 'harijobmail@gmail.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 10:53:08', '2013-01-21 10:53:08'),
(59, 1, 1, 'Raj Kumar', 'Male', 28, 'Exleaz', '9032955216', 'rajkumar@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 10:57:58', '2013-01-21 10:57:58'),
(60, 1, 1, 'Hari Krishna', 'Male', 23, 'hyd', '9032955216', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 10:59:25', '2013-01-21 10:59:25'),
(61, 1, 1, 'Hari Krishna', 'Male', 23, 'hyderabad', '9032955216', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 11:04:06', '2013-01-21 11:04:06'),
(62, 1, 1, 'Hari Krishna', 'Male', 23, 'hyderabad', '9032955214', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 11:26:09', '2013-01-21 11:26:09'),
(63, 1, 1, 'Hari Krishna', 'Male', 23, 'hyderabad', '9032955216', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 11:28:12', '2013-01-21 11:28:12'),
(64, NULL, NULL, 'Hari Krishna', 'Male', 23, 'hyde', '9032955216', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 11:30:51', '2013-01-21 11:30:51'),
(65, 1, 1, 'Hari Krishna', 'Male', 23, 'Hyderabad', '9032955216', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 11:33:38', '2013-01-21 11:33:38'),
(66, 1, 1, 'Hari Krishna', 'Male', 23, 'hyderabad', '9032955216', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 12:18:39', '2013-01-21 12:18:39'),
(67, 1, 1, 'Hari Krishna', 'Male', 23, 'hyd', '9032955216', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 12:19:42', '2013-01-21 12:19:42'),
(68, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 12:21:21', '2013-01-21 12:21:21'),
(69, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 12:26:27', '2013-01-21 12:26:27'),
(70, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 12:29:00', '2013-01-21 12:29:00'),
(71, NULL, NULL, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 12:36:38', '2013-01-21 12:36:38'),
(72, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 12:40:11', '2013-01-21 12:40:11'),
(73, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 12:41:14', '2013-01-21 12:41:14'),
(74, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 12:42:24', '2013-01-21 12:42:24'),
(75, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 12:43:07', '2013-01-21 12:43:07'),
(76, NULL, NULL, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 12:46:22', '2013-01-21 12:46:22'),
(77, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 12:51:42', '2013-01-21 12:51:42'),
(78, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 12:57:45', '2013-01-21 12:57:45'),
(79, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 12:59:12', '2013-01-21 12:59:12'),
(80, 1, 1, 'sudeer', 'Male', -1, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 13:01:43', '2013-01-21 13:01:43'),
(81, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 13:05:56', '2013-01-21 13:05:56'),
(82, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 13:06:58', '2013-01-21 13:06:58'),
(83, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 13:09:08', '2013-01-21 13:09:08'),
(84, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 13:11:28', '2013-01-21 13:11:28'),
(85, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 13:18:41', '2013-01-21 13:18:41'),
(86, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 13:46:21', '2013-01-21 13:46:21'),
(87, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 13:52:08', '2013-01-21 13:52:08'),
(88, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 14:04:19', '2013-01-21 14:04:19'),
(89, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 14:07:44', '2013-01-21 14:07:44'),
(90, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 14:10:01', '2013-01-21 14:10:01'),
(91, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 14:11:39', '2013-01-21 14:11:39'),
(92, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 14:14:14', '2013-01-21 14:14:14'),
(93, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 14:16:36', '2013-01-21 14:16:36'),
(94, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 14:19:21', '2013-01-21 14:19:21'),
(95, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 14:20:50', '2013-01-21 14:20:50'),
(96, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 14:22:22', '2013-01-21 14:22:22'),
(97, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 14:24:00', '2013-01-21 14:24:00'),
(98, 1, 1, 'Moorthy', 'Male', 30, 'exleaz', '', 'moorthy@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 14:26:39', '2013-01-21 14:26:39'),
(99, 1, 1, 'Raj Kumar', 'Male', NULL, '', '', 'rajkumar@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 14:27:21', '2013-01-21 14:27:21'),
(100, 1, 1, 'Hari Krishna', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   11:00 to 11:15   ', '   2013-01-25   ', '2013-01-21 14:39:17', '2013-01-21 14:39:17'),
(101, 1, 1, 'Hari Krishna', 'Male', 23, 'hyd', '9032955216', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-23   ', '2013-01-22 05:22:12', '2013-01-22 05:22:12'),
(102, 1, 1, 'Hari Krishna', 'Male', NULL, '', '9032955216', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-23   ', '2013-01-22 06:02:07', '2013-01-22 06:02:07'),
(103, 1, 1, 'Hari Krishna', 'Male', NULL, '', '9652627686', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-23   ', '2013-01-22 06:10:21', '2013-01-22 06:10:21'),
(104, 1, 1, 'Hari Krishna', 'Male', NULL, '', '9652627686', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-23   ', '2013-01-22 06:21:16', '2013-01-22 06:21:16'),
(105, 1, 1, 'Hari Krishna', 'Male', NULL, '', '9652627686', '', '   10:15 AM to 10:30 AM   ', ' 2013-01-23   ', '2013-01-22 06:23:56', '2013-01-22 06:23:56'),
(106, 1, 1, 'Hari Krishna', 'Male', NULL, '', '9652627686', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-23   ', '2013-01-22 06:25:28', '2013-01-22 06:25:28'),
(107, 1, 1, 'Hari Krishna', 'Male', NULL, '', '9652627686', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-23   ', '2013-01-22 06:29:53', '2013-01-22 06:29:53'),
(108, 1, 1, 'Hari Krishna', 'Male', NULL, '', '9652627686', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-23   ', '2013-01-22 06:38:29', '2013-01-22 06:38:29'),
(109, 1, 1, 'Hari Krishna', 'Male', NULL, '', '9652627686', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-23   ', '2013-01-22 06:43:19', '2013-01-22 06:43:19'),
(110, 1, 1, 'Hari Krishna', 'Male', 23, '', '9652627686', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-23   ', '2013-01-22 06:51:20', '2013-01-22 06:51:20'),
(111, 1, 1, 'Raj Kumar', 'Male', 30, '', '7799887111', 'rajkumar@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-23   ', '2013-01-22 06:55:15', '2013-01-22 06:55:15'),
(112, 1, 1, 'HARI', 'Male', 32, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', '   2013-01-23   ', '2013-01-22 14:37:56', '2013-01-22 14:37:56'),
(113, 1, 1, 'Sudheer', 'Male', 23, 'Hyd', '9032955216', 'hariexleaz.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 06:05:44', '2013-01-26 06:05:44'),
(114, 1, 1, '', 'Male', NULL, '', '', 'hariexleaz.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 06:08:39', '2013-01-26 06:08:39'),
(115, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 06:11:03', '2013-01-26 06:11:03'),
(116, 1, 1, 'Saritha', 'Male', 23, 'Hyderabad', '9494924956', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 06:14:43', '2013-01-26 06:14:43'),
(117, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 06:24:57', '2013-01-26 06:24:57'),
(118, 1, 1, '', 'Male', NULL, '', '', 'hariexleaz.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 06:26:43', '2013-01-26 06:26:43'),
(119, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 06:27:38', '2013-01-26 06:27:38'),
(120, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 06:32:58', '2013-01-26 06:32:58'),
(121, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 06:35:43', '2013-01-26 06:35:43'),
(122, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 06:48:42', '2013-01-26 06:48:42'),
(123, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 06:51:46', '2013-01-26 06:51:46'),
(124, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 07:19:26', '2013-01-26 07:19:26'),
(125, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 07:20:27', '2013-01-26 07:20:27'),
(126, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 07:21:27', '2013-01-26 07:21:27'),
(127, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 07:32:20', '2013-01-26 07:32:20'),
(128, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 07:35:28', '2013-01-26 07:35:28'),
(129, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 07:39:26', '2013-01-26 07:39:26'),
(130, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 07:41:47', '2013-01-26 07:41:47'),
(131, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 07:46:00', '2013-01-26 07:46:00'),
(132, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 07:50:47', '2013-01-26 07:50:47'),
(133, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 07:51:46', '2013-01-26 07:51:46'),
(134, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 07:53:04', '2013-01-26 07:53:04'),
(135, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 07:54:54', '2013-01-26 07:54:54'),
(136, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 11:04:27', '2013-01-26 11:04:27'),
(137, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 11:06:40', '2013-01-26 11:06:40'),
(138, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   10:15 AM to 10:30 AM   ', ' 2013-01-27   ', '2013-01-26 11:08:05', '2013-01-26 11:08:05'),
(139, 1, 1, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', '   01:45 PM to 02:00 PM   ', '   2013-01-27   ', '2013-01-26 11:25:29', '2013-01-26 11:25:29'),
(140, 1, 2, 'Sudheer', 'Male', 22, '', '9494924956', 'harikrishna.g@exleaz.com', '   02:00 PM to 02:15 PM   ', ' 2013-01-27   ', '2013-01-26 12:29:06', '2013-01-26 12:29:06'),
(141, 1, 2, '', 'Male', NULL, '', '9494924955', 'harikrishna.g@exleaz.com', '   02:00 PM to 02:15 PM   ', ' 2013-01-27   ', '2013-01-26 12:33:04', '2013-01-26 12:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `book_lab_appointments`
--

CREATE TABLE IF NOT EXISTS `book_lab_appointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_name` varchar(150) DEFAULT NULL,
  `lab_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` text,
  `phonenum` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `aptdate` varchar(30) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `book_lab_appointments`
--

INSERT INTO `book_lab_appointments` (`id`, `test_name`, `lab_id`, `name`, `gender`, `age`, `address`, `phonenum`, `email`, `amount`, `aptdate`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'shanmukh', 'Male', 25, 'bORABANDA', '8121252242', 'sudheer.puthineedi@gmail.com', NULL, NULL, '2013-01-23 10:04:33', '2013-01-23 10:04:33'),
(2, NULL, NULL, '', 'Male', NULL, '', '', '', NULL, NULL, '2013-01-23 10:34:55', '2013-01-23 10:34:55'),
(3, NULL, NULL, '', 'Male', NULL, '', '9032955216', 'harikrishna.g@exleaz.com', NULL, NULL, '2013-01-24 15:08:06', '2013-01-24 15:08:06'),
(4, NULL, NULL, '', 'Male', NULL, '', '9032955216', 'harikrishna.g@exleaz.com', NULL, NULL, '2013-01-24 15:10:03', '2013-01-24 15:10:03'),
(5, NULL, NULL, '', 'Male', NULL, '', '', '', NULL, NULL, '2013-01-24 15:22:22', '2013-01-24 15:22:22'),
(6, NULL, NULL, 'Hari', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', NULL, '2013-01-03', '2013-01-26 11:37:17', '2013-01-26 11:37:17'),
(7, NULL, NULL, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', NULL, '', '2013-01-26 11:52:34', '2013-01-26 11:52:34'),
(8, NULL, NULL, '', 'Male', NULL, '', '', 'harikrishna.g@exleaz.com', NULL, '2013-01-03', '2013-01-26 11:55:30', '2013-01-26 11:55:30'),
(9, NULL, NULL, 'Hari', 'Male', 23, '', '', 'harikrishna.g@exleaz.com', NULL, '', '2013-01-26 12:00:17', '2013-01-26 12:00:17'),
(10, NULL, NULL, 'Hari', 'Male', 23, '', '', 'harikrishna.g@exleaz.com', NULL, '', '2013-01-26 12:04:30', '2013-01-26 12:04:30'),
(11, NULL, NULL, 'Hari', 'Male', 23, '', '', 'harikrishna.g@exleaz.com', NULL, '', '2013-01-26 12:07:26', '2013-01-26 12:07:26'),
(12, NULL, NULL, 'Hari', 'Male', 23, '', '', 'harikrishna.g@exleaz.com', NULL, '', '2013-01-26 12:12:38', '2013-01-26 12:12:38'),
(13, NULL, NULL, 'Hari', 'Male', 23, '', '', 'harikrishna.g@exleaz.com', NULL, '2013-01-01', '2013-01-26 12:16:46', '2013-01-26 12:16:46'),
(14, NULL, NULL, 'Hari', 'Male', 23, '', '9494924956', 'harikrishna.g@exleaz.com', NULL, '2013-01-01', '2013-01-26 12:22:36', '2013-01-26 12:22:36'),
(15, NULL, NULL, 'Hari', 'Male', 23, 'hyderabad', '9494924956', 'harikrishna.g@exleaz.com', NULL, '2013-01-10', '2013-01-26 12:25:59', '2013-01-26 12:25:59'),
(16, NULL, NULL, '', 'Male', NULL, '', '9494924956', 'harikrishna.g@exleaz.com', NULL, '', '2013-01-26 12:38:49', '2013-01-26 12:38:49'),
(17, NULL, NULL, '', 'Male', NULL, '', '', '', NULL, '', '2013-01-28 12:34:24', '2013-01-28 12:34:24'),
(18, NULL, NULL, '', 'Male', NULL, '', '', '', NULL, '', '2013-01-28 12:48:47', '2013-01-28 12:48:47');

-- --------------------------------------------------------

--
-- Table structure for table `charge_masters`
--

CREATE TABLE IF NOT EXISTS `charge_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_id` int(11) DEFAULT NULL,
  `test_group_id` int(11) DEFAULT NULL,
  `test_sub_group_id` int(11) DEFAULT NULL,
  `test_name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `discount_percent` float DEFAULT NULL,
  `fixed_price` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `charge_masters`
--

INSERT INTO `charge_masters` (`id`, `lab_id`, `test_group_id`, `test_sub_group_id`, `test_name`, `price`, `discount`, `discount_percent`, `fixed_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Blood Test', 1000, 100, 10, 900, '2013-01-22 12:39:17', '2013-01-22 12:39:17'),
(2, 1, 1, 1, 'Urine test', 1000, 100, 10, 900, '2013-01-22 12:39:17', '2013-01-22 12:39:17');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `state_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_country_id` (`state_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 'Hyderabad', 1, '2012-12-06 10:28:23', '2012-12-06 10:28:26'),
(2, 'pune', 2, '2012-12-06 10:28:38', '2013-01-23 10:56:10'),
(3, 'london', 2, '2012-12-06 18:30:00', '2012-12-07 10:02:08'),
(4, 'Benguluru', 2, '2012-12-07 05:14:13', '2013-01-23 10:56:06'),
(5, 'Mumbai', 2, '2012-12-07 05:14:13', '2013-01-23 10:56:05'),
(6, 'Kolkata', 2, '2012-12-07 05:14:13', '2013-01-23 10:56:03'),
(7, 'Dhakha', 3, '2012-12-07 06:16:06', '2012-12-07 06:16:06'),
(9, 'Sydney', 4, '2012-12-07 06:21:01', '2012-12-07 06:21:01'),
(10, 'Melborne', 4, '2012-12-07 06:21:01', '2012-12-07 06:21:01'),
(12, 'bhuvaneswar', 2, '2012-12-11 08:01:43', '2013-01-23 10:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `clinicbranches`
--

CREATE TABLE IF NOT EXISTS `clinicbranches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clinic_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branches` int(11) DEFAULT NULL,
  `discontinue` tinyint(1) DEFAULT NULL,
  `expdate` date DEFAULT NULL,
  `address1` text COLLATE utf8_unicode_ci,
  `address2` text COLLATE utf8_unicode_ci,
  `location_id` int(11) DEFAULT NULL,
  `landmarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `fax` int(11) DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `altemail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `choosefile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=66 ;

--
-- Dumping data for table `clinicbranches`
--

INSERT INTO `clinicbranches` (`id`, `clinic_id`, `name`, `displayname`, `branches`, `discontinue`, `expdate`, `address1`, `address2`, `location_id`, `landmarks`, `city_id`, `state_id`, `country_id`, `pin`, `fax`, `website`, `email`, `altemail`, `choosefile`, `created_at`, `updated_at`) VALUES
(1, 1, 'Vijaya Multispeciality Hospital Koti branch', 'Koti', NULL, 0, '2012-02-12', 'hyd', 'hyd', 1, 'hyd', 1, 1, 1, 222222, NULL, '', 's@gmail.com', '', NULL, '2012-12-24 10:45:51', '2012-12-24 10:45:51'),
(2, 2, 'Yashodha Multispeciality Hospital Vijayawada Branch', 'Vijayawada', NULL, 0, '2012-01-12', 'sss', 'sss', 1, 'sss', 1, 1, 1, 222222, NULL, '', 's@gmail.com', '', NULL, '2012-12-24 10:43:06', '2012-12-24 10:43:06'),
(3, 1, 'Vijaya Multispeciality Hospital Madhapur Branch', 'Vijaya', NULL, 0, '2012-08-12', 'www', '', 1, '', 1, 1, 1, 222222, NULL, '', 's@gmail.com', '', NULL, '2012-12-26 14:34:44', '2012-12-26 14:34:44'),
(4, 5, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(5, 5, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(6, 5, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(7, 5, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(8, 5, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(9, 6, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(10, 6, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(11, 6, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(12, 6, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(13, 6, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(14, 7, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(15, 7, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(16, 7, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(17, 7, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(18, 7, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(19, 8, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(20, 8, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(21, 8, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(22, 8, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(23, 8, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(24, 9, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(25, 9, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(26, 9, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(27, 9, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(28, 9, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(29, 10, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(30, 10, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(31, 10, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(32, 10, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(33, 10, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(34, 11, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(35, 11, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(36, 11, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(37, 11, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(38, 11, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(39, 12, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(40, 12, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(41, 12, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(42, 12, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(43, 12, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(44, 13, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:19:30', '2013-01-28 15:19:30'),
(45, 13, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:19:30', '2013-01-28 15:19:30'),
(46, 13, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:19:30', '2013-01-28 15:19:30'),
(47, 13, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:19:30', '2013-01-28 15:19:30'),
(48, 13, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:19:30', '2013-01-28 15:19:30'),
(49, 14, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:19:30', '2013-01-28 15:19:30'),
(50, 14, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:19:30', '2013-01-28 15:19:30'),
(51, 14, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:19:30', '2013-01-28 15:19:30'),
(52, 14, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:19:30', '2013-01-28 15:19:30'),
(53, 14, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:19:30', '2013-01-28 15:19:30'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2013-01-28 15:20:10', '2013-01-28 15:20:10'),
(55, 15, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:20:10', '2013-01-28 15:20:10'),
(56, 15, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:20:10', '2013-01-28 15:20:10'),
(57, 15, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:20:10', '2013-01-28 15:20:10'),
(58, 15, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:20:10', '2013-01-28 15:20:10'),
(59, 15, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:20:10', '2013-01-28 15:20:10'),
(60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2013-01-28 15:20:11', '2013-01-28 15:20:11'),
(61, 16, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:20:11', '2013-01-28 15:20:11'),
(62, 16, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:20:11', '2013-01-28 15:20:11'),
(63, 16, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:20:11', '2013-01-28 15:20:11'),
(64, 16, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:20:11', '2013-01-28 15:20:11'),
(65, 16, '', '', NULL, 0, NULL, '', '', 1, '', 1, NULL, NULL, NULL, NULL, '', '', '', NULL, '2013-01-28 15:20:11', '2013-01-28 15:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `clinicbranch_timings`
--

CREATE TABLE IF NOT EXISTS `clinicbranch_timings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clinicbranch_id` int(11) DEFAULT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `morning_from` time DEFAULT NULL,
  `morning_to` time DEFAULT NULL,
  `evening_from` time DEFAULT NULL,
  `evening_to` time DEFAULT NULL,
  `others_from` time DEFAULT NULL,
  `others_to` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `clinics`
--

CREATE TABLE IF NOT EXISTS `clinics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branches` int(11) DEFAULT NULL,
  `discontinue` tinyint(1) DEFAULT NULL,
  `expdate` date DEFAULT NULL,
  `address1` text COLLATE utf8_unicode_ci,
  `address2` text COLLATE utf8_unicode_ci,
  `location_id` int(11) DEFAULT NULL,
  `landmarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `phonenum` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` int(11) DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `altemail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `choosefile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`id`, `user_id`, `name`, `displayname`, `branches`, `discontinue`, `expdate`, `address1`, `address2`, `location_id`, `landmarks`, `city_id`, `state_id`, `country_id`, `pin`, `phonenum`, `fax`, `website`, `email`, `altemail`, `choosefile`, `rating`, `discount`, `created_at`, `updated_at`, `image`) VALUES
(1, 1, 'Vijaya Multispeciality Hospital', 'Vijaya', 1, 0, '2012-04-12', '\r\nVijaya Hospitals,Ameerpet,Hyderabad', '3', 1, 'sss', 1, 1, 1, 333333, '9032955216', 22, '', 's@gmail.com', '', NULL, 3, 10, '2012-12-24 10:43:06', '2012-12-24 10:43:06', '/vijaya.jpg'),
(2, 2, 'Yashodha Multispeciality Hospital', 'Yashodha', 1, 0, '2012-04-12', 'Yashoda Hospitals,Ameerpet,Hyderabad', '4', 1, 'near borabanda', 1, 1, 1, 222222, '9032955216', NULL, 'www', 's@gmail.com', '', NULL, 4, 5, '2012-12-24 10:45:51', '2012-12-24 10:45:51', '/yashodha.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `clinic_flows`
--

CREATE TABLE IF NOT EXISTS `clinic_flows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `speciality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `clinic_profile_masters`
--

CREATE TABLE IF NOT EXISTS `clinic_profile_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clinic_id` int(11) DEFAULT NULL,
  `clinicbranch_id` int(11) DEFAULT NULL,
  `about` text COLLATE utf8_unicode_ci,
  `services` text COLLATE utf8_unicode_ci,
  `packages` text COLLATE utf8_unicode_ci,
  `photo1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_clinic_profile_masters_on_clinic_id` (`clinic_id`),
  KEY `index_clinic_profile_masters_on_clinicbranches_id` (`clinicbranch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `clinic_profile_masters`
--

INSERT INTO `clinic_profile_masters` (`id`, `clinic_id`, `clinicbranch_id`, `about`, `services`, `packages`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '\r\nAbout Us\r\n\r\nBrief History\r\n\r\nThe journey of Vijaya Hospitals started way back in 1989 as a small clinic, where Dr G Surender Rao practised paediatrics. With his international education and experience he became one of Hyderabad’s leading child specialists in a short span of time. Not satisfied with personal success he joined forces with his brother, Mr Ravinder Rao, an experienced business leader, to start Yashoda Hospitals.\r\n\r\nVijaya Group has come a long way since then, from a small clinic in Hyderabad, to a 1,000-plus-bed facility, with three hospitals at Secunderabad, Malakpet and Somajiguda. With a nursing school and college attached to each hospital. It has more than 450 doctors, 1,500 nurses and a total of 4,000 staff comprising of paramedical and other support staff.', 'Cardiology,Cardiothoracic Surgery,', 'Vijaya Hospitals are putting greate effort in the field of hospital managements.', 'hospital.jpg', 'hosp.jpeg', 'hospital.jpg', 'hosp.jpeg', 'hosp.jpeg', '2012-12-01 00:00:00', '2013-01-02 11:15:40'),
(2, 2, 1, '\r\nAbout Us\r\n\r\nBrief History\r\n\r\nThe journey of Yashoda Hospitals started way back in 1989 as a small clinic, where Dr G Surender Rao practised paediatrics. With his international education and experience he became one of Hyderabad’s leading child specialists in a short span of time. Not satisfied with personal success he joined forces with his brother, Mr Ravinder Rao, an experienced business leader, to start Yashoda Hospitals.\r\n\r\nYashoda Group has come a long way since then, from a small clinic in Hyderabad, to a 1,000-plus-bed facility, with three hospitals at Secunderabad, Malakpet and Somajiguda. With a nursing school and college attached to each hospital. It has more than 450 doctors, 1,500 nurses and a total of 4,000 staff comprising of paramedical and other support staff.', 'Cardiology,Cardiothoracic Surgery', 'Yashodha Hospitals are putting greate effort in the field of hospital managements.', NULL, NULL, NULL, NULL, NULL, '2012-12-01 00:00:00', '2012-12-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `clinic_timings`
--

CREATE TABLE IF NOT EXISTS `clinic_timings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clinic_id` int(11) DEFAULT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `morning_from` time DEFAULT NULL,
  `morning_to` time DEFAULT NULL,
  `evening_from` time DEFAULT NULL,
  `evening_to` time DEFAULT NULL,
  `others_from` time DEFAULT NULL,
  `others_to` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=114 ;

--
-- Dumping data for table `clinic_timings`
--

INSERT INTO `clinic_timings` (`id`, `clinic_id`, `day`, `morning_from`, `morning_to`, `evening_from`, `evening_to`, `others_from`, `others_to`, `created_at`, `updated_at`) VALUES
(1, 1, 'MON', '12:24:00', '12:24:00', '12:24:00', '12:24:00', '12:24:00', NULL, '2012-12-26 12:24:12', '2012-12-26 12:24:12'),
(3, 2, 'MON', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '2012-12-26 12:32:15', '2012-12-26 12:32:15'),
(4, 1, 'TUES', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 'WED', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 'THU', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 'FRI', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 'SAT', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, 'SUN', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 2, 'TUE', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '2012-12-26 12:32:15', '2012-12-26 12:32:15'),
(11, 2, 'WED', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '2012-12-26 12:32:15', '2012-12-26 12:32:15'),
(12, 2, 'THU', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '2012-12-26 12:32:15', '2012-12-26 12:32:15'),
(13, 2, 'FRI', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '2012-12-26 12:32:15', '2012-12-26 12:32:15'),
(14, 2, 'SAT', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '2012-12-26 12:32:15', '2012-12-26 12:32:15'),
(15, 2, 'SUN', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '2012-12-26 12:32:15', '2012-12-26 12:32:15'),
(16, 3, 'MON', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '2013-01-28 14:10:47', '2013-01-28 14:10:47'),
(17, 3, 'MON', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '2013-01-28 14:10:48', '2013-01-28 14:10:48'),
(18, 3, 'MON', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '2013-01-28 14:10:48', '2013-01-28 14:10:48'),
(19, 3, 'MON', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '2013-01-28 14:10:48', '2013-01-28 14:10:48'),
(20, 3, 'MON', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '2013-01-28 14:10:48', '2013-01-28 14:10:48'),
(21, 3, 'MON', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '2013-01-28 14:10:48', '2013-01-28 14:10:48'),
(22, 3, 'MON', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '2013-01-28 14:10:48', '2013-01-28 14:10:48'),
(23, 4, 'MON', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '2013-01-28 14:10:48', '2013-01-28 14:10:48'),
(24, 4, 'MON', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '2013-01-28 14:10:48', '2013-01-28 14:10:48'),
(25, 4, 'MON', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '2013-01-28 14:10:48', '2013-01-28 14:10:48'),
(26, 4, 'MON', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '2013-01-28 14:10:48', '2013-01-28 14:10:48'),
(27, 4, 'MON', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '2013-01-28 14:10:48', '2013-01-28 14:10:48'),
(28, 4, 'MON', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '2013-01-28 14:10:48', '2013-01-28 14:10:48'),
(29, 4, 'MON', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '14:10:00', '2013-01-28 14:10:48', '2013-01-28 14:10:48'),
(30, 5, 'MON', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(31, 5, 'MON', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(32, 5, 'MON', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(33, 5, 'MON', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(34, 5, 'MON', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(35, 5, 'MON', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(36, 5, 'MON', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(37, 6, 'MON', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(38, 6, 'MON', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(39, 6, 'MON', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(40, 6, 'MON', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(41, 6, 'MON', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(42, 6, 'MON', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(43, 6, 'MON', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '14:39:00', '2013-01-28 14:39:49', '2013-01-28 14:39:49'),
(44, 7, 'MON', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(45, 7, 'MON', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(46, 7, 'MON', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(47, 7, 'MON', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(48, 7, 'MON', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(49, 7, 'MON', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(50, 7, 'MON', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(51, 8, 'MON', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(52, 8, 'MON', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(53, 8, 'MON', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(54, 8, 'MON', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(55, 8, 'MON', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(56, 8, 'MON', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(57, 8, 'MON', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '15:00:00', '2013-01-28 15:00:31', '2013-01-28 15:00:31'),
(58, 9, 'MON', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(59, 9, 'MON', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(60, 9, 'MON', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(61, 9, 'MON', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(62, 9, 'MON', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(63, 9, 'MON', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(64, 9, 'MON', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(65, 10, 'MON', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(66, 10, 'MON', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(67, 10, 'MON', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(68, 10, 'MON', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(69, 10, 'MON', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(70, 10, 'MON', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(71, 10, 'MON', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '15:14:00', '2013-01-28 15:14:14', '2013-01-28 15:14:14'),
(72, 11, 'MON', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(73, 11, 'MON', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(74, 11, 'MON', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(75, 11, 'MON', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(76, 11, 'MON', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(77, 11, 'MON', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(78, 11, 'MON', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(79, 12, 'MON', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(80, 12, 'MON', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '2013-01-28 15:16:12', '2013-01-28 15:16:12'),
(81, 12, 'MON', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '2013-01-28 15:16:13', '2013-01-28 15:16:13'),
(82, 12, 'MON', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '2013-01-28 15:16:13', '2013-01-28 15:16:13'),
(83, 12, 'MON', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '2013-01-28 15:16:13', '2013-01-28 15:16:13'),
(84, 12, 'MON', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '2013-01-28 15:16:13', '2013-01-28 15:16:13'),
(85, 12, 'MON', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '15:16:00', '2013-01-28 15:16:13', '2013-01-28 15:16:13'),
(86, 13, 'MON', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '2013-01-28 15:19:30', '2013-01-28 15:19:30'),
(87, 13, 'MON', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '2013-01-28 15:19:30', '2013-01-28 15:19:30'),
(88, 13, 'MON', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '2013-01-28 15:19:30', '2013-01-28 15:19:30'),
(89, 13, 'MON', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '2013-01-28 15:19:30', '2013-01-28 15:19:30'),
(90, 13, 'MON', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '2013-01-28 15:19:30', '2013-01-28 15:19:30'),
(91, 13, 'MON', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '2013-01-28 15:19:30', '2013-01-28 15:19:30'),
(92, 13, 'MON', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '2013-01-28 15:19:30', '2013-01-28 15:19:30'),
(93, 14, 'MON', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '2013-01-28 15:19:30', '2013-01-28 15:19:30'),
(94, 14, 'MON', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '2013-01-28 15:19:31', '2013-01-28 15:19:31'),
(95, 14, 'MON', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '2013-01-28 15:19:31', '2013-01-28 15:19:31'),
(96, 14, 'MON', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '2013-01-28 15:19:31', '2013-01-28 15:19:31'),
(97, 14, 'MON', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '2013-01-28 15:19:31', '2013-01-28 15:19:31'),
(98, 14, 'MON', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '2013-01-28 15:19:31', '2013-01-28 15:19:31'),
(99, 14, 'MON', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '15:19:00', '2013-01-28 15:19:31', '2013-01-28 15:19:31'),
(100, 15, 'MON', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '2013-01-28 15:20:10', '2013-01-28 15:20:10'),
(101, 15, 'MON', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '2013-01-28 15:20:10', '2013-01-28 15:20:10'),
(102, 15, 'MON', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '2013-01-28 15:20:10', '2013-01-28 15:20:10'),
(103, 15, 'MON', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '2013-01-28 15:20:10', '2013-01-28 15:20:10'),
(104, 15, 'MON', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '2013-01-28 15:20:10', '2013-01-28 15:20:10'),
(105, 15, 'MON', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '2013-01-28 15:20:10', '2013-01-28 15:20:10'),
(106, 15, 'MON', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '2013-01-28 15:20:10', '2013-01-28 15:20:10'),
(107, 16, 'MON', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '2013-01-28 15:20:11', '2013-01-28 15:20:11'),
(108, 16, 'MON', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '2013-01-28 15:20:11', '2013-01-28 15:20:11'),
(109, 16, 'MON', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '2013-01-28 15:20:11', '2013-01-28 15:20:11'),
(110, 16, 'MON', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '2013-01-28 15:20:11', '2013-01-28 15:20:11'),
(111, 16, 'MON', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '2013-01-28 15:20:11', '2013-01-28 15:20:11'),
(112, 16, 'MON', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '2013-01-28 15:20:11', '2013-01-28 15:20:11'),
(113, 16, 'MON', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '15:20:00', '2013-01-28 15:20:11', '2013-01-28 15:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `consultants`
--

CREATE TABLE IF NOT EXISTS `consultants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clinic_id` int(11) DEFAULT NULL,
  `clinicbranch_id` int(50) DEFAULT NULL,
  `speciality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `workingat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mrngtime` time DEFAULT NULL,
  `evengtime` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `location_id` int(11) NOT NULL,
  `caption` varchar(122) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `consultants`
--

INSERT INTO `consultants` (`id`, `name`, `clinic_id`, `clinicbranch_id`, `speciality`, `experience`, `workingat`, `mrngtime`, `evengtime`, `created_at`, `updated_at`, `location_id`, `caption`) VALUES
(1, 'Dr.Chandra Shekar', 1, 1, 'neurologist', 4, 'hyderabad', '12:12:00', '00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(2, 'Dr.Madhu', 2, 1, 'kidnis', 4, 'Erragadda', '12:12:00', '00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL),
(3, 'Dr.Teja', 3, 1, 'Eyes', 4, 'Bhimavaram', '12:12:00', '00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `consultant_masters`
--

CREATE TABLE IF NOT EXISTS `consultant_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `degree` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specialities` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_exp` int(11) DEFAULT NULL,
  `conformation` tinyint(1) DEFAULT NULL,
  `charge` float DEFAULT NULL,
  `qualifications` text COLLATE utf8_unicode_ci,
  `expertise` text COLLATE utf8_unicode_ci,
  `professional_exp` text COLLATE utf8_unicode_ci,
  `awards_achievments` text COLLATE utf8_unicode_ci,
  `consultant_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_consultant_masters_on_consultant_id` (`consultant_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `consultant_masters`
--

INSERT INTO `consultant_masters` (`id`, `name`, `doctor_id`, `degree`, `specialities`, `total_exp`, `conformation`, `charge`, `qualifications`, `expertise`, `professional_exp`, `awards_achievments`, `consultant_id`, `image`, `location_id`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'Dr.Chandra Shekar', 1001, 'MBBS', 'Cardiologist', 4, 1, 500, 'MBBS,MD', 'Cardiologist\r\n', 'Worked At Yashodha Hospitals From 4 years.', 'Got Best Doctor Award in 2011.', 1, '/assets/doctor.jpg', 1, 1, '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(2, 'Dr.Haritha', 1002, 'MBBS', 'Cardiologist', 4, 1, 500, 'MBBS', 'Neurologist', NULL, NULL, 2, '/assets/consultant.jpeg', 1, 1, '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(3, 'Dr.Rao', 1003, 'MBBS', 'Addiction Medicine Specialist', 4, 1, 400, NULL, 'Biomedical Specialist', NULL, NULL, NULL, '/assets/consultant.jpeg', 1, 1, '2012-12-27 06:51:58', '2012-12-27 06:51:58'),
(4, 'Dr.Vidya', 1004, 'MBBS', 'Cardiologist', 2, 1, 300, NULL, 'Addiction Medicine Specialist', NULL, NULL, NULL, '/assets/consultant.jpeg', 2, 1, '2012-12-27 06:58:44', '2012-12-27 06:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `corporate_health_packages`
--

CREATE TABLE IF NOT EXISTS `corporate_health_packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `package_code` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `package_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `test_group_id` int(11) NOT NULL,
  `test_sub_group_id` int(11) NOT NULL,
  `discontinued` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `test_master_id` int(11) NOT NULL,
  `total_package_price` float NOT NULL DEFAULT '0',
  `discount` float NOT NULL DEFAULT '0',
  `fixed_price` float NOT NULL DEFAULT '0',
  `specimen` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `report_collection_days` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `temp` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frequency` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `corporate_health_packages`
--

INSERT INTO `corporate_health_packages` (`id`, `branch_code`, `branch_location`, `package_code`, `package_name`, `test_group_id`, `test_sub_group_id`, `discontinued`, `test_master_id`, `total_package_price`, `discount`, `fixed_price`, `specimen`, `report_collection_days`, `method`, `temp`, `frequency`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'Nandi Diagnostics', 'Hyderabad', 'n001', 'Anaemia profile', 1, 1, '0', 825, 9900, 1500, 8400, NULL, NULL, NULL, NULL, NULL, '', '2012-12-20 11:05:54', '2012-12-20 11:05:54'),
(2, 'Nandi Diagnostics', 'Hyderabad', 'Anaemia Profile', 'Anaemia Profile', 20, 5, '0', 673, 700, 0, 700, NULL, NULL, NULL, NULL, NULL, '', '2013-01-11 11:01:01', '2013-01-11 11:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `corporate_health_package_children`
--

CREATE TABLE IF NOT EXISTS `corporate_health_package_children` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `corporate_health_package_id` int(11) NOT NULL,
  `s_no` int(11) DEFAULT NULL,
  `test_group_id` int(11) NOT NULL,
  `test_name_id` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `net_price` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `corporate_health_package_children`
--

INSERT INTO `corporate_health_package_children` (`id`, `corporate_health_package_id`, `s_no`, `test_group_id`, `test_name_id`, `department`, `price`, `discount`, `net_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 829, 1, 1500, 0, 1500, '2012-12-20 11:05:54', '2012-12-20 11:05:54'),
(2, 1, 2, 1, 832, 1, 2400, 0, 2400, '2012-12-20 11:05:54', '2012-12-20 11:05:54'),
(3, 1, 3, 1, 830, 1, 2500, 0, 2500, '2012-12-20 11:05:54', '2012-12-20 11:05:54'),
(4, 1, 4, 1, 824, 1, 1500, 0, 1500, '2012-12-20 11:05:54', '2012-12-20 11:05:54'),
(5, 1, 5, 1, 825, 1, 2000, 0, 2000, '2012-12-20 11:05:54', '2012-12-20 11:05:54'),
(6, 2, 1, 28, 448, 1, 500, 0, 500, '2013-01-11 11:01:01', '2013-01-11 11:01:01'),
(7, 2, 2, 20, 673, 2, 200, 0, 200, '2013-01-11 11:01:01', '2013-01-11 11:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'india', '2012-12-06 10:26:55', '2012-12-06 10:26:57'),
(2, 'england', '2012-12-06 10:27:17', '2012-12-06 10:27:20'),
(3, 'Bangladesh', '2012-12-07 06:16:06', '2012-12-07 06:16:06'),
(4, 'Australia', '2012-12-07 06:21:01', '2012-12-07 06:21:01'),
(5, 'Phinland', '2012-12-11 07:40:41', '2012-12-11 07:40:41'),
(6, 'india', '2012-12-06 10:26:55', '2012-12-06 10:26:57'),
(7, 'england', '2012-12-06 10:27:17', '2012-12-06 10:27:20'),
(8, 'Bangladesh', '2012-12-07 06:16:06', '2012-12-07 06:16:06'),
(9, 'Australia', '2012-12-07 06:21:01', '2012-12-07 06:21:01'),
(10, 'Phinland', '2012-12-11 07:40:41', '2012-12-11 07:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE IF NOT EXISTS `degrees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `degrees`
--

INSERT INTO `degrees` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'MBBS', '2012-12-29 00:00:00', '2012-12-29 00:00:00'),
(2, 'MD', '2012-12-29 00:00:00', '2012-12-29 00:00:00'),
(3, 'M.Phil', '2012-12-29 00:00:00', '2012-12-29 00:00:00'),
(4, 'cardiology', '2012-12-29 00:00:00', '2012-12-29 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `demos`
--

CREATE TABLE IF NOT EXISTS `demos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_assignments`
--

CREATE TABLE IF NOT EXISTS `doctor_assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clinic_id` int(11) DEFAULT NULL,
  `clinicbranch_id` int(11) DEFAULT NULL,
  `consultant_master_id` int(11) DEFAULT NULL,
  `doctor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `doctor_charge` float DEFAULT NULL,
  `clinic_charge` float DEFAULT NULL,
  `timing_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_doctor_assignments_on_clinic_id` (`clinic_id`),
  KEY `index_doctor_assignments_on_clinicbranch_id` (`clinicbranch_id`),
  KEY `index_doctor_assignments_on_consultant_master_id` (`consultant_master_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `doctor_assignments`
--

INSERT INTO `doctor_assignments` (`id`, `clinic_id`, `clinicbranch_id`, `consultant_master_id`, `doctor_name`, `doctor_id`, `doctor_charge`, `clinic_charge`, `timing_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Dr.Shekhar', 1001, 300, 200, NULL, '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(2, 1, 1, 2, 'Haritha', 1002, 500, 400, NULL, '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(3, 2, 1, 1, 'Dr.Chandra Shekar', 1001, 400, 200, NULL, '2012-12-26 13:47:54', '2012-12-26 13:47:54'),
(4, 1, 1, 2, 'Haritha', 1002, 500, 400, NULL, '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(5, 2, 1, 3, 'Dr.Chandra Shekar', 1003, 400, 200, NULL, '2012-12-26 13:50:23', '2012-12-26 13:50:23'),
(6, 1, 2, 3, 'Dr.Chandra Shekar', 1003, 500, 350, 1, '2012-12-28 07:11:10', '2012-12-28 07:11:10'),
(7, 1, 2, 4, 'Dr.Hari', 1004, 500, 450, 1, '2012-12-28 07:11:10', '2012-12-28 07:11:10'),
(8, 2, 1, 4, 'Dr.Chandra Shekar', 1004, 500, 400, NULL, '2012-12-28 07:17:54', '2012-12-28 07:17:54');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_details`
--

CREATE TABLE IF NOT EXISTS `doctor_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `profile_title` varchar(255) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `speciality` varchar(255) DEFAULT NULL,
  `expertise` varchar(255) DEFAULT NULL,
  `specializations` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_educations`
--

CREATE TABLE IF NOT EXISTS `doctor_educations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `degree` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `college` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year_of_pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `consultant_master_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_doctor_educations_on_consultant_master_id` (`consultant_master_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_flows`
--

CREATE TABLE IF NOT EXISTS `doctor_flows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `speciality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_lab_assignments`
--

CREATE TABLE IF NOT EXISTS `doctor_lab_assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_id` int(11) DEFAULT NULL,
  `labbranch_id` int(11) DEFAULT NULL,
  `consultant_master_id` int(11) DEFAULT NULL,
  `doctor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `doctor_charge` float DEFAULT NULL,
  `clinic_charge` float DEFAULT NULL,
  `timing_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_doctor_assignments_on_clinic_id` (`lab_id`),
  KEY `index_doctor_assignments_on_clinicbranch_id` (`labbranch_id`),
  KEY `index_doctor_assignments_on_consultant_master_id` (`consultant_master_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `doctor_lab_assignments`
--

INSERT INTO `doctor_lab_assignments` (`id`, `lab_id`, `labbranch_id`, `consultant_master_id`, `doctor_name`, `doctor_id`, `doctor_charge`, `clinic_charge`, `timing_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Dr.Shekhar', 1001, 300, 200, NULL, '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(2, 1, 1, 2, 'Haritha', 1002, 500, 400, NULL, '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(3, 0, NULL, 1, 'Dr.Chandra Shekar', 1001, 400, 200, NULL, '2012-12-26 13:47:54', '2012-12-26 13:47:54'),
(4, 0, NULL, 1, 'Dr.Chandra Shekar', 1001, 400, 200, NULL, '2012-12-26 13:48:37', '2012-12-26 13:48:37'),
(5, 2, 0, 1, 'Dr.Chandra Shekar', 1001, 400, 200, NULL, '2012-12-26 13:50:23', '2012-12-26 13:50:23'),
(6, NULL, NULL, NULL, 'Dr.Chandra Shekar', 1, 500, NULL, 1, '2012-12-28 07:11:10', '2012-12-28 07:11:10'),
(7, NULL, NULL, NULL, 'Dr.Hari', 2, 500, NULL, 1, '2012-12-28 07:11:10', '2012-12-28 07:11:10'),
(8, 1, 1, NULL, 'Dr.Chandra Shekar', 1, 500, NULL, NULL, '2012-12-28 07:17:54', '2012-12-28 07:17:54'),
(9, 1, 1, NULL, 'Dr.Hari', 2, 500, NULL, NULL, '2012-12-28 07:17:54', '2012-12-28 07:17:54'),
(10, 1, 1, NULL, 'Dr.Rao', 3, NULL, NULL, NULL, '2012-12-28 07:17:54', '2012-12-28 07:17:54'),
(11, 1, 1, NULL, 'Dr.Vidya', 4, NULL, NULL, NULL, '2012-12-28 07:17:54', '2012-12-28 07:17:54'),
(12, 2, 0, NULL, 'Dr.Chandra Shekar', 1, 500, NULL, NULL, '2012-12-28 09:40:25', '2012-12-28 09:40:25'),
(13, NULL, NULL, NULL, 'Dr.Chandra Shekar', 1, 500, NULL, NULL, '2012-12-28 10:59:00', '2012-12-28 10:59:00'),
(14, NULL, NULL, NULL, 'Dr.Hari', 2, 500, NULL, NULL, '2012-12-28 10:59:00', '2012-12-28 10:59:00'),
(15, NULL, NULL, NULL, 'Dr.A.V.Rao', 3, NULL, NULL, NULL, '2012-12-28 10:59:01', '2012-12-28 10:59:01'),
(16, NULL, NULL, NULL, 'Dr.Vidya', 4, 10000, NULL, NULL, '2012-12-28 10:59:01', '2012-12-28 10:59:01'),
(17, NULL, NULL, NULL, 'Dr.Sami', NULL, 3, NULL, NULL, '2012-12-28 10:59:01', '2012-12-28 10:59:01'),
(18, 1, 1, NULL, 'Dr.Hari', 2, 500, NULL, NULL, '2012-12-28 13:00:25', '2012-12-28 13:00:25'),
(19, 1, 1, NULL, 'Dr.Chandra Shekar', 1, 500, NULL, NULL, '2012-12-28 13:00:57', '2012-12-28 13:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_timings`
--

CREATE TABLE IF NOT EXISTS `doctor_timings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `morning_from` time DEFAULT NULL,
  `morning_to` time DEFAULT NULL,
  `evening_from` time DEFAULT NULL,
  `evening_to` time DEFAULT NULL,
  `others_from` time DEFAULT NULL,
  `others_to` time DEFAULT NULL,
  `consultant_master_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `timing_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_doctor_timings_on_consultant_master_id` (`consultant_master_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- Dumping data for table `doctor_timings`
--

INSERT INTO `doctor_timings` (`id`, `day`, `morning_from`, `morning_to`, `evening_from`, `evening_to`, `others_from`, `others_to`, `consultant_master_id`, `created_at`, `updated_at`, `timing_id`) VALUES
(1, 'MON', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '12:35:00', '12:35:00', 1, '2012-12-26 12:36:01', '2012-12-26 12:36:01', NULL),
(2, 'TUE', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '12:36:00', '12:36:00', 1, '2012-12-26 12:37:08', '2012-12-26 12:37:08', NULL),
(3, 'WED', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '12:36:00', '12:36:00', 1, '2012-12-26 12:37:08', '2012-12-26 12:37:08', NULL),
(4, 'THU', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '06:51:00', '06:51:00', 1, '2012-12-27 06:51:58', '2012-12-27 06:51:58', NULL),
(5, 'FRI', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '06:51:00', '06:51:00', 1, '2012-12-27 06:51:58', '2012-12-27 06:51:58', NULL),
(6, 'SAT', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '06:51:00', '06:51:00', 1, '2012-12-27 06:51:58', '2012-12-27 06:51:58', NULL),
(7, 'SUN', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '06:51:00', '06:51:00', 1, '2012-12-27 06:51:58', '2012-12-27 06:51:58', NULL),
(8, 'MON', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '12:35:00', '12:35:00', 2, '2012-12-26 12:36:01', '2012-12-26 12:36:01', NULL),
(9, 'TUE', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '12:36:00', '12:36:00', 2, '2012-12-26 12:37:08', '2012-12-26 12:37:08', NULL),
(10, 'WED', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '12:36:00', '12:36:00', 2, '2012-12-26 12:37:08', '2012-12-26 12:37:08', NULL),
(11, 'THU', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '06:51:00', '06:51:00', 2, '2012-12-27 06:51:58', '2012-12-27 06:51:58', NULL),
(12, 'FRI', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '06:51:00', '06:51:00', 2, '2012-12-27 06:51:58', '2012-12-27 06:51:58', NULL),
(13, 'SAT', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '06:51:00', '06:51:00', 2, '2012-12-27 06:51:58', '2012-12-27 06:51:58', NULL),
(14, 'SUN', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '06:51:00', '06:51:00', 2, '2012-12-27 06:51:58', '2012-12-27 06:51:58', NULL),
(15, 'MON', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '12:35:00', '12:35:00', 3, '2012-12-26 12:36:01', '2012-12-26 12:36:01', NULL),
(16, 'TUE', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '12:36:00', '12:36:00', 3, '2012-12-26 12:37:08', '2012-12-26 12:37:08', NULL),
(17, 'WED', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '12:36:00', '12:36:00', 3, '2012-12-26 12:37:08', '2012-12-26 12:37:08', NULL),
(18, 'THU', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '06:51:00', '06:51:00', 3, '2012-12-27 06:51:58', '2012-12-27 06:51:58', NULL),
(19, 'FRI', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '06:51:00', '06:51:00', 3, '2012-12-27 06:51:58', '2012-12-27 06:51:58', NULL),
(20, 'SAT', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '06:51:00', '06:51:00', 3, '2012-12-27 06:51:58', '2012-12-27 06:51:58', NULL),
(21, 'SUN', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '06:51:00', '06:51:00', 3, '2012-12-27 06:51:58', '2012-12-27 06:51:58', NULL),
(22, 'MON', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '12:35:00', '12:35:00', 4, '2012-12-26 12:36:01', '2012-12-26 12:36:01', NULL),
(23, 'TUE', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '12:36:00', '12:36:00', 4, '2012-12-26 12:37:08', '2012-12-26 12:37:08', NULL),
(24, 'WED', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '12:36:00', '12:36:00', 4, '2012-12-26 12:37:08', '2012-12-26 12:37:08', NULL),
(25, 'THU', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '12:36:00', '12:36:00', 4, '2012-12-26 12:37:08', '2012-12-26 12:37:08', NULL),
(26, 'FRI', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '06:51:00', '06:51:00', 4, '2012-12-27 06:51:58', '2012-12-27 06:51:58', NULL),
(27, 'SAT', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '06:51:00', '06:51:00', 4, '2012-12-27 06:51:58', '2012-12-27 06:51:58', NULL),
(28, 'SUN', '10:00:00', '12:00:00', '01:00:00', '05:00:00', '06:51:00', '06:51:00', 4, '2012-12-27 06:51:58', '2012-12-27 06:51:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE IF NOT EXISTS `feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `consultant_master_id` int(11) DEFAULT NULL,
  `clinic_id` varchar(10) DEFAULT NULL,
  `docexpertise` varchar(10) DEFAULT NULL,
  `qualityofservice` varchar(10) DEFAULT NULL,
  `behaviour` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE IF NOT EXISTS `homes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branches` int(11) DEFAULT NULL,
  `discontinue` tinyint(1) DEFAULT NULL,
  `expdate` date DEFAULT NULL,
  `address1` text COLLATE utf8_unicode_ci,
  `address2` text COLLATE utf8_unicode_ci,
  `location_id` int(11) DEFAULT NULL,
  `landmarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `phonenum` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` int(11) DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `altemail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `choosefile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `labbranches`
--

CREATE TABLE IF NOT EXISTS `labbranches` (
  `id` int(11) NOT NULL,
  `lab_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branches` int(11) DEFAULT NULL,
  `discontinue` tinyint(1) DEFAULT NULL,
  `expdate` date DEFAULT NULL,
  `address1` text COLLATE utf8_unicode_ci,
  `address2` text COLLATE utf8_unicode_ci,
  `location_id` int(11) DEFAULT NULL,
  `landmarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `fax` int(11) DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `altemail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `choosefile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `labbranches`
--

INSERT INTO `labbranches` (`id`, `lab_id`, `name`, `displayname`, `branches`, `discontinue`, `expdate`, `address1`, `address2`, `location_id`, `landmarks`, `city_id`, `state_id`, `country_id`, `pin`, `fax`, `website`, `email`, `altemail`, `choosefile`, `created_at`, `updated_at`) VALUES
(1, 1, 'Koti Lab', 'Koti', NULL, 0, '2012-02-12', 'hyd', 'hyd', 1, 'hyd', 1, 1, 1, 222222, NULL, '', 's@gmail.com', '', NULL, '2012-12-24 10:45:51', '2012-12-24 10:45:51'),
(2, 2, 'Vijayawada Lab', 'Vijayawada', NULL, 0, '2012-01-12', 'sss', 'sss', 1, 'sss', 1, 1, 1, 222222, NULL, '', 's@gmail.com', '', NULL, '2012-12-24 10:43:06', '2012-12-24 10:43:06'),
(3, 1, 'Madhapur Lab', 'Vijaya', NULL, 0, '2012-08-12', 'www', '', 1, '', 1, NULL, 1, 222222, NULL, '', 's@gmail.com', '', NULL, '2012-12-26 14:34:44', '2012-12-26 14:34:44');

-- --------------------------------------------------------

--
-- Table structure for table `labbranch_timings`
--

CREATE TABLE IF NOT EXISTS `labbranch_timings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `labbranch_id` int(11) DEFAULT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `morning_from` time DEFAULT NULL,
  `morning_to` time DEFAULT NULL,
  `evening_from` time DEFAULT NULL,
  `evening_to` time DEFAULT NULL,
  `others_from` time DEFAULT NULL,
  `others_to` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE IF NOT EXISTS `labs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branches` int(11) DEFAULT NULL,
  `discontinue` tinyint(1) DEFAULT NULL,
  `expdate` date DEFAULT NULL,
  `address1` text COLLATE utf8_unicode_ci,
  `address2` text COLLATE utf8_unicode_ci,
  `location_id` int(11) DEFAULT NULL,
  `landmarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `phonenum` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` int(11) DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `altemail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `choosefile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`id`, `user_id`, `name`, `displayname`, `branches`, `discontinue`, `expdate`, `address1`, `address2`, `location_id`, `landmarks`, `city_id`, `state_id`, `country_id`, `pin`, `phonenum`, `fax`, `website`, `email`, `altemail`, `choosefile`, `rating`, `discount`, `created_at`, `updated_at`, `image`) VALUES
(1, 1, 'Vijaya Diagnostic Labs', 'Vijaya', 1, 0, '2012-04-12', '\r\nVijaya Hospitals,Ameerpet,Hyderabad-500082', '3', 1, 'sss', 1, 1, 1, 333333, '9032767888', 22, '', 's@gmail.com', '', NULL, 3, 10, '2012-12-24 10:43:06', '2012-12-24 10:43:06', '/vijaya.jpg'),
(2, 2, 'Yashodha Multispeciality Lab', 'Yashodha', 1, 0, '2012-04-12', 'Yashoda Hospitals,Ameerpet,Hyderabad-500082', '4', 1, 'near borabanda', 1, 1, 1, 222222, '889026737', NULL, 'www', 's@gmail.com', '', NULL, 4, 5, '2012-12-24 10:45:51', '2012-12-24 10:45:51', '/yashodha.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `lab_profile_masters`
--

CREATE TABLE IF NOT EXISTS `lab_profile_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_id` int(11) DEFAULT NULL,
  `labbranch_id` int(11) DEFAULT NULL,
  `about` text COLLATE utf8_unicode_ci,
  `services` text COLLATE utf8_unicode_ci,
  `speciality` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `packages` text COLLATE utf8_unicode_ci,
  `labtechnician` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_clinic_profile_masters_on_clinic_id` (`lab_id`),
  KEY `index_clinic_profile_masters_on_clinicbranches_id` (`labbranch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `lab_profile_masters`
--

INSERT INTO `lab_profile_masters` (`id`, `lab_id`, `labbranch_id`, `about`, `services`, `speciality`, `packages`, `labtechnician`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '\r\nAbout Us\r\n\r\nBrief History\r\n\r\nThe journey of Vijaya Labs started way back in 1989 as a small clinic, where Dr G Surender Rao practised paediatrics. With his international education and experience he became one of Hyderabad’s leading child specialists in a short span of time. Not satisfied with personal success he joined forces with his brother, Mr Ravinder Rao, an experienced business leader, to start Yashoda Labs.\r\n\r\nYashodha Group has come a long way since then, from a small clinic in Hyderabad, to a 1,000-plus-bed facility, with three hospitals at Secunderabad, Malakpet and Somajiguda. With a nursing school and college attached to each hospital. It has more than 450 doctors, 1,500 nurses and a total of 4,000 staff comprising of paramedical and other support staff.', 'Cardiology,Cardiothoracic Surgery,', NULL, 'Vijaya Labs are putting great\r\n effort in the field of hospital managements.', 'Gopala Krishna,Narasimha,AV RAO', 'hospital.jpg', 'hosp.jpeg', 'hospital.jpg', 'hosp.jpeg', 'hosp.jpeg', '2012-12-01 00:00:00', '2013-01-02 11:15:40'),
(2, 2, 1, '\r\nAbout Us\r\n\r\nBrief History\r\n\r\nThe journey of Yashoda Labs started way back in 1989 as a small clinic, where Dr G Surender Rao practised paediatrics. With his international education and experience he became one of Hyderabad’s leading child specialists in a short span of time. Not satisfied with personal success he joined forces with his brother, Mr Ravinder Rao, an experienced business leader, to start Yashoda Hospitals.\r\n\r\nYashoda Group has come a long way since then, from a small clinic in Hyderabad, to a 1,000-plus-bed facility, with three hospitals at Secunderabad, Malakpet and Somajiguda. With a nursing school and college attached to each hospital. It has more than 450 doctors, 1,500 nurses and a total of 4,000 staff comprising of paramedical and other support staff.', 'Cardiology,Cardiothoracic Surgery', NULL, 'Yashodha Labs are putting greate effort in the field of Lab managements.', 'Gopala Krishna,Narasimha,AV RAO', NULL, NULL, NULL, NULL, NULL, '2012-12-01 00:00:00', '2012-12-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lab_specalities_masters`
--

CREATE TABLE IF NOT EXISTS `lab_specalities_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=53 ;

--
-- Dumping data for table `lab_specalities_masters`
--

INSERT INTO `lab_specalities_masters` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Acupressure Practitioner Lab', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(2, 'Acupuncture Practitioner Lab', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(3, 'Addiction Medicine Specialist Lab', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(4, 'Adolescent medicine Specialist(chil,teens and mental help)', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(5, 'Allergist & Immunologist (Asthma Specialist)', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(6, ' Anesthesiologist (Pain Control)', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(7, ' Ayurvedic Physician', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(8, ' Biomedical Specialist', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(9, 'Cardiologist (Heart)', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(10, 'Chiropractic Physician (Spione Care)', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(11, 'Cosmetologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Dentist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Dermatologist (Skin Disease)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Dietitian & Nutrition', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Disaster Medicine Specialist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Emergency Physician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Endocrinologist (Diabetes, Thyroid & Other Hormones)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Eye Care Specialist (Opthalmologist)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Gastroentrologist & Hepatologist (Digestive & Liver)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'General Physician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Geneticist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Geriatrist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Gynecologist & Obstetricians', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Hematologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, ' HIV and AIDS Specialist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Homeopathic Physician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Infectious Disease Specialist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Internal Medicine Specialist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Naturopathy & Yoga Specialist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Neurologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Nuclear Medicine Specialist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Occupational Medicine Specialist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Oncologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Orthopaedician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Otolaryngologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Pathologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Pediatrician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Physiotherapist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Physiotherapist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Preventive Medicine and Wellness Specialist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Psychiatrist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Psychologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Pulmonologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Radiologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Rheumatologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Sexologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Speech Therapist & Audiologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Sports Medicine Specialist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Thermologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Unani Physician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Urologist & Nephrologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Vascular Medicine Surgeon', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lab_specalities_masters_lab_specialities`
--

CREATE TABLE IF NOT EXISTS `lab_specalities_masters_lab_specialities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_speciality_id` int(11) DEFAULT NULL,
  `lab_specalities_master_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_specalities_masters_specialities_on_specility_id` (`lab_speciality_id`),
  KEY `index_specalities_masters_specialities_on_specality_master_id` (`lab_specalities_master_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lab_specialities`
--

CREATE TABLE IF NOT EXISTS `lab_specialities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specalities_master_id` int(11) DEFAULT NULL,
  `speciality_id` int(11) DEFAULT NULL,
  `speciality_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `lab_specialities`
--

INSERT INTO `lab_specialities` (`id`, `specalities_master_id`, `speciality_id`, `speciality_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Clinic', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(2, 2, 1, 'Clinic', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(3, 3, 1, 'Clinic', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(4, 4, 1, 'Clinic', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(5, NULL, NULL, NULL, '2012-12-29 07:38:16', '2012-12-29 07:38:16'),
(6, NULL, 1, 'clinic', '2012-12-29 07:44:08', '2012-12-29 07:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `lab_timings`
--

CREATE TABLE IF NOT EXISTS `lab_timings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_id` int(11) DEFAULT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `morning_from` time DEFAULT NULL,
  `morning_to` time DEFAULT NULL,
  `evening_from` time DEFAULT NULL,
  `evening_to` time DEFAULT NULL,
  `others_from` time DEFAULT NULL,
  `others_to` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `lab_timings`
--

INSERT INTO `lab_timings` (`id`, `lab_id`, `day`, `morning_from`, `morning_to`, `evening_from`, `evening_to`, `others_from`, `others_to`, `created_at`, `updated_at`) VALUES
(1, 1, 'MON', '12:24:00', '12:24:00', '12:24:00', '12:24:00', '12:24:00', NULL, '2012-12-26 12:24:12', '2012-12-26 12:24:12'),
(3, 2, 'MON', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '2012-12-26 12:32:15', '2012-12-26 12:32:15'),
(4, 1, 'TUES', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 'WED', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 'THU', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 'FRI', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 'SAT', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, 'SUN', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 2, 'TUE', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '2012-12-26 12:32:15', '2012-12-26 12:32:15'),
(11, 2, 'WED', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '2012-12-26 12:32:15', '2012-12-26 12:32:15'),
(12, 2, 'THU', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '2012-12-26 12:32:15', '2012-12-26 12:32:15'),
(13, 2, 'FRI', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '2012-12-26 12:32:15', '2012-12-26 12:32:15'),
(14, 2, 'SAT', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '2012-12-26 12:32:15', '2012-12-26 12:32:15'),
(15, 2, 'SUN', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '12:30:00', '2012-12-26 12:32:15', '2012-12-26 12:32:15');

-- --------------------------------------------------------

--
-- Table structure for table `locationmaps`
--

CREATE TABLE IF NOT EXISTS `locationmaps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `gmaps` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clinic_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `gmaps` tinyint(1) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=54 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `clinic_id`, `name`, `address`, `longitude`, `latitude`, `gmaps`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'ABIDS\n', 'Ameerpet', 78.4867, 17.385, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, NULL, 'AMBERPET', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, NULL, 'BALANAGAR', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, NULL, 'BARKAS', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, NULL, 'BASHEERBAGH', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, NULL, 'BOLARAM', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, NULL, 'BHEL', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, NULL, 'CHIKKADPALLY', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, NULL, 'CMNR', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, NULL, 'DILSUKHNAGAR', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, NULL, 'ECIL X ROAD', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, NULL, 'ESI', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, NULL, 'GOLCONDA', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, NULL, 'JBS', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, NULL, 'JOM', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, NULL, 'KACHIGUDA', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, NULL, 'K. BAD', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, NULL, 'KOTI', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, NULL, 'AGAPURA', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, NULL, 'AMEERPET', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, NULL, 'ALWAL', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, NULL, 'KUSHIGUDA', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, NULL, 'KUKATPALLI', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, NULL, 'LB NAGAR ', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, NULL, 'LAKADIKAPOOL', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, NULL, 'LANGURHOUSE', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, NULL, 'MEHIDIPATNAM', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, NULL, 'MALAKPET', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, NULL, 'MASABTANK', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, NULL, 'MOULAALI', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, NULL, 'NAMPALLY', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, NULL, 'OSAMNIA UNIV(OU) ', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, NULL, 'PUNJA GUTTA ', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, NULL, 'PATAN CHERU', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, NULL, 'RISALABAZAR', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, NULL, 'RAM NAGAR ', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, NULL, 'RANIGUNJ', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, NULL, 'RAJENDRANAGAR', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, NULL, 'R. PUR ', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, NULL, 'RTC ''X'' ROAD  ', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, NULL, 'SANATNAGAR', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, NULL, 'SEETAFUL MANDI ', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, NULL, 'S. MUTT ', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, NULL, 'SECUNDERA BAD ', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, NULL, 'SRR. NAGAR ', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, NULL, 'TANKBUND', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, NULL, 'TARNAKA', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, NULL, 'TALLA GADDA ', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, NULL, 'BORABANDA', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, NULL, 'NGO''S COLONY ', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, NULL, 'WARASIGUDA ', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, NULL, 'SEETA FULMANDI ', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 1, 'ABIDS\r\n', 'Ameerpet', 78.4867, 17.385, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `locationsmap`
--

CREATE TABLE IF NOT EXISTS `locationsmap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clinic_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `gmaps` tinyint(1) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `locationsmap`
--

INSERT INTO `locationsmap` (`id`, `clinic_id`, `name`, `address`, `longitude`, `latitude`, `gmaps`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'ameerpet', 'ameerpet', 78.4867, 17.385, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 'begumpet', 'begumpet', 78.4158, 17.4541, NULL, 1, '2012-12-29 00:00:00', '2012-12-29 00:00:00'),
(3, 1, 'amberpet', 'amberpet', 78.4158, 17.4541, NULL, 1, '2012-12-29 00:00:00', '2012-12-29 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `org_details`
--

CREATE TABLE IF NOT EXISTS `org_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `address` text,
  `postal_code` varchar(255) DEFAULT NULL,
  `org_name` varchar(255) DEFAULT NULL,
  `org_country` varchar(255) DEFAULT NULL,
  `org_state` varchar(255) DEFAULT NULL,
  `org_city` varchar(255) DEFAULT NULL,
  `org_location` varchar(255) DEFAULT NULL,
  `org_address` text,
  `org_postal_code` varchar(255) DEFAULT NULL,
  `org_phone1` varchar(255) DEFAULT NULL,
  `org_phone2` varchar(255) DEFAULT NULL,
  `sign_up_as` tinyint(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `patient_details`
--

CREATE TABLE IF NOT EXISTS `patient_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `patient_details`
--

INSERT INTO `patient_details` (`id`, `first_name`, `last_name`, `mobile`, `country_id`, `state_id`, `city_id`, `location_id`, `postal_code`, `gender`, `dob`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '', '', '', NULL, NULL, NULL, NULL, '', 0, '2013-01-29', NULL, '2013-01-29 06:21:46', '2013-01-29 06:21:46'),
(2, '', '', '', NULL, NULL, NULL, NULL, '', 0, '2013-01-29', NULL, '2013-01-29 06:25:11', '2013-01-29 06:25:11'),
(3, 'hari', 'krishna', '9032955216', 1, 1, 1, 1, '500018', 0, '2013-01-29', NULL, '2013-01-29 06:30:39', '2013-01-29 06:30:39'),
(4, 'hari', 'krishna', '9032955216', 1, 1, 1, 1, '500018', 0, '2013-01-29', 2, '2013-01-29 06:35:25', '2013-01-29 06:35:25'),
(5, 'hari', 'krishna', '9032955216', 1, 1, 1, 1, '500018', 0, '2013-01-29', NULL, '2013-01-29 06:40:13', '2013-01-29 06:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20121214071728'),
('20121214072645'),
('20121214073103'),
('20121214122153'),
('20121217123641'),
('20121217132547'),
('20121218133450'),
('20121218134638'),
('20121218141517'),
('20121219091036'),
('20121220121302'),
('20121220132815'),
('20121225132053'),
('20121225132930'),
('20121226053341'),
('20121226054525'),
('20121226065642'),
('20121226074835'),
('20121226075029'),
('20121226075131'),
('20121226110410'),
('20121227061335'),
('20121227070103'),
('20121229073026'),
('20130102060850'),
('20130103095533'),
('20130104113136'),
('20130104124707'),
('20130104185856');

-- --------------------------------------------------------

--
-- Table structure for table `simple_captcha_data`
--

CREATE TABLE IF NOT EXISTS `simple_captcha_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(40) DEFAULT NULL,
  `value` varchar(6) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `simple_captcha_data`
--

INSERT INTO `simple_captcha_data` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(46, '34226a18dfce9c5c5e5b9b65376a4bbf858caffd', 'ZGQKGQ', '2013-01-26 11:34:01', '2013-01-26 11:34:01'),
(47, '230614fa145221c9b7f74e5a339f8cde2940efe7', 'IVUZJY', '2013-01-26 11:52:26', '2013-01-26 11:54:58'),
(48, '681f467ae4c834e3430fe6600e5fe704c6f383a0', 'TDSHGS', '2013-01-26 11:59:51', '2013-01-26 11:59:51'),
(49, '7593730a5565bdb117b9953070e4133b4522e9a5', 'ZOABZR', '2013-01-26 12:25:04', '2013-01-26 12:25:04'),
(52, '295ca5cec605f5021c19844bf422126bdc50a55f', 'GHYXOS', '2013-01-26 12:38:28', '2013-01-26 12:49:06'),
(53, '6a87697a45910d469a72599d79b120e5b1ae92dd', 'QUJFAM', '2013-01-26 13:21:29', '2013-01-26 14:04:00'),
(54, '852cd0d1aac9eb4d9373071099d43fdad4644b09', 'CXWWXQ', '2013-01-28 10:01:08', '2013-01-28 10:33:40'),
(55, '2de7b5073480c2834041c094ab19dff1e8630514', 'TCLVOC', '2013-01-28 10:34:06', '2013-01-28 11:43:13'),
(56, '1675d62b567fa43c890fbd247b82e46b94012f3b', 'YMGQKD', '2013-01-28 12:09:40', '2013-01-28 12:34:20'),
(57, '2b025fd2df539526eb7c2bc5152da1a9be86095e', 'KTJXFC', '2013-01-28 12:48:42', '2013-01-28 12:48:42'),
(58, '875bf6437694e04e76d689d5b40988bc2a4839f5', 'AVZVVR', '2013-01-29 07:07:32', '2013-01-29 07:09:58');

-- --------------------------------------------------------

--
-- Table structure for table `specalities_masters`
--

CREATE TABLE IF NOT EXISTS `specalities_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=53 ;

--
-- Dumping data for table `specalities_masters`
--

INSERT INTO `specalities_masters` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Acupressure Practitioner', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(2, 'Acupuncture Practitioner', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(3, 'Addiction Medicine Specialist', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(4, 'Adolescent medicine Specialist(chil,teens and mental help)', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(5, 'Allergist & Immunologist (Asthma Specialist)', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(6, ' Anesthesiologist (Pain Control)', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(7, ' Ayurvedic Physician', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(8, ' Biomedical Specialist', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(9, 'Cardiologist (Heart)', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(10, 'Chiropractic Physician (Spione Care)', '2012-12-01 00:00:00', '2012-12-01 00:00:00'),
(11, 'Cosmetologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Dentist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Dermatologist (Skin Disease)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Dietitian & Nutrition', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Disaster Medicine Specialist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Emergency Physician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Endocrinologist (Diabetes, Thyroid & Other Hormones)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Eye Care Specialist (Opthalmologist)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Gastroentrologist & Hepatologist (Digestive & Liver)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'General Physician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Geneticist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Geriatrist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Gynecologist & Obstetricians', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Hematologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, ' HIV and AIDS Specialist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Homeopathic Physician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Infectious Disease Specialist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Internal Medicine Specialist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Naturopathy & Yoga Specialist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Neurologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Nuclear Medicine Specialist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Occupational Medicine Specialist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Oncologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Orthopaedician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Otolaryngologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Pathologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Pediatrician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Physiotherapist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Physiotherapist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Preventive Medicine and Wellness Specialist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Psychiatrist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Psychologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Pulmonologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Radiologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Rheumatologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Sexologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Speech Therapist & Audiologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Sports Medicine Specialist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Thermologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Unani Physician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Urologist & Nephrologist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Vascular Medicine Surgeon', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `specalities_masters_specialities`
--

CREATE TABLE IF NOT EXISTS `specalities_masters_specialities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `speciality_id` int(11) DEFAULT NULL,
  `specalities_master_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_specalities_masters_specialities_on_specility_id` (`speciality_id`),
  KEY `index_specalities_masters_specialities_on_specality_master_id` (`specalities_master_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `specalities_masters_specialities`
--

INSERT INTO `specalities_masters_specialities` (`id`, `speciality_id`, `specalities_master_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 5, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 5, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 5, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 5, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 5, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 6, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 6, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 6, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 6, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 6, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 7, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 7, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 7, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 7, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 8, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 8, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 8, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 8, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 8, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 9, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 9, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 9, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 10, 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 10, 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 10, 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `specialities`
--

CREATE TABLE IF NOT EXISTS `specialities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `speciality_id` int(11) DEFAULT NULL,
  `speciality_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `specialities`
--

INSERT INTO `specialities` (`id`, `speciality_id`, `speciality_type`, `created_at`, `updated_at`) VALUES
(7, 1, 'clinic', '2013-01-24 12:28:09', '2013-01-24 12:28:09'),
(8, 1, 'clinic', '2013-01-25 06:29:02', '2013-01-25 06:29:02'),
(9, 2, 'clinic', '2013-01-25 06:29:50', '2013-01-25 06:29:50'),
(10, 1, 'clinic', '2013-01-25 06:52:17', '2013-01-25 06:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_country_id` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'ANDHRA PRADESH', 1, '0000-00-00 00:00:00', '2013-01-23 09:34:47'),
(2, 'ASSAM', 1, '0000-00-00 00:00:00', '2013-01-23 09:34:47');

-- --------------------------------------------------------

--
-- Table structure for table `sudheers`
--

CREATE TABLE IF NOT EXISTS `sudheers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `possible` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE IF NOT EXISTS `tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clinicbranch_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tests_on_clinicbranch_id` (`clinicbranch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `test_groups`
--

CREATE TABLE IF NOT EXISTS `test_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_masters_id` int(11) DEFAULT NULL,
  `discontinued` tinyint(1) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_test_groups_on_lab_masters_id_id` (`lab_masters_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `test_groups`
--

INSERT INTO `test_groups` (`id`, `lab_masters_id`, `discontinued`, `department`, `group_id`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'radiology', '1', 'Vijaya', '2013-01-21 12:12:59', '2013-01-21 12:12:59'),
(3, 2, 0, 'Biology', '2', 'Yashodha', '2013-01-21 12:15:58', '2013-01-21 12:15:58'),
(4, 2, 0, 'Radiology', '2', 'V2', '2013-01-22 05:23:27', '2013-01-22 05:23:27');

-- --------------------------------------------------------

--
-- Table structure for table `test_masters`
--

CREATE TABLE IF NOT EXISTS `test_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_masters_id` int(11) DEFAULT NULL,
  `discontinued` tinyint(1) DEFAULT NULL,
  `test_groups_id` int(11) DEFAULT NULL,
  `test_subgroup_id` int(11) DEFAULT NULL,
  `test_name` varchar(255) DEFAULT NULL,
  `specimen` varchar(255) DEFAULT NULL,
  `report_collection_days` tinyint(1) DEFAULT NULL,
  `disclaiming` varchar(255) DEFAULT NULL,
  `investigation_details` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `test_masters`
--

INSERT INTO `test_masters` (`id`, `lab_masters_id`, `discontinued`, `test_groups_id`, `test_subgroup_id`, `test_name`, `specimen`, `report_collection_days`, `disclaiming`, `investigation_details`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 1, 1, 'Blood test', '', 0, '', '', '2013-01-22 09:23:31', '2013-01-22 09:23:31'),
(2, 1, 0, 1, 1, 'Urine test', '', 0, '', '', '2013-01-22 09:23:31', '2013-01-22 09:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `test_sub_groups`
--

CREATE TABLE IF NOT EXISTS `test_sub_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_masters_id` int(11) DEFAULT NULL,
  `discontinued` tinyint(1) DEFAULT NULL,
  `test_groups_id` int(11) DEFAULT NULL,
  `sub_group_id` varchar(255) DEFAULT NULL,
  `sub_group_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `test_sub_groups`
--

INSERT INTO `test_sub_groups` (`id`, `lab_masters_id`, `discontinued`, `test_groups_id`, `sub_group_id`, `sub_group_name`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 1, '1', 'Sub Vijaya', '2013-01-21 12:50:14', '2013-01-21 12:50:14'),
(2, 2, 0, 2, '2', 'Yashoda sub', '2013-01-21 12:52:55', '2013-01-21 12:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `timings`
--

CREATE TABLE IF NOT EXISTS `timings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `timings`
--

INSERT INTO `timings` (`id`, `created_at`, `updated_at`) VALUES
(1, '2012-12-28 07:11:10', '2012-12-28 07:11:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `role`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `username`) VALUES
(1, 'sudheer@gmail.com', NULL, '$2a$10$eKIm8zzjBZOj243QAIWcguwZJ6a.cp8o3.e4pz9gK63Xi8pGuHXfe', NULL, NULL, NULL, 68, '2013-01-28 13:09:55', '2013-01-28 12:47:27', '127.0.0.1', '127.0.0.1', '2012-12-27 10:09:04', '2013-01-28 13:09:55', 'sudheer'),
(2, 'harikrishna.1659@gmail.com', NULL, '$2a$10$mur295KiZZ0x4yUeolrnEexyo6EO2d8ODLMyNAIvkpI17csFD.CX2', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2013-01-29 06:35:25', '2013-01-29 06:35:25', 'hari');

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `hostel_bed_utilization` ON SCHEDULE EVERY 1 DAY STARTS '2012-11-15 18:08:00' ON COMPLETION NOT PRESERVE ENABLE DO begin

insert into hostel_bed_status_temps select * from hostel_bed_statuses where isnull(vacate_date);

insert into `as` values();

select sleep(240) into @qq;
      
insert into c values(@qq);

insert into hostel_bed_daily_status
select 
distinct current_date - interval 1 day,a.building_master_id,a.room_master_id,a.id,case when coalesce(b.bed_id,0)!=0 then 'occupied' else 'available' end as status
from
(select 
building_master_id,room_master_id,id
from
bed_masters ) a 
left outer join 
(select  
bed_id 
from hostel_bed_statuses  
where (isnull(vacate_date) and admn_date!=current_date) or (vacate_date=current_date - interval 1 day)) b 
on a.id=b.bed_id;

delete from `as`;


insert into hostel_bed_statuses select * from hostel_bed_status_temps where admn_date=current_date or vacate_date=current_date;
delete from hostel_bed_statuses where id in(select id from hostel_bed_status_temps where admn_date!=current_date and vacate_date=current_date) and isnull(vacate_date);

delete from hostel_bed_status_temps;

       create or replace view hostel_beds_total as
       select building_master_id,room_master_id,count(*) as total from  hostel_bed_daily_status where date=current_date - interval 1 day group by building_master_id,room_master_id;

       create or replace view  hostel_bed_count_value as 
       select building_master_id,room_master_id,count(*) as total from  hostel_bed_daily_status where date=current_date - interval 1 day and status='occupied' group by building_master_id,room_master_id;

       insert into hostel_utilization_values
       select current_date - interval 1 day,a.building_master_id,a.room_master_id,a.total as total_beds,case when coalesce(b.total,0)!=0 then b.total else 0 end as occupied_beds,(case when coalesce(b.total,0)!=0 then b.total else 0 end/a.total)*100 as utilization_percentage from hostel_beds_total a left outer join hostel_bed_count_value b using(building_master_id,room_master_id);

delete from c;

end$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
