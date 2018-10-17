-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2018 at 09:29 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eri`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_groups`
--

CREATE TABLE `access_groups` (
  `id` int(11) NOT NULL,
  `parent` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `default_permission` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_groups`
--

INSERT INTO `access_groups` (`id`, `parent`, `name`, `default_permission`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'super-admin', 'super-admin', NULL, NULL, NULL, NULL),
(2, 'factory', 'factory-admin', NULL, NULL, NULL, NULL),
(3, 'brand', 'brand-admin', NULL, NULL, NULL, NULL),
(4, 'consultant', 'consultant-admin', NULL, NULL, NULL, NULL),
(5, 'project', 'project-admin', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `access_permission`
--

CREATE TABLE `access_permission` (
  `id` int(11) NOT NULL,
  `access_permission_type_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `access_permission_types`
--

CREATE TABLE `access_permission_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category_type` int(3) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `phone3` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address`, `phone`, `city`, `state`, `zip_code`, `latitude`, `longitude`, `created_at`, `updated_at`, `deleted_at`, `phone2`, `phone3`, `country`, `email`) VALUES
(40, 'sdsd', '121212112221', '2323', '232', '2323', '37.34439447', '-121.87412124', '2018-09-18 02:21:56', '2018-09-18 02:24:38', NULL, '', '', 'Bangladesh', 'sds@asdsds'),
(43, 'kaliaoire\n\n', '01553652775', 'gazipur', 'dhaka', '1205', '35.71970782', '103.73302775', '2018-09-18 03:33:00', '2018-09-18 03:42:26', NULL, '', '', 'Bangladesh', 'headoffice@zz.com'),
(44, 'chaumuhani ,noakhali', '0155638852', 'noak', 'noakh', '158', '23.75768830', '90.42666760', '2018-09-18 03:44:29', '2018-09-18 05:36:04', NULL, '', '', 'Bangladesh', 'ch@gmail.com'),
(45, '', '', '', '', '', NULL, NULL, '2018-09-18 04:17:05', '2018-09-18 04:17:05', NULL, '', '', '', ''),
(46, 'Bojmjbjb', '887878787878', 'Dhaka', 'Dhaka', '6767', '19.10327600', '72.85479700', '2018-09-18 17:31:12', '2018-09-18 17:31:12', NULL, '', '', 'Bangladesh', 'j@hjh'),
(47, 'djsks', '01556352885', 'ererere', 'erer', '1212121', '23.75717010', '90.42917210', '2018-09-18 20:15:51', '2018-09-18 20:15:51', NULL, '', '', 'Bangladesh', 'jah@gmail.com'),
(48, 'Austrian Court, Orlando, FL, USA', '015563525555', 'melbord', 'melborn', '1212', '23.82771538', '91.27107343', '2018-09-20 10:14:10', '2018-10-04 10:12:51', NULL, '', '', 'Bangladesh', 'aushnm@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  ` longitude` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `website`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 'zz enterprize 1', 'assets/ERI/environment.svg', 'zz.com1', '2018-08-14 03:11:23', '2018-08-18 00:08:05', NULL),
(15, 'zz enterprize 2\r\n                                                                                                         ', 'assets/ERI/environment.svg', 'zz.com1', '2018-08-14 03:11:23', '2018-08-18 00:08:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `link1` varchar(255) DEFAULT NULL,
  `link2` varchar(255) DEFAULT NULL,
  `link3` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `issueDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `name`, `description`, `link1`, `link2`, `link3`, `created_at`, `updated_at`, `deleted_at`, `issueDate`) VALUES
