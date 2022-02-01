-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2022 at 11:23 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intranet`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isverified` int(11) NOT NULL,
  `user_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verification_mail_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` enum('1','0') COLLATE utf8mb4_unicode_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `message` text DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `appointment_type` char(30) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `content_pages`
--

CREATE TABLE `content_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `country_name` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
(1, 'US', 'United States', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(2, 'CA', 'Canada', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(3, 'AF', 'Afghanistan', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(4, 'AL', 'Albania', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(5, 'DZ', 'Algeria', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(6, 'DS', 'American Samoa', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(7, 'AD', 'Andorra', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(8, 'AO', 'Angola', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(9, 'AI', 'Anguilla', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(10, 'AQ', 'Antarctica', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(11, 'AG', 'Antigua and/or Barbuda', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(12, 'AR', 'Argentina', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(13, 'AM', 'Armenia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(14, 'AW', 'Aruba', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(15, 'AU', 'Australia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(16, 'AT', 'Austria', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(17, 'AZ', 'Azerbaijan', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(18, 'BS', 'Bahamas', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(19, 'BH', 'Bahrain', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(20, 'BD', 'Bangladesh', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(21, 'BB', 'Barbados', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(22, 'BY', 'Belarus', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(23, 'BE', 'Belgium', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(24, 'BZ', 'Belize', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(25, 'BJ', 'Benin', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(26, 'BM', 'Bermuda', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(27, 'BT', 'Bhutan', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(28, 'BO', 'Bolivia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(29, 'BA', 'Bosnia and Herzegovina', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(30, 'BW', 'Botswana', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(31, 'BV', 'Bouvet Island', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(32, 'BR', 'Brazil', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(33, 'IO', 'British lndian Ocean Territory', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(34, 'BN', 'Brunei Darussalam', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(35, 'BG', 'Bulgaria', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(36, 'BF', 'Burkina Faso', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(37, 'BI', 'Burundi', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(38, 'KH', 'Cambodia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(39, 'CM', 'Cameroon', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(40, 'CV', 'Cape Verde', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(41, 'KY', 'Cayman Islands', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(42, 'CF', 'Central African Republic', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(43, 'TD', 'Chad', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(44, 'CL', 'Chile', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(45, 'CN', 'China', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(46, 'CX', 'Christmas Island', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(47, 'CC', 'Cocos (Keeling) Islands', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(48, 'CO', 'Colombia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(49, 'KM', 'Comoros', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(50, 'CG', 'Congo', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(51, 'CK', 'Cook Islands', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(52, 'CR', 'Costa Rica', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(53, 'HR', 'Croatia (Hrvatska)', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(54, 'CU', 'Cuba', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(55, 'CY', 'Cyprus', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(56, 'CZ', 'Czech Republic', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(57, 'DK', 'Denmark', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(58, 'DJ', 'Djibouti', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(59, 'DM', 'Dominica', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(60, 'DO', 'Dominican Republic', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(61, 'TP', 'East Timor', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(62, 'EC', 'Ecuador', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(63, 'EG', 'Egypt', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(64, 'SV', 'El Salvador', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(65, 'GQ', 'Equatorial Guinea', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(66, 'ER', 'Eritrea', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(67, 'EE', 'Estonia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(68, 'ET', 'Ethiopia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(69, 'FK', 'Falkland Islands (Malvinas)', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(70, 'FO', 'Faroe Islands', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(71, 'FJ', 'Fiji', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(72, 'FI', 'Finland', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(73, 'FR', 'France', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(74, 'FX', 'France, Metropolitan', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(75, 'GF', 'French Guiana', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(76, 'PF', 'French Polynesia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(77, 'TF', 'French Southern Territories', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(78, 'GA', 'Gabon', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(79, 'GM', 'Gambia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(80, 'GE', 'Georgia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(81, 'DE', 'Germany', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(82, 'GH', 'Ghana', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(83, 'GI', 'Gibraltar', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(84, 'GR', 'Greece', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(85, 'GL', 'Greenland', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(86, 'GD', 'Grenada', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(87, 'GP', 'Guadeloupe', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(88, 'GU', 'Guam', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(89, 'GT', 'Guatemala', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(90, 'GN', 'Guinea', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(91, 'GW', 'Guinea-Bissau', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(92, 'GY', 'Guyana', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(93, 'HT', 'Haiti', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(94, 'HM', 'Heard and Mc Donald Islands', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(95, 'HN', 'Honduras', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(96, 'HK', 'Hong Kong', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(97, 'HU', 'Hungary', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(98, 'IS', 'Iceland', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(99, 'IN', 'India', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(100, 'ID', 'Indonesia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(101, 'IR', 'Iran (Islamic Republic of)', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(102, 'IQ', 'Iraq', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(103, 'IE', 'Ireland', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(104, 'IL', 'Israel', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(105, 'IT', 'Italy', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(106, 'CI', 'Ivory Coast', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(107, 'JM', 'Jamaica', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(108, 'JP', 'Japan', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(109, 'JO', 'Jordan', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(110, 'KZ', 'Kazakhstan', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(111, 'KE', 'Kenya', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(112, 'KI', 'Kiribati', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(113, 'KP', 'Korea, Democratic People\'s Republic of', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(114, 'KR', 'Korea, Republic of', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(115, 'XK', 'Kosovo', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(116, 'KW', 'Kuwait', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(117, 'KG', 'Kyrgyzstan', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(118, 'LA', 'Lao People\'s Democratic Republic', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(119, 'LV', 'Latvia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(120, 'LB', 'Lebanon', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(121, 'LS', 'Lesotho', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(122, 'LR', 'Liberia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(123, 'LY', 'Libyan Arab Jamahiriya', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(124, 'LI', 'Liechtenstein', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(125, 'LT', 'Lithuania', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(126, 'LU', 'Luxembourg', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(127, 'MO', 'Macau', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(128, 'MK', 'Macedonia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(129, 'MG', 'Madagascar', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(130, 'MW', 'Malawi', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(131, 'MY', 'Malaysia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(132, 'MV', 'Maldives', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(133, 'ML', 'Mali', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(134, 'MT', 'Malta', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(135, 'MH', 'Marshall Islands', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(136, 'MQ', 'Martinique', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(137, 'MR', 'Mauritania', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(138, 'MU', 'Mauritius', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(139, 'TY', 'Mayotte', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(140, 'MX', 'Mexico', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(141, 'FM', 'Micronesia, Federated States of', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(142, 'MD', 'Moldova, Republic of', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(143, 'MC', 'Monaco', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(144, 'MN', 'Mongolia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(145, 'ME', 'Montenegro', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(146, 'MS', 'Montserrat', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(147, 'MA', 'Morocco', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(148, 'MZ', 'Mozambique', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(149, 'MM', 'Myanmar', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(150, 'NA', 'Namibia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(151, 'NR', 'Nauru', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(152, 'NP', 'Nepal', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(153, 'NL', 'Netherlands', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(154, 'AN', 'Netherlands Antilles', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(155, 'NC', 'New Caledonia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(156, 'NZ', 'New Zealand', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(157, 'NI', 'Nicaragua', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(158, 'NE', 'Niger', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(159, 'NG', 'Nigeria', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(160, 'NU', 'Niue', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(161, 'NF', 'Norfork Island', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(162, 'MP', 'Northern Mariana Islands', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(163, 'NO', 'Norway', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(164, 'OM', 'Oman', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(165, 'PK', 'Pakistan', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(166, 'PW', 'Palau', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(167, 'PA', 'Panama', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(168, 'PG', 'Papua New Guinea', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(169, 'PY', 'Paraguay', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(170, 'PE', 'Peru', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(171, 'PH', 'Philippines', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(172, 'PN', 'Pitcairn', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(173, 'PL', 'Poland', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(174, 'PT', 'Portugal', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(175, 'PR', 'Puerto Rico', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(176, 'QA', 'Qatar', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(177, 'RE', 'Reunion', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(178, 'RO', 'Romania', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(179, 'RU', 'Russian Federation', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(180, 'RW', 'Rwanda', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(181, 'KN', 'Saint Kitts and Nevis', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(182, 'LC', 'Saint Lucia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(183, 'VC', 'Saint Vincent and the Grenadines', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(184, 'WS', 'Samoa', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(185, 'SM', 'San Marino', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(186, 'ST', 'Sao Tome and Principe', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(187, 'SA', 'Saudi Arabia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(188, 'SN', 'Senegal', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(189, 'RS', 'Serbia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(190, 'SC', 'Seychelles', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(191, 'SL', 'Sierra Leone', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(192, 'SG', 'Singapore', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(193, 'SK', 'Slovakia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(194, 'SI', 'Slovenia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(195, 'SB', 'Solomon Islands', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(196, 'SO', 'Somalia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(197, 'ZA', 'South Africa', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(198, 'GS', 'South Georgia South Sandwich Islands', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(199, 'ES', 'Spain', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(200, 'LK', 'Sri Lanka', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(201, 'SH', 'St. Helena', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(202, 'PM', 'St. Pierre and Miquelon', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(203, 'SD', 'Sudan', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(204, 'SR', 'Suriname', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(205, 'SJ', 'Svalbarn and Jan Mayen Islands', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(206, 'SZ', 'Swaziland', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(207, 'SE', 'Sweden', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(208, 'CH', 'Switzerland', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(209, 'SY', 'Syrian Arab Republic', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(210, 'TW', 'Taiwan', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(211, 'TJ', 'Tajikistan', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(212, 'TZ', 'Tanzania, United Republic of', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(213, 'TH', 'Thailand', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(214, 'TG', 'Togo', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(215, 'TK', 'Tokelau', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(216, 'TO', 'Tonga', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(217, 'TT', 'Trinidad and Tobago', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(218, 'TN', 'Tunisia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(219, 'TR', 'Turkey', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(220, 'TM', 'Turkmenistan', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(221, 'TC', 'Turks and Caicos Islands', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(222, 'TV', 'Tuvalu', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(223, 'UG', 'Uganda', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(224, 'UA', 'Ukraine', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(225, 'AE', 'United Arab Emirates', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(226, 'GB', 'United Kingdom', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(227, 'UM', 'United States minor outlying islands', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(228, 'UY', 'Uruguay', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(229, 'UZ', 'Uzbekistan', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(230, 'VU', 'Vanuatu', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(231, 'VA', 'Vatican City State', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(232, 'VE', 'Venezuela', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(233, 'VN', 'Vietnam', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(234, 'VG', 'Virgin Islands (British)', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(235, 'VI', 'Virgin Islands (U.S.)', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(236, 'WF', 'Wallis and Futuna Islands', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(237, 'EH', 'Western Sahara', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(238, 'YE', 'Yemen', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(239, 'YU', 'Yugoslavia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(240, 'ZR', 'Zaire', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(241, 'ZM', 'Zambia', '2021-10-01 05:27:18', '2021-10-01 05:27:18'),
(242, 'ZW', 'Zimbabwe', '2021-10-01 05:27:18', '2021-10-01 05:27:18');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `dept_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `dept_name`, `dept_slug`, `created_at`, `updated_at`) VALUES
(1, 'Gold', 'gold', '2021-11-03 04:29:07', '2021-11-03 04:29:07'),
(2, 'Diamonds', 'diamonds', '2021-11-03 04:29:49', '2021-11-03 04:29:49'),
(3, 'JBN Exclusive', 'jbn-exclusive', '2021-11-03 04:30:06', '2021-11-03 04:30:06'),
(4, 'Solitaires', 'solitaires', '2021-11-03 04:30:19', '2021-11-03 04:30:19'),
(5, 'Gifts', 'gifts', '2021-11-03 04:30:37', '2021-11-03 04:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fashionjournals`
--

CREATE TABLE `fashionjournals` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_a_qs`
--

CREATE TABLE `f_a_qs` (
  `id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `page_content` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f_a_qs`
--

INSERT INTO `f_a_qs` (`id`, `page_title`, `slug`, `page_content`, `created_at`, `updated_at`) VALUES
(1, 'Products Related', 'products-related', '<p>Products Related</p>', '2021-11-10 21:21:03', '2021-11-10 21:21:03'),
(2, 'Login Related', 'login-related', '<p>Login Related</p>', '2021-11-24 00:07:43', '2021-11-24 00:07:43'),
(3, 'Registration Related', 'registration-related', '<p>Registration Related</p>', '2021-11-24 00:08:09', '2021-11-24 00:08:09'),
(4, 'Payment Related', 'payment-related', '<p>Payment Related</p>', '2021-11-24 00:08:59', '2021-11-24 00:08:59'),
(5, 'Order Related', 'order-related', '<p>Order Related</p>', '2021-11-24 00:09:18', '2021-11-24 00:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `gtm_trakings`
--

CREATE TABLE `gtm_trakings` (
  `id` int(11) NOT NULL,
  `google_analytics_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics_script_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_pixels_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_pixels_script_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adwords_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_remarketing_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live_chat_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_tickets`
--

CREATE TABLE `help_tickets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `issue` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` enum('pending','closed') NOT NULL DEFAULT 'pending',
  `status_remarks` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `homecontents`
--

CREATE TABLE `homecontents` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `pannel_type` varchar(100) DEFAULT NULL,
  `cta` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homecontents`
--

INSERT INTO `homecontents` (`id`, `title`, `sub_title`, `image`, `description`, `pannel_type`, `cta`, `created_at`, `updated_at`) VALUES
(2, 'IGI Graded Diamonds', '', '618b47b02b455_1636517808.png', '', 'icons', '', '2021-11-10 04:16:48', '2021-11-10 04:16:48'),
(3, 'Secure Payment options', '', '618b47e4e0992_1636517860.png', '', 'icons', '', '2021-11-10 04:17:40', '2021-11-10 04:17:40'),
(4, 'Shipping All Over India', '', '618b480ad3145_1636517898.png', '', 'icons', '', '2021-11-10 04:18:18', '2021-11-10 04:18:18'),
(5, 'NEW ARRIVALS', '', '', 'Make a statement that is all yours. Mix, match and shop to your heart\'s content', 'new-arrival', 'https://jewellerybynikitha.com/newarrivals', '2021-12-22 05:15:12', '2021-12-22 05:15:12'),
(6, 'JEWELLERY BY NIKITHA', '', '6195bb430a75b_1637202755.png', 'Carrying a legacy of over 100 years, Nikitha Linga is an eminent name in the field of Jewellery Design. Her passion for diamonds and gems has inspired her to create timeless pieces that showcase her journey as a jewellery designer and an entrepreneur. With her motto of “Empowering Women is Empowering All”, she has successfully created a loyal clientele for her brand Jewellery by Nikitha.', 'designed_nikitha', '', '2021-11-18 11:28:00', '2021-11-18 21:58:00'),
(7, 'Darling! Pick Your Favourite', '', '618b779ce9a69_1636530076.jpg', '', 'shop_pannel_1', 'https://jewellerybynikitha.com/category/diamonds/women/bangles', '2021-12-30 05:38:37', '2021-12-30 16:08:37'),
(8, 'Rings pick One!', 'EXCLUSIVE ENGAGEMENT', '618b77db6086f_1636530139.jpg', '', 'shop_pannel_2', 'https://jewellerybynikitha.com/category/diamonds/women/rings', '2021-12-30 05:39:21', '2021-12-30 16:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `linked_social_accounts`
--

CREATE TABLE `linked_social_accounts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider_name` varchar(100) DEFAULT NULL,
  `provider_id` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `plot_no` varchar(150) DEFAULT NULL,
  `street` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `state` varchar(70) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `pincode` varchar(15) DEFAULT NULL,
  `primary_phone` varchar(20) DEFAULT NULL,
  `secondary_phone` varchar(20) DEFAULT NULL,
  `map_iframe` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_activities`
--

CREATE TABLE `log_activities` (
  `id` int(11) NOT NULL,
  `subject` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agent` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT '770=Sys Default guest id',
  `cart_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_number` int(11) DEFAULT NULL,
  `razorpay_order_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `log_activities`
--

INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `cart_id`, `order_id`, `order_number`, `razorpay_order_id`, `created_at`, `updated_at`) VALUES
(1, 'checkout by registered account', 'https://jewellerybynikitha.com/checkout-registration', 'POST', '49.206.46.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 11, 1, 0, 0, '0', '2022-01-27 22:55:05', '2022-01-27 22:55:05'),
(2, 'checkout by registered account', 'https://jewellerybynikitha.com/checkout-registration', 'POST', '49.206.46.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 11, 1, 0, 0, '0', '2022-01-27 22:58:37', '2022-01-27 22:58:37'),
(3, 'checkout by registered account', 'https://jewellerybynikitha.com/checkout-registration', 'POST', '49.206.46.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 11, 1, 0, 0, '0', '2022-01-27 22:58:42', '2022-01-27 22:58:42'),
(4, 'checkout by registered account', 'https://jewellerybynikitha.com/checkout-registration', 'POST', '49.206.46.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 11, 1, 0, 0, '0', '2022-01-27 22:59:07', '2022-01-27 22:59:07'),
(5, 'checkout by registered account', 'https://jewellerybynikitha.com/checkout-registration', 'POST', '49.206.46.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 11, 1, 0, 0, '0', '2022-01-27 22:59:41', '2022-01-27 22:59:41'),
(6, 'checkout by registered account', 'https://jewellerybynikitha.com/checkout-registration', 'POST', '49.206.46.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 11, 1, 0, 0, '0', '2022-01-27 23:05:58', '2022-01-27 23:05:58'),
(7, 'checkout by registered account', 'https://jewellerybynikitha.com/checkout-registration', 'POST', '49.206.46.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 11, 1, 0, 0, '0', '2022-01-27 23:07:02', '2022-01-27 23:07:02'),
(8, 'checkout by registered account', 'https://jewellerybynikitha.com/checkout-registration', 'POST', '49.206.46.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 11, 1, 0, 0, '0', '2022-01-27 23:08:06', '2022-01-27 23:08:06'),
(9, 'Payment Intiated - order_IolkazPUBwovxz', 'https://jewellerybynikitha.com/payment-selected', 'POST', '49.206.46.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 11, 1, 0, 0, 'order_IolkazPUBwovxz', '2022-01-27 23:08:45', '2022-01-27 23:08:45'),
(10, 'Payment Intiated - order_Ioln1V8p6JxS5a', 'https://jewellerybynikitha.com/payment-selected', 'POST', '49.206.46.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 11, 1, 0, 0, 'order_Ioln1V8p6JxS5a', '2022-01-27 23:11:02', '2022-01-27 23:11:02'),
(11, 'Payment Intiated - order_IolnPMGYAAgnBT', 'https://jewellerybynikitha.com/payment-selected', 'POST', '49.206.46.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 11, 1, 0, 0, 'order_IolnPMGYAAgnBT', '2022-01-27 23:11:24', '2022-01-27 23:11:24'),
(12, 'Payment Intiated - order_IolnjYl9umOXug', 'https://jewellerybynikitha.com/payment-selected', 'POST', '49.206.46.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 11, 1, 0, 0, 'order_IolnjYl9umOXug', '2022-01-27 23:11:43', '2022-01-27 23:11:43'),
(13, 'Payment Intiated - order_IoloNYlxiBpN6y', 'https://jewellerybynikitha.com/payment-selected', 'POST', '49.206.46.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 11, 1, 0, 0, 'order_IoloNYlxiBpN6y', '2022-01-27 23:12:19', '2022-01-27 23:12:19'),
(14, 'checkout by registered account', 'https://www.jewellerybynikitha.com/checkout-registration', 'POST', '183.82.148.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 11, 4, 0, 0, '0', '2022-02-01 16:03:47', '2022-02-01 16:03:47'),
(15, 'Payment Intiated - order_IqdBb7ojesRKpM', 'https://www.jewellerybynikitha.com/payment-selected', 'POST', '183.82.148.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 11, 4, 0, 0, 'order_IqdBb7ojesRKpM', '2022-02-01 16:04:03', '2022-02-01 16:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `menu_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `child_id` int(11) DEFAULT NULL,
  `mapping_sub_cat` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `menu_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_sorting` int(11) DEFAULT NULL,
  `menu_sub_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_heading` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `menu_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_column_grid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `child_column_grid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Yes',
  `open_new_tab` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_06_21_041053_create_categories_table', 2),
(10, '2021_06_21_045011_create_products_table', 3),
(11, '2021_06_21_161855_create_content_pages_table', 3),
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_06_21_041053_create_categories_table', 2),
(10, '2021_06_21_045011_create_products_table', 3),
(11, '2021_06_21_161855_create_content_pages_table', 3),
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_06_21_041053_create_categories_table', 2),
(10, '2021_06_21_045011_create_products_table', 3),
(11, '2021_06_21_161855_create_content_pages_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subcribe` enum('yes','no') DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` blob DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_date` datetime DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_display` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_map_url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_photos`
--

CREATE TABLE `project_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` smallint(6) NOT NULL,
  `prop_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `udf1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_type` enum('exterior','interior','construction_updates','none','schools','colleges','malls','public_places','hospitals','infra_cover_image') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `type` enum('amenities','gallery','banner','location_map','brochure','none','faq','social_infra','manhatton','masterplan','banner_manhatton','card_banner_manhatton','manhattan_condos','social_infra_image','specifications','custom_section','forms') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `thumb_images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_image_description` blob DEFAULT NULL,
  `sorting` smallint(6) NOT NULL DEFAULT 1,
  `image_category` enum('fullwidth','mediumwidth','smallwidth','none') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `video_url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_show` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `shipping_rate_id` int(11) NOT NULL,
  `shipping_time_id` int(11) NOT NULL,
  `tax_percentage` float NOT NULL,
  `cod_available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`, `country_id`, `shipping_rate_id`, `shipping_time_id`, `tax_percentage`, `cod_available`) VALUES
(1, 'andaman and nicobar islands', 99, 2, 3, 0, 0),
(2, 'andhra pradesh', 99, 2, 3, 0, 0),
(3, 'arunachal pradesh', 99, 2, 3, 0, 0),
(4, 'assam', 99, 2, 3, 0, 0),
(5, 'bihar', 99, 2, 3, 0, 0),
(6, 'chandigarh', 99, 2, 3, 0, 0),
(7, 'chhattisgarh', 99, 2, 3, 0, 0),
(8, 'dadra and nagar haveli', 99, 2, 3, 0, 0),
(9, 'delhi', 99, 2, 3, 0, 0),
(10, 'goa', 99, 2, 3, 0, 0),
(11, 'gujarat', 99, 2, 3, 0, 0),
(12, 'haryana', 99, 2, 3, 0, 0),
(13, 'himachal pradesh', 99, 2, 3, 0, 0),
(14, 'jammu and kashmir', 99, 2, 3, 0, 0),
(15, 'jharkhand', 99, 2, 3, 0, 0),
(16, 'karnataka', 99, 2, 3, 0, 0),
(17, 'kerala', 99, 2, 3, 0, 0),
(18, 'madhya pradesh', 99, 2, 3, 0, 0),
(19, 'maharashtra', 99, 2, 3, 0, 0),
(20, 'manipur', 99, 2, 3, 0, 0),
(21, 'meghalaya', 99, 2, 3, 0, 0),
(22, 'mizoram', 99, 2, 3, 0, 0),
(23, 'nagaland', 99, 2, 3, 0, 0),
(24, 'odisha', 99, 2, 3, 0, 0),
(25, 'puducherry', 99, 2, 3, 0, 0),
(26, 'punjab', 99, 2, 3, 0, 0),
(27, 'rajasthan', 99, 2, 3, 0, 0),
(28, 'tamil nadu', 99, 2, 3, 0, 0),
(29, 'telangana', 99, 2, 3, 0, 0),
(30, 'tripura', 99, 2, 3, 0, 0),
(31, 'uttar pradesh', 99, 2, 3, 0, 0),
(32, 'uttarakhand', 99, 2, 3, 0, 0),
(33, 'west bengal', 99, 2, 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themeoptions`
--

CREATE TABLE `themeoptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_cta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_conditions_cta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no_invoice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_no_invoice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_no_invoice` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_invoice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drno_invoice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_invoice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landmark_invoice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_invoice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_invoice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_invoice` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode_invoice` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_on_button` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_on_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themeoptions`
--

INSERT INTO `themeoptions` (`id`, `header_logo`, `footer_logo`, `favicon`, `footer_address`, `facebook_url`, `twitter_url`, `linkedin_url`, `instagram_url`, `pinterest_url`, `youtube_url`, `copyright`, `mobile`, `email`, `privacy_cta`, `terms_conditions_cta`, `mobile_no_invoice`, `gst_no_invoice`, `pan_no_invoice`, `company_invoice`, `drno_invoice`, `street_invoice`, `landmark_invoice`, `city_invoice`, `state_invoice`, `country_invoice`, `pincode_invoice`, `shop_on_button`, `shop_on_url`, `contact_phone`, `contact_email`, `created_at`, `updated_at`) VALUES
(1, '61f902da69e51_1643709146.jpg', NULL, '61f900bd5e634_1643708605.png', NULL, '', '', NULL, '', '', '', '© Intranet 2021', NULL, NULL, NULL, NULL, '040-48580666', '36AJBPL5128L1Z3', 'AJBPL5128L', 'Intranet', '6-3-1239/3', 'Hitech City', 'Near Shilparamam', 'HYDERABAD', 'TELANGANA', 'India', '500081', '', '', '+91 9052691535', 'venkat@deepredink.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `used_coupons`
--

CREATE TABLE `used_coupons` (
  `id` int(11) NOT NULL,
  `user_id` varchar(150) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) NOT NULL,
  `coupon_code` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` int(11) DEFAULT 0,
  `email` varchar(255) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `pincode` char(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(200) DEFAULT NULL,
  `user_type` varchar(10) DEFAULT NULL,
  `donot_send_newsletter` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `is_guest` int(11) DEFAULT NULL,
  `guest_email` text DEFAULT NULL,
  `sent_email` int(11) DEFAULT NULL,
  `social_media` text DEFAULT NULL,
  `identifier` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `is_active_status` enum('0','1') NOT NULL DEFAULT '1',
  `remember_token` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` datetime NOT NULL DEFAULT current_timestamp(),
  `is_email_verified` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `email`, `password`, `phone`, `country`, `state`, `city`, `address`, `firstname`, `lastname`, `age`, `pincode`, `gender`, `profile`, `profile_pic`, `user_type`, `donot_send_newsletter`, `date`, `is_guest`, `guest_email`, `sent_email`, `social_media`, `identifier`, `ip`, `is_active_status`, `remember_token`, `created_at`, `updated_at`, `email_verified_at`, `is_email_verified`) VALUES
(11, 1, 'admin@intranet.com', '$2y$10$7hfUgc56hGJIuIicNGKVEeVvmlFc7zuod8YfRaSwIDVx7JjEROdea', '9052691535', 'india', 'telangana', 'hyderabad', '9-595 dammaiduda, malkajguiri hyderabad', 'Intra', 'net', NULL, '500083', 'Male', '6181052412acd_1635845412.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '3kPesAiN81phhHkOoV8joQophwVKOTyrAu2Jec1SaXq6n0X4EwYOKuQaQvr7', '2021-07-02 01:33:40', '2022-02-01 16:03:47', '2021-09-28 07:53:01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_verify`
--

CREATE TABLE `users_verify` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_verify`
--

INSERT INTO `users_verify` (`id`, `user_id`, `token`, `created_at`, `updated_at`) VALUES
(1, 778, 'aJRK79LtVaJ8D3iTefSenXSGvdDWjZCgMLgGWEt97UJL4yGYLv7nBTfUBWRGXHqX', '2022-01-27 23:26:54', '2022-01-27 23:26:54'),
(2, 779, 'P3JtjsdEwtwjbt3uFYeP9KicUwHXkzVoNsuLR19mrjjEDjZPXxeU0hdQTrDgDYWe', '2022-01-29 03:21:17', '2022-01-29 03:21:17'),
(3, 779, 'eM5libIkRtHjcsQzOIAXSZeSRvNaUwpCsrERv1VfI5chPYq2ITYBlkJeRiigTWmq', '2022-01-29 03:22:04', '2022-01-29 03:22:04'),
(4, 779, 'blAP7Ei7a8WifOrbcSupzBLsVk3BsyQP5ETsApu2LChzq6NTxYoQsyHK7ni70zdg', '2022-01-29 03:22:07', '2022-01-29 03:22:07'),
(5, 780, 'JDmkslFOG11MyLskB9mNtoyszUdRQu2F1vLWPSi0sOUVuZ7E0iTTiy2tJMUuR5BZ', '2022-02-01 15:56:46', '2022-02-01 15:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Super admin', '', '2021-09-16 06:34:08', '2021-09-16 06:34:22'),
(2, 'Financial Manager', '', '2021-09-16 06:34:08', '2021-09-16 06:34:22'),
(3, 'Content Manager', '', '2021-09-16 06:34:08', '2021-09-16 06:34:22'),
(4, 'General', 'general', '2021-09-16 06:34:08', '2021-09-16 06:34:22'),
(5, 'Guest Customer', 'guest_cust', '2021-09-16 06:34:08', '2021-09-16 06:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 11, 264, '2022-01-27 22:59:47', '2022-01-27 22:59:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fashionjournals`
--
ALTER TABLE `fashionjournals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gtm_trakings`
--
ALTER TABLE `gtm_trakings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_tickets`
--
ALTER TABLE `help_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homecontents`
--
ALTER TABLE `homecontents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linked_social_accounts`
--
ALTER TABLE `linked_social_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_photos`
--
ALTER TABLE `project_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_colums` (`project_id`,`sub_type`,`type`,`sorting`),
  ADD KEY `image_name` (`type`,`sorting`,`banner_url`,`is_show`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themeoptions`
--
ALTER TABLE `themeoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `used_coupons`
--
ALTER TABLE `used_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_name` (`email`,`phone`,`firstname`,`is_email_verified`,`is_active_status`,`lastname`,`created_at`,`updated_at`);

--
-- Indexes for table `users_verify`
--
ALTER TABLE `users_verify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `wishlists_ibfk_2` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fashionjournals`
--
ALTER TABLE `fashionjournals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gtm_trakings`
--
ALTER TABLE `gtm_trakings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_tickets`
--
ALTER TABLE `help_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homecontents`
--
ALTER TABLE `homecontents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `linked_social_accounts`
--
ALTER TABLE `linked_social_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_photos`
--
ALTER TABLE `project_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themeoptions`
--
ALTER TABLE `themeoptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `used_coupons`
--
ALTER TABLE `used_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=781;

--
-- AUTO_INCREMENT for table `users_verify`
--
ALTER TABLE `users_verify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