(1, 'Imo', 'sdsdsd', 'sdsd', 'sdsd', 'sdsd', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chemical_types`
--

CREATE TABLE `chemical_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Embroidery', 1, NULL, NULL, NULL),
(2, 'Fabric dyeing & Finishing', 1, NULL, NULL, NULL),
(3, 'Garments', 1, NULL, NULL, NULL),
(4, 'Knitting', 1, NULL, NULL, NULL),
(5, 'Printing', 1, NULL, NULL, NULL),
(6, 'Spinning', 1, NULL, NULL, NULL),
(7, 'Washing', 1, NULL, NULL, NULL),
(8, 'Weaving', 1, NULL, NULL, NULL),
(9, 'Yarn Dyeing & Finishing', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `energy_source_types`
--

CREATE TABLE `energy_source_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factories`
--

CREATE TABLE `factories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factories`
--

INSERT INTO `factories` (`id`, `name`, `logo`, `website`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 'Zaber & zubayer ', 'assets/ERI/environment.svg', 'Www.zandz.com1', '2018-08-15 03:11:23', '2018-10-04 10:12:36', NULL),
(13, 'zz enterprize ', 'assets/ERI/environment.svg', 'zz.com1', '2018-08-14 03:11:23', '2018-08-18 00:08:05', NULL),
(15, 'jahir \r\n                                                                                                            enterprize ', 'assets/ERI/environment.svg', 'zz.com1', '2018-08-14 03:11:23', '2018-08-18 00:08:05', NULL),
(16, 'amir ali', 'assets/ERI/environment.svg', 'zz.com1', '2018-08-15 03:11:23', '2018-08-18 00:08:05', NULL),
(17, 'sumon', 'assets/ERI/environment.svg', 'zz.com1', '2018-08-14 03:11:23', '2018-08-18 00:08:05', NULL),
(18, 'jahir ddssdf\r\n                                                                                                            enterprize ', 'assets/ERI/environment.svg', 'zz.com1', '2018-08-14 03:11:23', '2018-08-18 00:08:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `factory_addresses`
--

CREATE TABLE `factory_addresses` (
  `id` int(11) NOT NULL,
  `factory_id` varchar(255) NOT NULL,
  `address_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factory_addresses`
--

INSERT INTO `factory_addresses` (`id`, `factory_id`, `address_id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(30, '1', '28', 'head office 1', 1, '2018-08-13 20:34:55', '2018-08-18 03:02:13', NULL),
(31, '1', '29', 'head office 1', 0, '2018-08-13 20:35:32', '2018-08-13 20:35:32', NULL),
(32, '1', '30', 'head office j', 0, '2018-08-13 20:35:58', '2018-08-13 20:35:58', NULL),
(33, '1', '31', 'head office raju', 0, '2018-08-13 20:38:13', '2018-08-15 19:42:47', NULL),
(34, '1', '32', 'jjj', 1, '2018-08-13 22:43:03', '2018-09-18 00:47:26', NULL),
(35, '1', '33', 'edfrdefd', 1, '2018-08-14 06:24:03', '2018-08-14 06:26:40', '2018-08-18 03:56:04'),
(36, '1', '34', 'sdsd', 1, '2018-09-18 00:59:36', '2018-09-18 01:06:54', NULL),
(37, '1', '35', 'saouth africa', 0, '2018-09-18 01:09:02', '2018-09-18 02:01:48', NULL),
(38, '1', '39', 's africa', 1, '2018-09-18 02:11:32', '2018-09-18 02:13:27', NULL),
(39, '1', '40', 'sds', 1, '2018-09-18 02:21:56', '2018-09-18 02:24:38', NULL),
(40, '1', '43', 'head office', 1, '2018-09-18 03:33:00', '2018-09-18 03:42:26', NULL),
(41, '1', '44', 'chaumuhani', 0, '2018-09-18 03:44:29', '2018-09-18 05:36:04', NULL),
(42, '1', '45', '', 0, '2018-09-18 04:17:05', '2018-09-18 04:17:05', '2018-09-18 04:18:11'),
(43, '12', '46', 'Noak', 1, '2018-09-18 17:31:12', '2018-09-18 17:31:12', NULL),
(44, '12', '47', 'dhaka', 1, '2018-09-18 20:15:51', '2018-09-18 20:15:51', NULL),
(45, '12', '48', 'australia ofice', 1, '2018-09-20 10:14:10', '2018-10-04 10:12:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `factory_certificates`
--

CREATE TABLE `factory_certificates` (
  `id` int(11) NOT NULL,
  `factory_id` int(11) DEFAULT NULL,
  `certificate_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factory_certificates`
--

INSERT INTO `factory_certificates` (`id`, `factory_id`, `certificate_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 12, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `factory_chemical_types`
--

CREATE TABLE `factory_chemical_types` (
  `id` int(11) NOT NULL,
  `factory_id` int(11) DEFAULT NULL,
  `chemical_for_id` int(11) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factory_departments`
--

CREATE TABLE `factory_departments` (
  `id` int(11) NOT NULL,
  `factory_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factory_departments`
--

INSERT INTO `factory_departments` (`id`, `factory_id`, `department_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(42, 12, 1, 1, '2018-08-18 00:47:35', '2018-08-18 00:47:35', '2018-08-18 02:30:00'),
(43, 12, 5, 1, '2018-08-18 00:47:41', '2018-08-18 00:47:41', '2018-08-18 02:29:59'),
(44, 12, 9, 1, '2018-08-18 00:47:48', '2018-08-18 02:17:27', '2018-08-18 02:29:58'),
(45, 12, 8, 0, '2018-08-18 00:48:09', '2018-08-18 02:10:30', '2018-08-18 02:29:20'),
(46, 12, 4, 1, '2018-08-18 01:00:16', '2018-08-18 01:02:54', '2018-08-18 02:27:59'),
(47, 12, 2, 1, '2018-08-18 01:01:43', '2018-08-18 01:02:53', '2018-08-18 02:27:02'),
(48, 12, 7, 1, '2018-08-18 02:03:42', '2018-08-18 02:07:35', '2018-08-18 02:26:53'),
(49, 12, 6, 1, '2018-08-18 02:21:47', '2018-08-18 02:21:47', '2018-08-18 02:26:44'),
(50, 12, 3, 1, '2018-08-18 02:21:54', '2018-08-18 02:21:54', '2018-08-18 02:26:37'),
(51, 12, 3, 1, '2018-08-18 02:31:57', '2018-08-18 02:31:57', '2018-08-18 02:32:28'),
(52, 12, 3, 1, '2018-08-18 02:32:45', '2018-08-18 02:32:45', '2018-08-18 02:33:13'),
(53, 12, 9, 1, '2018-08-18 02:33:03', '2018-08-18 02:33:03', '2018-08-18 02:33:12'),
(54, 12, 9, 1, '2018-08-18 02:34:15', '2018-08-18 02:34:15', '2018-08-18 02:34:17'),
(55, 12, 9, 1, '2018-08-18 02:35:01', '2018-08-18 02:35:01', '2018-08-18 02:39:35'),
(56, 12, 9, 1, '2018-08-18 02:39:57', '2018-08-18 02:39:57', '2018-08-18 02:43:29'),
(57, 12, 7, 1, '2018-08-18 02:43:33', '2018-08-18 02:43:33', '2018-08-18 02:48:58'),
(58, 12, 2, 1, '2018-08-18 02:43:40', '2018-08-18 02:43:40', '2018-08-18 02:48:54'),
(59, 12, 8, 1, '2018-08-18 02:43:44', '2018-08-18 02:48:33', '2018-08-18 02:48:52'),
(60, 12, 2, 1, '2018-08-18 02:49:08', '2018-08-18 03:19:45', NULL),
(61, 12, 7, 1, '2018-08-18 02:49:14', '2018-08-18 03:19:44', NULL),
(62, 12, 9, 1, '2018-08-18 02:49:23', '2018-08-18 03:19:42', '2018-08-18 03:22:42'),
(63, 12, 8, 1, '2018-08-18 02:49:27', '2018-08-18 02:49:27', '2018-08-18 02:52:40'),
(64, 12, 8, 1, '2018-08-18 02:55:31', '2018-08-18 03:09:26', '2018-08-18 03:19:32'),
(65, 12, 5, 1, '2018-08-18 02:55:52', '2018-08-18 02:55:52', '2018-08-18 03:18:14'),
(66, 12, 4, 1, '2018-08-18 02:55:54', '2018-08-18 02:55:54', '2018-08-18 03:00:40'),
(67, 12, 3, 1, '2018-08-18 02:55:56', '2018-08-18 02:55:56', '2018-08-18 03:00:19'),
(68, 12, 6, 1, '2018-08-18 02:55:58', '2018-08-18 02:55:58', '2018-08-18 02:57:31'),
(69, 12, 1, 1, '2018-08-18 02:56:00', '2018-08-18 02:56:00', '2018-08-18 02:56:32'),
(70, 12, 6, 0, '2018-08-18 02:58:34', '2018-08-18 02:58:43', '2018-08-18 03:00:17'),
(71, 12, 6, 1, '2018-08-18 03:00:45', '2018-08-18 03:05:19', '2018-08-18 03:07:51'),
(72, 12, 4, 0, '2018-08-18 03:08:14', '2018-08-18 03:13:25', '2018-08-18 03:13:27'),
(73, 12, 6, 1, '2018-08-18 03:16:21', '2018-08-18 03:16:21', '2018-08-18 03:16:36'),
(74, 12, 6, 1, '2018-08-18 03:18:19', '2018-08-18 03:18:19', '2018-08-18 03:19:29'),
(75, 12, 5, 1, '2018-08-18 03:18:27', '2018-08-18 03:18:27', '2018-08-18 03:18:31'),
(76, 12, 5, 1, '2018-08-18 03:19:21', '2018-08-18 03:19:21', '2018-08-18 03:19:27'),
(77, 12, 8, 0, '2018-08-18 03:24:02', '2018-09-17 01:56:54', '2018-09-17 02:01:30'),
(78, 12, 9, 1, '2018-08-18 03:24:03', '2018-08-18 04:20:32', '2018-08-18 21:04:12'),
(79, 12, 6, 1, '2018-08-18 03:24:05', '2018-08-18 03:24:49', '2018-08-18 21:29:52'),
(80, 12, 5, 1, '2018-08-18 03:24:30', '2018-08-18 03:26:12', '2018-08-18 03:26:15'),
(81, 12, 5, 1, '2018-08-18 03:26:20', '2018-08-18 03:26:20', '2018-08-18 21:29:51'),
(82, 12, 4, 1, '2018-08-18 03:26:23', '2018-08-18 03:26:23', '2018-08-18 04:18:55'),
(83, 12, 3, 1, '2018-08-18 03:26:24', '2018-08-18 03:30:27', '2018-08-18 04:18:54'),
(84, 12, 1, 1, '2018-08-18 03:26:26', '2018-08-18 03:26:26', '2018-08-18 03:26:30'),
(85, 12, 1, 1, '2018-08-18 03:31:53', '2018-08-18 03:31:53', '2018-08-18 03:55:40'),
(86, 12, 1, 1, '2018-08-18 03:55:43', '2018-08-18 03:55:43', '2018-08-18 03:56:21'),
(87, 12, 1, 1, '2018-08-18 03:56:25', '2018-08-18 04:18:40', '2018-08-18 04:18:52'),
(88, 12, 4, 1, '2018-08-18 04:19:08', '2018-08-18 04:19:08', '2018-08-18 04:19:12'),
(89, 12, 4, 1, '2018-08-18 04:20:47', '2018-08-18 04:21:05', '2018-08-18 04:36:50'),
(90, 12, 4, 0, '2018-08-18 05:37:29', '2018-08-18 21:09:10', '2018-08-18 21:29:49'),
(91, 12, 3, 0, '2018-08-18 05:37:31', '2018-08-18 21:09:04', '2018-08-18 21:29:48'),
(92, 12, 1, 0, '2018-08-18 05:37:49', '2018-08-18 13:06:18', '2018-08-18 13:06:28'),
(93, 12, 1, 1, '2018-08-18 13:06:32', '2018-08-18 13:06:32', '2018-08-18 16:35:22'),
(94, 12, 1, 1, '2018-08-18 16:36:17', '2018-08-18 16:36:17', '2018-08-18 21:29:46'),
(95, 12, 9, 1, '2018-08-18 21:29:38', '2018-08-18 21:29:38', '2018-08-18 21:29:44'),
(96, 12, 9, 0, '2018-08-18 21:30:55', '2018-09-17 01:56:57', '2018-09-17 02:01:31'),
(97, 12, 5, 0, '2018-08-18 21:30:57', '2018-09-17 01:56:28', '2018-09-17 01:56:31'),
(98, 12, 6, 0, '2018-08-18 21:30:59', '2018-09-16 03:54:40', '2018-09-16 03:55:06'),
(99, 12, 4, 0, '2018-08-18 21:31:01', '2018-09-13 18:47:38', '2018-09-13 19:03:07'),
(100, 12, 6, 1, '2018-09-16 04:33:04', '2018-09-17 02:01:04', '2018-09-17 02:01:33'),
(101, 12, 3, 0, '2018-09-16 04:33:11', '2018-09-17 02:01:11', NULL),
(102, 12, 4, 1, '2018-09-16 04:33:31', '2018-09-16 04:33:31', NULL),
(103, 12, 1, 1, '2018-09-16 04:33:33', '2018-09-16 04:33:33', '2018-09-16 04:49:01'),
(104, 12, 1, 1, '2018-09-16 04:49:04', '2018-09-17 02:00:51', NULL),
(105, 12, 5, 1, '2018-09-17 01:56:38', '2018-10-03 07:44:39', NULL),
(106, 12, 9, 1, '2018-09-17 19:09:18', '2018-09-17 19:09:18', '2018-09-17 19:09:30'),
(107, 12, 9, 0, '2018-09-17 19:09:36', '2018-10-01 10:24:10', NULL),
(108, 12, 8, 1, '2018-10-04 06:45:04', '2018-10-04 06:45:04', '2018-10-04 06:45:25'),
(109, 12, 6, 1, '2018-10-04 06:45:19', '2018-10-04 06:45:19', '2018-10-04 10:09:38'),
(110, 12, 8, 1, '2018-10-04 06:45:31', '2018-10-04 06:45:31', '2018-10-04 07:53:03'),
(111, 12, 8, 1, '2018-10-04 09:32:53', '2018-10-04 09:32:53', '2018-10-04 09:33:04'),
(112, 12, 8, 1, '2018-10-04 09:34:49', '2018-10-04 09:34:49', '2018-10-04 09:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `factory_energy_source_types`
--

CREATE TABLE `factory_energy_source_types` (
  `id` int(11) NOT NULL,
  `factory_id` int(11) DEFAULT NULL,
  `energy_source_id` int(11) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factory_product_types`
--

CREATE TABLE `factory_product_types` (
  `id` int(11) NOT NULL,
  `factory_id` int(11) DEFAULT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factory_solid_waste_types`
--

CREATE TABLE `factory_solid_waste_types` (
  `id` int(11) NOT NULL,
  `factory_id` int(11) DEFAULT NULL,
  `solid_waste_id` int(11) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factory_users`
--

CREATE TABLE `factory_users` (
  `id` int(11) NOT NULL,
  `factory_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factory_users`
--

INSERT INTO `factory_users` (`id`, `factory_id`, `user_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 12, 24, 1, '2018-08-14 03:11:23', '2018-08-14 03:11:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `factory_water_source_types`
--

CREATE TABLE `factory_water_source_types` (
  `id` int(11) NOT NULL,
  `factory_id` int(11) DEFAULT NULL,
  `water_source_type_id` int(11) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factory_years`
--

CREATE TABLE `factory_years` (
  `id` int(11) NOT NULL,
  `factory_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `status` tinyint(3) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factory_years`
--

INSERT INTO `factory_years` (`id`, `factory_id`, `year`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 12, 2017, 0, NULL, NULL, NULL),
(2, 12, 2018, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE `production` (
  `id` int(11) NOT NULL,
  `factory_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `production`
--

INSERT INTO `production` (`id`, `factory_id`, `department_id`, `amount`, `year`, `month`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 12, 1, 121, 2018, 1, 1, '2018-08-18 10:47:48', '2018-09-17 19:10:20', NULL),
(13, 12, 3, 1592.222, 2018, 1, 1, '2018-08-18 10:47:52', '2018-08-18 12:11:58', NULL),
(17, 12, 4, 21, 2018, 1, 1, '2018-08-18 10:50:08', '2018-09-17 19:10:20', NULL),
(20, 12, 5, 1212, 2018, 1, 1, '2018-08-18 10:51:00', '2018-09-17 19:10:19', NULL),
(21, 12, 6, 11, 2018, 1, 1, '2018-08-18 10:52:08', '2018-08-18 13:10:24', NULL),
(26, 12, 9, 21, 2018, 2, 1, '2018-08-18 10:56:08', '2018-09-17 19:10:20', NULL),
(28, 12, 8, 1515, 2018, 2, 1, '2018-08-18 10:56:58', '2018-08-18 13:01:44', NULL),
(29, 12, 7, 21, 2018, 2, 1, '2018-08-18 10:57:04', '2018-09-17 19:10:21', NULL),
(31, 12, 3, 15000, 2018, 2, 1, '2018-08-18 10:57:59', '2018-08-18 11:51:36', NULL),
(33, 12, 2, 21, 2018, 2, 1, '2018-08-18 10:58:46', '2018-09-17 19:10:22', NULL),
(35, 12, 5, 21, 2018, 2, 1, '2018-08-18 11:00:04', '2018-09-17 19:10:21', NULL),
(37, 12, 1, 12, 2018, 5, 1, '2018-08-18 11:02:11', '2018-09-17 19:10:25', NULL),
(38, 12, 1, 12, 2018, 4, 1, '2018-08-18 11:03:14', '2018-09-17 19:10:24', NULL),
(39, 12, 1, 12, 2018, 3, 1, '2018-08-18 11:07:15', '2018-09-17 19:10:22', NULL),
(40, 12, 6, 121, 2018, 3, 1, '2018-08-18 11:08:32', '2018-08-18 13:05:32', NULL),
(41, 12, 6, 13.2, 2018, 6, 1, '2018-08-18 11:09:12', '2018-08-18 12:39:45', NULL),
(42, 12, 5, 12, 2018, 4, 1, '2018-08-18 11:09:59', '2018-08-18 11:09:59', NULL),
(43, 12, 9, 121, 2018, 1, 1, '2018-08-18 11:10:30', '2018-09-17 19:10:19', NULL),
(44, 12, 8, 120, 2018, 1, 1, '2018-08-18 11:10:55', '2018-08-18 11:10:55', NULL),
(45, 12, 7, 21, 2018, 1, 1, '2018-08-18 11:11:40', '2018-09-17 19:10:20', NULL),
(48, 12, 1, 21, 2018, 2, 1, '2018-08-18 11:20:45', '2018-09-17 19:10:21', NULL),
(49, 12, 4, 12, 2018, 4, 1, '2018-08-18 11:21:47', '2018-09-17 19:10:24', NULL),
(50, 12, 6, 12, 2018, 4, 1, '2018-08-18 11:22:07', '2018-08-18 11:45:35', NULL),
(51, 12, 9, 12, 2018, 5, 1, '2018-08-18 11:25:38', '2018-09-17 19:10:25', NULL),
(52, 12, 9, 12, 2018, 6, 1, '2018-08-18 11:25:41', '2018-09-17 19:10:26', NULL),
(53, 12, 6, 151515343434, 2018, 2, 1, '2018-08-18 11:27:03', '2018-08-18 13:01:35', NULL),
(54, 12, 4, 21, 2018, 2, 1, '2018-08-18 12:16:20', '2018-09-17 19:10:21', NULL),
(55, 12, 2, 12, 2018, 3, 1, '2018-08-18 12:16:48', '2018-09-17 19:10:23', NULL),
(56, 12, 9, 212, 2018, 3, 1, '2018-08-18 12:35:44', '2018-08-18 13:05:36', NULL),
(57, 12, 6, 0.4, 2018, 7, 1, '2018-08-18 12:39:35', '2018-08-18 12:39:35', NULL),
(58, 12, 5, 12, 2018, 5, 1, '2018-08-18 12:40:21', '2018-08-18 12:40:21', NULL),
(59, 12, 1, 12, 2018, 8, 1, '2018-08-18 12:40:27', '2018-08-18 12:40:27', NULL),
(60, 12, 3, 12, 2018, 8, 1, '2018-08-18 12:40:27', '2018-08-18 12:40:27', NULL),
(61, 12, 4, 15, 2018, 8, 1, '2018-08-18 12:40:29', '2018-08-18 12:40:29', NULL),
(62, 12, 5, 45.2, 2018, 8, 1, '2018-08-18 12:40:30', '2018-08-18 13:08:32', NULL),
(63, 12, 6, 45, 2018, 8, 1, '2018-08-18 12:40:31', '2018-08-18 12:40:31', NULL),
(64, 12, 8, 212, 2018, 8, 1, '2018-08-18 12:40:33', '2018-08-18 12:40:39', NULL),
(65, 12, 9, 12.2, 2018, 8, 1, '2018-08-18 12:40:38', '2018-08-18 13:08:36', NULL),
(66, 12, 2, 21, 2018, 8, 1, '2018-08-18 12:40:41', '2018-08-18 12:40:41', NULL),
(67, 12, 1, 12, 2018, 9, 1, '2018-08-18 12:40:43', '2018-08-18 12:40:43', NULL),
(68, 12, 3, 121, 2018, 9, 1, '2018-08-18 12:40:44', '2018-08-18 12:40:44', NULL),
(69, 12, 4, 121, 2018, 9, 1, '2018-08-18 12:40:45', '2018-08-18 12:40:45', NULL),
(70, 12, 5, 1212, 2018, 9, 1, '2018-08-18 12:40:45', '2018-08-18 12:40:45', NULL),
(71, 12, 6, 1212, 2018, 9, 1, '2018-08-18 12:40:46', '2018-08-18 12:40:46', NULL),
(72, 12, 9, 121, 2018, 9, 1, '2018-08-18 12:40:47', '2018-08-18 12:40:47', NULL),
(73, 12, 8, 218255, 2018, 9, 1, '2018-08-18 12:40:49', '2018-08-18 12:40:49', NULL),
(74, 12, 7, 555, 2018, 9, 1, '2018-08-18 12:40:50', '2018-08-18 12:40:50', NULL),
(75, 12, 2, 585, 2018, 9, 1, '2018-08-18 12:40:51', '2018-08-18 12:40:51', NULL),
(76, 12, 1, 554, 2018, 10, 1, '2018-08-18 12:40:53', '2018-08-18 12:40:53', NULL),
(77, 12, 3, 554, 2018, 10, 1, '2018-08-18 12:40:54', '2018-08-18 12:40:54', NULL),
(78, 12, 4, 55654, 2018, 10, 1, '2018-08-18 12:40:55', '2018-08-18 12:40:55', NULL),
(79, 12, 5, 565, 2018, 10, 1, '2018-08-18 12:40:57', '2018-08-18 12:40:57', NULL),
(80, 12, 6, 565, 2018, 10, 1, '2018-08-18 12:40:58', '2018-08-18 12:40:58', NULL),
(81, 12, 9, 5654, 2018, 10, 1, '2018-08-18 12:40:59', '2018-08-18 12:40:59', NULL),
(82, 12, 8, 565, 2018, 10, 1, '2018-08-18 12:41:00', '2018-08-18 12:41:00', NULL),
(83, 12, 7, 565, 2018, 10, 1, '2018-08-18 12:41:01', '2018-08-18 12:41:01', NULL),
(84, 12, 2, 656, 2018, 10, 1, '2018-08-18 12:41:03', '2018-08-18 12:41:03', NULL),
(85, 12, 1, 258, 2018, 11, 1, '2018-08-18 12:41:07', '2018-08-18 12:41:07', NULL),
(86, 12, 3, 1212, 2018, 11, 1, '2018-08-18 12:41:09', '2018-08-18 12:41:09', NULL),
(87, 12, 4, 1212, 2018, 11, 1, '2018-08-18 12:41:10', '2018-08-18 12:41:10', NULL),
(88, 12, 5, 1212, 2018, 11, 1, '2018-08-18 12:41:11', '2018-08-18 12:41:11', NULL),
(89, 12, 6, 121, 2018, 11, 1, '2018-08-18 12:41:11', '2018-08-18 12:41:11', NULL),
(90, 12, 9, 2121, 2018, 11, 1, '2018-08-18 12:41:12', '2018-08-18 12:41:12', NULL),
(91, 12, 8, 21212, 2018, 11, 1, '2018-08-18 12:41:13', '2018-08-18 12:41:13', NULL),
(92, 12, 7, 1212, 2018, 11, 1, '2018-08-18 12:41:14', '2018-08-18 12:41:14', NULL),
(93, 12, 2, 121, 2018, 11, 1, '2018-08-18 12:41:15', '2018-08-18 12:41:15', NULL),
(94, 12, 1, 1212, 2018, 12, 1, '2018-08-18 12:41:16', '2018-08-18 12:41:16', NULL),
(95, 12, 5, 12, 2018, 3, 1, '2018-08-18 13:05:31', '2018-08-18 13:05:31', NULL),
(96, 12, 4, 12, 2018, 5, 1, '2018-08-18 13:11:55', '2018-08-18 14:10:27', NULL),
(97, 12, 1, 122, 2015, 1, 1, '2018-08-18 13:50:48', '2018-08-18 21:24:11', NULL),
(98, 12, 3, 0.5458, 2015, 1, 1, '2018-08-18 13:55:52', '2018-08-18 21:20:35', NULL),
(99, 12, 4, 0.9, 2015, 1, 1, '2018-08-18 13:55:54', '2018-08-18 13:55:54', NULL),
(100, 12, 5, 1, 2015, 1, 1, '2018-08-18 13:55:55', '2018-08-18 13:55:55', NULL),
(101, 12, 6, 0.9, 2015, 1, 1, '2018-08-18 13:55:56', '2018-08-18 13:55:56', NULL),
(102, 12, 9, 1, 2015, 1, 1, '2018-08-18 13:55:58', '2018-08-18 13:55:58', NULL),
(103, 12, 8, 0.9, 2015, 1, 1, '2018-08-18 13:55:59', '2018-08-18 13:55:59', NULL),
(104, 12, 7, 0.9, 2015, 1, 1, '2018-08-18 13:56:00', '2018-08-18 13:56:00', NULL),
(105, 12, 2, 1515, 2015, 1, 1, '2018-08-18 13:56:02', '2018-08-18 13:56:02', NULL),
(106, 12, 1, 151515, 2015, 2, 1, '2018-08-18 13:56:03', '2018-08-18 13:56:03', NULL),
(107, 12, 3, 51515, 2015, 2, 1, '2018-08-18 13:56:04', '2018-08-18 13:56:04', NULL),
(108, 12, 4, 15151, 2015, 2, 1, '2018-08-18 13:56:05', '2018-08-18 13:56:05', NULL),
(109, 12, 5, 515152, 2015, 2, 1, '2018-08-18 13:56:05', '2018-10-01 10:40:37', NULL),
(110, 12, 6, 1515, 2015, 2, 1, '2018-08-18 13:56:06', '2018-08-18 13:56:06', NULL),
(111, 12, 9, 5151, 2015, 2, 1, '2018-08-18 13:56:07', '2018-08-18 13:56:07', NULL),
(112, 12, 8, 5151, 2015, 2, 1, '2018-08-18 13:56:08', '2018-08-18 13:56:08', NULL),
(113, 12, 7, 515, 2015, 2, 1, '2018-08-18 13:56:08', '2018-08-18 13:56:08', NULL),
(114, 12, 2, 515, 2015, 2, 1, '2018-08-18 13:56:09', '2018-08-18 13:56:09', NULL),
(115, 12, 1, 51155, 2015, 3, 1, '2018-08-18 13:56:10', '2018-08-18 13:56:10', NULL),
(116, 12, 3, 15151, 2015, 3, 1, '2018-08-18 13:56:11', '2018-08-18 13:56:11', NULL),
(117, 12, 4, 51515, 2015, 3, 1, '2018-08-18 13:56:11', '2018-08-18 13:56:11', NULL),
(118, 12, 5, 1515, 2015, 3, 1, '2018-08-18 13:56:12', '2018-08-18 13:56:12', NULL),
(119, 12, 6, 51551, 2015, 3, 1, '2018-08-18 13:56:13', '2018-08-18 13:56:13', NULL),
(120, 12, 9, 1515, 2015, 3, 1, '2018-08-18 13:56:14', '2018-08-18 13:56:14', NULL),
(121, 12, 8, 5151, 2015, 3, 1, '2018-08-18 13:56:14', '2018-08-18 13:56:14', NULL),
(122, 12, 7, 5151, 2015, 3, 1, '2018-08-18 13:56:15', '2018-08-18 13:56:15', NULL),
(123, 12, 2, 5151, 2015, 3, 1, '2018-08-18 13:56:16', '2018-08-18 13:56:16', NULL),
(124, 12, 1, 51515, 2015, 4, 1, '2018-08-18 13:56:17', '2018-08-18 13:56:17', NULL),
(125, 12, 3, 151551, 2015, 4, 1, '2018-08-18 13:56:18', '2018-08-18 13:56:18', NULL),
(126, 12, 4, 155151, 2015, 4, 1, '2018-08-18 13:56:18', '2018-08-18 13:56:18', NULL),
(127, 12, 5, 5151, 2015, 4, 1, '2018-08-18 13:56:19', '2018-08-18 13:56:19', NULL),
(128, 12, 6, 515115, 2015, 4, 1, '2018-08-18 13:56:20', '2018-08-18 13:56:20', NULL),
(129, 12, 9, 515151, 2015, 4, 1, '2018-08-18 13:56:21', '2018-08-18 13:56:21', NULL),
(130, 12, 8, 515151, 2015, 4, 1, '2018-08-18 13:56:22', '2018-08-18 13:56:22', NULL),
(131, 12, 7, 515151, 2015, 4, 1, '2018-08-18 13:56:23', '2018-08-18 13:56:23', NULL),
(132, 12, 2, 5151, 2015, 4, 1, '2018-08-18 13:56:25', '2018-08-18 13:56:25', NULL),
(133, 12, 1, 156, 2014, 1, 1, '2018-08-18 14:07:01', '2018-08-18 14:07:01', NULL),
(134, 12, 3, 159, 2014, 1, 1, '2018-08-18 21:18:55', '2018-08-18 21:18:55', NULL),
(135, 12, 4, 25815, 2014, 1, 1, '2018-08-18 21:18:58', '2018-09-17 01:11:11', NULL),
(136, 12, 5, 121267, 2014, 1, 1, '2018-08-18 21:19:01', '2018-09-17 01:58:08', NULL),
(137, 12, 6, 1212, 2014, 1, 1, '2018-08-18 21:40:20', '2018-08-18 21:40:20', NULL),
(138, 12, 9, 1212, 2014, 1, 1, '2018-08-18 21:40:22', '2018-08-18 21:40:22', NULL),
(139, 12, 8, 1212, 2014, 1, 1, '2018-08-18 21:40:23', '2018-08-18 21:40:23', NULL),
(140, 12, 7, 12121, 2014, 1, 1, '2018-08-18 21:40:24', '2018-08-18 21:40:24', NULL),
(141, 12, 2, 1212, 2014, 1, 1, '2018-08-18 21:40:25', '2018-08-18 21:40:25', NULL),
(142, 12, 4, 123, 2018, 7, 1, '2018-08-18 22:04:21', '2018-08-18 22:04:21', NULL),
(143, 12, 5, 898, 2014, 2, 1, '2018-09-17 09:08:07', '2018-09-17 09:08:07', NULL),
(144, 12, 1, 9, 2014, 2, 1, '2018-09-17 09:08:10', '2018-09-17 09:08:10', NULL),
(145, 12, 4, 9880, 2014, 2, 1, '2018-09-17 09:08:11', '2018-09-17 09:08:11', NULL),
(146, 12, 7, 1515, 2018, 8, 1, '2018-09-17 19:10:12', '2018-09-17 19:10:12', NULL),
(147, 12, 2, 21, 2018, 1, 1, '2018-09-17 19:10:20', '2018-09-17 19:10:20', NULL),
(148, 12, 4, 12, 2018, 3, 1, '2018-09-17 19:10:22', '2018-09-17 19:10:22', NULL),
(149, 12, 7, 12, 2018, 3, 1, '2018-09-17 19:10:23', '2018-09-17 19:10:23', NULL),
(150, 12, 9, 12, 2018, 4, 1, '2018-09-17 19:10:23', '2018-09-17 19:10:23', NULL),
(151, 12, 7, 12, 2018, 4, 1, '2018-09-17 19:10:24', '2018-09-17 19:10:24', NULL),
(152, 12, 2, 12, 2018, 4, 1, '2018-09-17 19:10:24', '2018-09-17 19:10:24', NULL),
(153, 12, 7, 12, 2018, 5, 1, '2018-09-17 19:10:25', '2018-09-17 19:10:25', NULL),
(154, 12, 2, 12, 2018, 5, 1, '2018-09-17 19:10:26', '2018-09-17 19:10:26', NULL),
(155, 12, 5, 12, 2018, 6, 1, '2018-09-17 19:10:26', '2018-09-17 19:10:26', NULL),
(156, 12, 1, 12, 2018, 6, 1, '2018-09-17 19:10:26', '2018-09-17 19:10:26', NULL),
(157, 12, 4, 12, 2018, 6, 1, '2018-09-17 19:10:26', '2018-09-17 19:10:26', NULL),
(158, 12, 7, 12, 2018, 6, 1, '2018-09-17 19:10:27', '2018-09-17 19:10:27', NULL),
(159, 12, 2, 12, 2018, 6, 1, '2018-09-17 19:10:27', '2018-09-17 19:10:27', NULL),
(160, 12, 9, 1, 2018, 7, 1, '2018-09-17 19:10:28', '2018-09-17 19:10:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `logo`, `website`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'pact', 'anything', 'pact.com', '2018-10-02 11:55:05', '2018-10-02 11:56:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `solid_waste_types`
--

CREATE TABLE `solid_waste_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_info_id` int(11) DEFAULT NULL,
  `access_group_id` int(11) NOT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `remember_token` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `user_info_id`, `access_group_id`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(21, 'project', '$2a$08$u0/ebjOBalQECZTmvteZne/oNllXoaGyYMPYTarfrihOONFZBvn1q', 'project@gmail.com', 22, 5, 0, NULL, '2018-09-15 17:17:01', '2018-09-15 17:17:01', NULL),
(24, 'factory', '$2a$08$z.GiJgsXBY3iA5onrfiAI.w.xBITc.2uR0ORaWuzxWJQjWE.r8JFa', 'factory@gmail.com', 25, 2, 0, NULL, '2018-09-15 17:19:55', '2018-09-15 17:19:55', NULL),
(25, 'brand', '$2a$08$0oFI7JtMkpk5AtQUPSChFeoXbe7x0sIUIkpcNmK3ilgiV0/E1Zmhi', 'brand@gmail.com', 26, 3, 0, NULL, '2018-09-15 17:20:16', '2018-09-15 17:20:16', NULL),
(27, 'consultant', '$2a$08$AykseYQHqxjmBP74i/NVcOgvrGw4siVn4OiTeXXcUZ/RDhQe1qE9.', 'consultant@gmail.com', 28, 4, 0, NULL, '2018-09-15 17:20:57', '2018-09-15 17:20:57', NULL),
(29, 'admin', '$2a$08$A6JnkJeYMOaxUkYTJ9XVsOJOfl1QYmNTrqnT8hk8QcPFg48b4Aca.', 'admin@gmail.com', 30, 1, 0, NULL, '2018-09-15 17:21:56', '2018-09-15 17:21:56', NULL),
(30, 'Auuntoo', '$2a$08$.1RYSnijNOZp7b7xg.sfqujrIraoZjbINY7M4ILxg6BU7qkyGrXuW', 'Aa@gmail.com', 31, 5, 0, NULL, '2018-09-16 10:12:06', '2018-09-16 10:12:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_categories`
--

CREATE TABLE `user_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_categories`
--

INSERT INTO `user_categories` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'factory', 1, NULL, NULL, NULL),
(2, 'brand', 1, NULL, NULL, NULL),
(3, 'consultant', 1, NULL, NULL, NULL),
(4, 'project', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

CREATE TABLE `user_infos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avater` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `phone3` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_infos`
--

INSERT INTO `user_infos` (`id`, `name`, `avater`, `address`, `phone`, `phone2`, `phone3`, `designation`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(22, 'project owner', NULL, 'sdsds', '01553652775', NULL, NULL, 'admin', 0, '2018-09-15 17:17:01', '2018-09-15 17:17:01', NULL),
(25, 'factory owner', NULL, 'sdsds', '01553652775', NULL, NULL, 'admin', 0, '2018-09-15 17:19:55', '2018-09-15 17:19:55', NULL),
(26, 'brand owner', NULL, 'sdsds', '01553652775', NULL, NULL, 'admin', 0, '2018-09-15 17:20:16', '2018-09-15 17:20:16', NULL),
(28, 'consultant owner', NULL, 'sdsds', '01553652775', NULL, NULL, 'admin', 0, '2018-09-15 17:20:57', '2018-09-15 17:20:57', NULL),
(30, 'super admin', NULL, 'sdsds', '01553652775', NULL, NULL, 'admin', 0, '2018-09-15 17:21:56', '2018-09-15 17:21:56', NULL),
(31, 'Auuntoo', NULL, 'Nikunja', '015', NULL, NULL, 'SE', 0, '2018-09-16 10:12:05', '2018-09-16 10:12:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `water_consumption`
--

CREATE TABLE `water_consumption` (
  `id` int(11) NOT NULL,
  `factory_id` int(11) DEFAULT NULL,
  `consumption_source_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `water_produce`
--

CREATE TABLE `water_produce` (
  `id` int(11) NOT NULL,
  `factory_id` int(11) DEFAULT NULL,
  `water_resource_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `water_source_types`
--

CREATE TABLE `water_source_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_groups`
--
ALTER TABLE `access_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `access_permission`
--
ALTER TABLE `access_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `access_permission_types`
--
ALTER TABLE `access_permission_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chemical_types`
--
ALTER TABLE `chemical_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `energy_source_types`
--
ALTER TABLE `energy_source_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factories`
--
ALTER TABLE `factories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `factory_addresses`
--
ALTER TABLE `factory_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factory_certificates`
--
ALTER TABLE `factory_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factory_chemical_types`
--
ALTER TABLE `factory_chemical_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factory_departments`
--
ALTER TABLE `factory_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factory_energy_source_types`
--
ALTER TABLE `factory_energy_source_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factory_product_types`
--
ALTER TABLE `factory_product_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factory_solid_waste_types`
--
ALTER TABLE `factory_solid_waste_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factory_users`
--
ALTER TABLE `factory_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factory_water_source_types`
--
ALTER TABLE `factory_water_source_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factory_years`
--
ALTER TABLE `factory_years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `factory_years_factory_id_year` (`factory_id`,`year`);

--
-- Indexes for table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `production_factory_id_department_id_year_month` (`factory_id`,`department_id`,`year`,`month`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `solid_waste_types`
--
ALTER TABLE `solid_waste_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `users_user_info_id_foreign_idx` (`user_info_id`);

--
-- Indexes for table `user_categories`
--
ALTER TABLE `user_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `water_consumption`
--
ALTER TABLE `water_consumption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `water_produce`
--
ALTER TABLE `water_produce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `water_source_types`
--
ALTER TABLE `water_source_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_groups`
--
ALTER TABLE `access_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `access_permission`
--
ALTER TABLE `access_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `access_permission_types`
--
ALTER TABLE `access_permission_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chemical_types`
--
ALTER TABLE `chemical_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `energy_source_types`
--
ALTER TABLE `energy_source_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factories`
--
ALTER TABLE `factories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `factory_addresses`
--
ALTER TABLE `factory_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `factory_certificates`
--
ALTER TABLE `factory_certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `factory_chemical_types`
--
ALTER TABLE `factory_chemical_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factory_departments`
--
ALTER TABLE `factory_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `factory_energy_source_types`
--
ALTER TABLE `factory_energy_source_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factory_product_types`
--
ALTER TABLE `factory_product_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factory_solid_waste_types`
--
ALTER TABLE `factory_solid_waste_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factory_users`
--
ALTER TABLE `factory_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `factory_water_source_types`
--
ALTER TABLE `factory_water_source_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factory_years`
--
ALTER TABLE `factory_years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `production`
--
ALTER TABLE `production`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `solid_waste_types`
--
ALTER TABLE `solid_waste_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_categories`
--
ALTER TABLE `user_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `water_consumption`
--
ALTER TABLE `water_consumption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `water_produce`
--
ALTER TABLE `water_produce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `water_source_types`
--
ALTER TABLE `water_source_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_user_info_id_foreign_idx` FOREIGN KEY (`user_info_id`) REFERENCES `user_infos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
