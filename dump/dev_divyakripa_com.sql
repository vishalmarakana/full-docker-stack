-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 31, 2019 at 06:39 AM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.12-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev_divyakripa_com`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `checkouts`
--

CREATE TABLE `checkouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `darshans`
--

CREATE TABLE `darshans` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `temple_id` int(10) UNSIGNED NOT NULL,
  `pooja_id` int(10) UNSIGNED NOT NULL,
  `queue` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `darshans`
--

INSERT INTO `darshans` (`id`, `user_id`, `temple_id`, `pooja_id`, `queue`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 9, '2018-11-19 06:38:01', '2018-11-19 06:38:01'),
(2, 2, 1, 1, 4, '2018-11-19 07:28:06', '2018-11-19 07:28:06');

-- --------------------------------------------------------

--
-- Table structure for table `darvamps`
--

CREATE TABLE `darvamps` (
  `id` int(10) UNSIGNED NOT NULL,
  `temple_id` int(10) UNSIGNED NOT NULL,
  `pooja_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vid_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `darvamps`
--

INSERT INTO `darvamps` (`id`, `temple_id`, `pooja_id`, `image`, `vid_link`, `date`, `created_at`, `updated_at`) VALUES
(4, 1, 1, 'public/images/darshans/oKHxu5pahkhzZXHhmyOwenHK8VIe93fYAsaZxzc9.jpeg', NULL, '2018-11-19', '2018-11-19 07:29:13', '2018-11-19 07:29:13'),
(5, 1, 1, 'public/images/darshans/PGht3xDEKR1JhcbvCL45silkbHAxFKDxBsdkhbAA.jpeg', NULL, '2018-11-23', '2018-11-23 18:49:01', '2018-11-23 18:49:01'),
(6, 7, 4, 'public/images/darshans/JTheeWyfqbf7VRM2h7z5iSfFlx78Ayd9nsDHOroM.jpeg', NULL, '2018-11-16', '2018-12-01 08:28:48', '2018-12-01 08:28:48'),
(7, 7, 4, 'public/images/darshans/oZenddbkmoEbUhEnfTXEX2f1vbyXREs5l3mFasYy.jpeg', NULL, '2222-02-08', '2018-12-01 08:29:10', '2018-12-01 08:29:10'),
(8, 1, 6, 'public/images/darshans/gGvPeLIqNsx20ab4cijENFksHF2YVBUnbaJo9yYW.jpeg', NULL, '2018-12-19', '2018-12-19 09:02:47', '2018-12-19 09:02:47'),
(9, 1, 6, 'public/images/darshans/5SnlhXfe0vRsHhMZgtiIiiZO4PFV9qhJUJOS3AEI.jpeg', NULL, '2018-12-19', '2018-12-19 09:04:42', '2018-12-19 09:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `temple_id` int(10) UNSIGNED NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `informations`
--

CREATE TABLE `informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `temple_id` int(10) UNSIGNED NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_god` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purohit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faith` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `history` text COLLATE utf8mb4_unicode_ci,
  `significance` text COLLATE utf8mb4_unicode_ci,
  `management` text COLLATE utf8mb4_unicode_ci,
  `other_gods` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related` text COLLATE utf8mb4_unicode_ci,
  `live` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accomodation` text COLLATE utf8mb4_unicode_ci,
  `annakshetra` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pooja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `donation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prasad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_fac` text COLLATE utf8mb4_unicode_ci,
  `transportation` text COLLATE utf8mb4_unicode_ci,
  `about_city` text COLLATE utf8mb4_unicode_ci,
  `celebration` text COLLATE utf8mb4_unicode_ci,
  `how_to_reach` text COLLATE utf8mb4_unicode_ci,
  `do_dont` text COLLATE utf8mb4_unicode_ci,
  `amenities` text COLLATE utf8mb4_unicode_ci,
  `precautions` text COLLATE utf8mb4_unicode_ci,
  `tender` text COLLATE utf8mb4_unicode_ci,
  `recruitment` text COLLATE utf8mb4_unicode_ci,
  `notice` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `informations`
--

INSERT INTO `informations` (`id`, `temple_id`, `image_url`, `main_god`, `about`, `city`, `contact`, `phone`, `address`, `state`, `country`, `email`, `purohit`, `faith`, `website`, `history`, `significance`, `management`, `other_gods`, `related`, `live`, `accomodation`, `annakshetra`, `pooja`, `donation`, `prasad`, `other_fac`, `transportation`, `about_city`, `celebration`, `how_to_reach`, `do_dont`, `amenities`, `precautions`, `tender`, `recruitment`, `notice`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Hanuman', 'CAMP HANUMAN JI, AHMEDABAD', 'Ahmedabad', 'Admin', '0123456789', 'Ahmedabad', 'Gujarat', 'India', 'camphanu@startinspire.com', 'Narendra', 'Hanumanji', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, 'abcdhjjjh.com hjhk hkh kjk jjlk lk', 'Www.google.com', NULL, NULL, 'abcd', NULL, 'abcd', 'abcd', 'abcd', 'abcd', 'abcd', 'abcd', 'abcd', '2018-11-19 06:05:27', '2018-11-28 09:23:36'),
(2, 3, NULL, 'Hanuman', 'acakdlcmadlcka', 'Ahmedabad', 'Admin', 'One of the Oldest temple located in city of Ahmadabad and near by airport', 'Ahmedabad', 'Gujarat', 'Yes', 'camphanu@startinspire.com', 'Narendra', 'Hanumanji', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'abcd', 'abcd', NULL, NULL, 'abcd', NULL, 'abcd', 'abcd', 'abcd', 'abcd', 'abcd', 'abcd', 'abcd', '2018-11-19 06:05:27', '2018-11-19 10:46:32'),
(3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-20 10:33:29', '2018-11-20 10:33:29'),
(4, 5, NULL, 'Kali', 'askjdhakjsh djkas dkjahskj dahskjh daksjd', 'asldj', 'aksjdhalsjd asdlkh aslkdh', 'asjdh', 'asbdkaj bsdjas', 'sajndla jnd', 'No', 'laksdnlaksjd', 'alskndaslkj', 'laksjdlkasj ;asjd j', 'asldlask jaslkjd lasj lak sj', 'aslkdaslkj l jlaskjd lkjal jl jjjjjj', 'sakjdkki8iiu7w h hhga\'', 'sakjdkki8iiu7w h hhga\'', 'akssjhdka haksjd', 'aksjdhaksj hdaskj d', 'kasjhdaksjh dkjh', 'kasjhdka jhdaksjh d', 'No', 'asdas asd as d', 'asd asd asd a  a aaaaaaa', 'asaaaaaaaaaaa', NULL, 'aksjdhakj hsdajkjs hdkajsh kdjah', 'kajdkjah kjash dkjash dkashkdjahskjd has', NULL, 'kasjhd jakshdkjash dkjhaskj hakjsd h', 'kjhsakjdaskjh kajshd kjas hdkjahs kjhkjjjjj', 'kajahspoooo khagskj', 'ahsdkj h1\r\n1wehq ljkwh\r\nw kjhqkjwhe `', 'kjabsd kjashdkjah dkjah askjdh', 'amsdb ahksbdkas bdkjas', 'askjhd akjshdaksjh kjash d', '2018-11-24 15:56:36', '2018-11-24 20:04:22'),
(5, 6, NULL, 'hanuman', 'ghfjvhghhhhg gb h. h b', 'kota', 'Admin', '7990712559', 'Ahmedabad', 'rajasthan', 'India', 'dhokde@startinspire.com', 'fgchg', 'ghvfgbb', NULL, NULL, NULL, NULL, NULL, NULL, 'cfhuikj.com', 'fgfybcg.com', 'No', 'vhfj m.com', 'abcd.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-01 03:32:48', '2018-12-01 03:34:17'),
(6, 7, NULL, 'Hanuman Ji', 'This Hanumanji temple is considered most holy and sacred. It is among the more prominent ones in the Swaminarayan\r\n\r\nSampraday. The image of Hanuman was installed by Sadguru Gopalanand Swami on Ashwini vadi pancham - savant 1905 (as per Hindu calandar). The image of this temple is said to be so powerful that a mere look at it by people affected by evil spirits,drives the evil spirits out of the people affected. Sarangpur is easily reached by bus or car, as it is only 82 km from Bhavnagar.There can be a long wait at the temple gate sometimes, mainly on Saturdays. The temple is really big and spacious, and the statue of Lord Hanuman is really impressive. Make sure to collect the holy water from the well. There are counters where you can pay', 'Bagodra', 'Admin', '+917990712559', 'Bagodra', 'Guja', 'India', 'kasht@startinspire.com', 'Shree Ji', NULL, 'http://www.salangpurhanumanji.com', 'This Hanumanji temple is considered most holy and sacred. It is among the more prominent ones in the Swaminarayan\r\n\r\nSampraday. The image of Hanuman was installed by Sadguru Gopalanand Swami on Ashwini vadi pancham - savant 1905 (as per Hindu calandar). The image of this temple is said to be so powerful that a mere look at it by people affected by evil spirits,drives the evil spirits out of the people affected. Sarangpur is easily reached by bus or car, as it is only 82 km from Bhavnagar.There can be a long wait at the temple gate sometimes, mainly on Saturdays. The temple is really big and spacious, and the statue of Lord Hanuman is really impressive. Make sure to collect the holy water from the well. There are counters where you can pay\r\n\r\nyour donations against a receipt for the same. You will also be given a plasticbag containing prasad in the form of sukhdis, a Gujarati sweet. Thetemple was renovated recently. Food is\r\n\r\nserved free to all visitors at the temple’s dining room. This dining room is run by the temple’s trust as well as the Swaminarayana temple located in the same complex. Around 5,000 people take prasad in the form of lunch daily.This figure will be at least double on Saturdays. Booklets of Hanuman Chalisa are available in all forms and sizes at very nominal rates. There is a dharmshala located near the gate of the temple, where the people can stay overnight if they wish. The temple hours are 6 am to 12 noon, 3 pm to 9 pm every day. Buses are available from all the main cities of Gujarat.\r\n\r\nYou can also get the daily darshan and other information from its website (www.salangpurhanumanji.com) and you can mail on salangpurhanumanji@yahoo.co.in for any inquiry or any donati', 'Shri Kattabhanjan Hanumanji Temple Bhut, Faith, Hadi, Vyhdi, Special Instruction to the pilgrims arriving\r\n\r\n\r\n»» The time to pass will be from 06:30 to 08:30 in the morning and from 02:30 to 04:30, the pass will not be passed except for this time. \r\n»» First name of the person who is sitting in the lesson from the Hanumanji Temple, after getting the written pass, pass will be given only to the patient. \r\n»» If you have a question of getting a child, then you should include both husband and wife. \r\n»» Passing a compulsory bath in Narayan Kunda of Prabadi of Hanumanji Temple, someone who sits in the lesson. \r\n»» If you have a woman, clean your head properly and keep your hair separate. \r\n»» The lessons will be in the morning between 08:00 and 4:00 pm. \r\n»» After getting the pass, place the person at the place of the Hanumanji Temple at 07:45 in the morning and at 03:45 pm. \r\n»» When the Bhagat wants Bhagat in the temple, give it.\r\n»» Do not take any of the worship lessons in advance, when Maharaj invites you to take it from the counter that was written in the name. \r\n»» The way Lord Shiva shows the rituals of worship or festivals, by faith, by faith. \r\n»» To get the money from the money order at the following address, as per the due date given by Shri Maharajshri. If Maharaj asked to come face to face, then come face to face and believe. \r\n»» To maintain peace at every temporal house of the devotees in the temple, when the recitation of the recitation of the temple in a humble request or temple. \r\n\r\nLtd. Kothari Shri Kattabhanjnadev \r\nHanumanji Temple, \r\nM.P.Salangpur Hanuman (Saurashtra) \r\nTa . Bara, Botad, Pin: 382450 \r\nPhone: (02711) 241202/241408 \r\nFax: 241250', 'abcd', NULL, NULL, 'http://www.salangpurhanumanji.com/?rel=daily_darshan', NULL, 'No', 'http://www.salangpurhanumanji.com/?rel=daily_darshan', NULL, NULL, NULL, 'Bus', 'NIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-01 07:47:13', '2018-12-01 08:17:31');

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
(8, '2017_10_08_000001_create_oauth_access_token_providers_table', 1),
(9, '2018_10_30_182059_create_admins_table', 1),
(10, '2018_10_30_182100_create_admin_password_resets_table', 1),
(11, '2018_10_30_182123_create_temples_table', 1),
(12, '2018_10_30_182124_create_temple_password_resets_table', 1),
(13, '2018_10_30_182131_create_user_password_resets_table', 1),
(14, '2018_11_02_045400_create_products_table', 1),
(15, '2018_11_02_045716_create_poojas_table', 1),
(16, '2018_11_02_045719_create_order_table', 1),
(17, '2018_11_02_045846_create_darshans_table', 1),
(18, '2018_11_05_051418_create_checkout_table', 1),
(19, '2018_11_05_051706_create_donations_table', 1),
(20, '2018_11_15_200707_create_informations_table', 1),
(21, '2018_11_17_160649_make_darshan_revamp_table', 1),
(22, '2018_11_19_031702_subscribers_all', 1),
(23, '2018_11_19_031737_subscribers_custom_temples', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0fbee6d6d3d1eb4bc2f5e0596c400d73ce7730c56388d9946730e3a9eb108bf4ac1f3fea3f1d4b5b', 6, 1, 'MyApp', '[]', 0, '2018-11-21 07:12:30', '2018-11-21 07:12:30', '2019-11-21 07:12:30'),
('112fdddc3ab2c7f9f5b52b70549bd22dd2bf9f452ff41f4336d57738a13da8325fc293b3f6cabec5', 8, 1, 'MyApp', '[]', 0, '2018-12-01 14:45:24', '2018-12-01 14:45:24', '2019-12-01 14:45:24'),
('159c222a64f3b807f6b024f19dcdcd0aaeed97fbd2509b986e4e4411682cab9bcaa2934320fdc6d0', 6, 1, 'MyApp', '[]', 0, '2018-11-21 06:49:30', '2018-11-21 06:49:30', '2019-11-21 06:49:30'),
('18f1adfe3dc6d26191a918a45c1af931eefb46c28bffb9ff350aee5c63d05a7234189040f8fd9b4e', 6, 1, 'MyApp', '[]', 0, '2018-11-20 07:52:02', '2018-11-20 07:52:02', '2019-11-20 07:52:02'),
('1af76f9bfb9040c2508a731fb8d443f44599e1a2b5b8ff15537b3d32a2c21a83b3b76fcfa5a1d072', 6, 1, 'MyApp', '[]', 0, '2018-11-19 09:40:23', '2018-11-19 09:40:23', '2019-11-19 09:40:23'),
('1b02ab7f0d7fb31dcb5abc479426ee857479c3d18f0b0b3034e7aabd99b23cdfda4ec06bfff8b774', 1, 1, 'MyApp', '[]', 0, '2018-11-30 15:00:35', '2018-11-30 15:00:35', '2019-11-30 15:00:35'),
('2a752aceaab58a286a751358724040c05dfc5d21bc30fc3f35fb7eb62013dcee512a5db32f5235c6', 3, 1, 'MyApp', '[]', 0, '2018-11-28 01:52:18', '2018-11-28 01:52:18', '2019-11-28 01:52:18'),
('2c0f7dcb57e4ac6f6520ac1154162df093e04ff02b60db43116cc0f780d0f462c947de4b63b57b6b', 1, 1, 'MyApp', '[]', 0, '2018-11-19 05:28:54', '2018-11-19 05:28:54', '2019-11-19 05:28:54'),
('2c55ff0460761830dc18bfd0ec78e320391144772caac43aa560dea424a851ec1c1db3acc048a179', 8, 1, 'MyApp', '[]', 0, '2018-12-01 04:39:57', '2018-12-01 04:39:57', '2019-12-01 04:39:57'),
('30d6719ce350edb5d54099cad1d00344c94abeb527aa8fc886730c492984d026c19b95fb044a9162', 7, 1, 'MyApp', '[]', 0, '2018-11-22 07:53:00', '2018-11-22 07:53:00', '2019-11-22 07:53:00'),
('3322e40ce7407d3d76d9dfbe9d1b06817534915add405d35c9d0485c1d09b7bf50bb4791b879559f', 6, 1, 'MyApp', '[]', 0, '2018-11-21 16:34:34', '2018-11-21 16:34:34', '2019-11-21 16:34:34'),
('39d5992c77f08a172b410c22cadade72172a8a1ba60c06a8e0ec6f8b180b75fd3d011074ca74b3cf', 2, 1, 'MyApp', '[]', 0, '2018-12-01 08:33:59', '2018-12-01 08:33:59', '2019-12-01 08:33:59'),
('39f295f441c303ebaff121598ceec8ad9b603d3c1ec487324797b2b7235c7ab7720e4b5fc3158cc5', 6, 1, 'MyApp', '[]', 0, '2018-11-21 10:33:14', '2018-11-21 10:33:14', '2019-11-21 10:33:14'),
('3bd17f3f9e90ae8c553571cf39dedf0384fb0fc784670e14b489d7a6ba612e8d58c8b3903075c82e', 6, 1, 'MyApp', '[]', 0, '2018-11-20 18:41:14', '2018-11-20 18:41:14', '2019-11-20 18:41:14'),
('3d2bdf0bc1d3a278540b62d6c30f59ded403e715a14df9475fdab50812ba7a3e098c40e482822802', 7, 1, 'MyApp', '[]', 0, '2018-11-22 08:21:24', '2018-11-22 08:21:24', '2019-11-22 08:21:24'),
('46fd2823b0a2760ea4242b3f8d905756471f30273dd5a25101145373bc95d3bcd0b249fa79cb2e5d', 6, 1, 'MyApp', '[]', 0, '2018-11-20 18:43:09', '2018-11-20 18:43:09', '2019-11-20 18:43:09'),
('4b793fb32b6204e62710605c417b7a1756f302a7c040af4a8197273fae71c6605bdb22394a7b9d93', 2, 1, 'MyApp', '[]', 0, '2018-12-17 06:26:35', '2018-12-17 06:26:35', '2019-12-17 06:26:35'),
('510a561d469bee024dcf48e7a3d24146421e8fff47e25f3da954993d9d87437b3c9474f9609a486d', 6, 1, 'MyApp', '[]', 0, '2018-11-20 18:36:35', '2018-11-20 18:36:35', '2019-11-20 18:36:35'),
('5445a9a730345e4732f6f2cdd625e9396c6607b3a2b7b3e09b991d14c7286b11a3403af595bda7d0', 6, 1, 'MyApp', '[]', 0, '2018-11-21 19:03:19', '2018-11-21 19:03:19', '2019-11-21 19:03:19'),
('54b8c941ba6db8383599712fe0d3c13c976598e738f9c0e7f706cb1c9514758d479a1b2e9c85a330', 6, 1, 'MyApp', '[]', 0, '2018-11-21 07:08:22', '2018-11-21 07:08:22', '2019-11-21 07:08:22'),
('54e91c89d7155870e081b3ff0f35b031fcb57642bcf1c3502992340cc102e8d082630a90421b3d3a', 6, 1, 'MyApp', '[]', 0, '2018-11-21 09:52:01', '2018-11-21 09:52:01', '2019-11-21 09:52:01'),
('5b7d6f0b4b30ecf999df74ba96180e850534dd0c1802af91e489b2447d3aa071ab64c2047001300d', 3, 1, 'MyApp', '[]', 0, '2018-11-28 01:47:43', '2018-11-28 01:47:43', '2019-11-28 01:47:43'),
('63b6c5c0327be72efb4302ec64c510ad28ce9317213fc9bbe00d42e80d968c56fbb6b8135045eaa4', 2, 1, 'MyApp', '[]', 0, '2018-11-30 10:47:49', '2018-11-30 10:47:49', '2019-11-30 10:47:49'),
('663fb9df1d6ab94c3947e43b5a791f65ba79b0ebf1c73ffa26dc1b62dd6681d3fca65f78613d5aa4', 6, 1, 'MyApp', '[]', 0, '2018-11-21 10:30:46', '2018-11-21 10:30:46', '2019-11-21 10:30:46'),
('7626174b6cb158efe9728dcf3174c4e1e2981ddfdb26d033b368d66c3b9c29cba85f46d5916177e6', 6, 1, 'MyApp', '[]', 0, '2018-11-21 06:50:46', '2018-11-21 06:50:46', '2019-11-21 06:50:46'),
('76e401a2d8765b4c838fd271cc4a844f130c03561d35277573872bbe4b7230ddcaaa746afa0e4f39', 6, 1, 'MyApp', '[]', 0, '2018-11-19 08:16:48', '2018-11-19 08:16:48', '2019-11-19 08:16:48'),
('7a8420428b697260101563b47772751e4973fc9e3927a98e08d4539214b28c371bacec3a706c2071', 3, 1, 'MyApp', '[]', 0, '2018-11-28 01:15:40', '2018-11-28 01:15:40', '2019-11-28 01:15:40'),
('7a950ddc37735ceb8daf81028d77460b7c7cfef232effb6bbba24d1b7c8aac8cd41a4cb55c368f3a', 6, 1, 'MyApp', '[]', 0, '2018-11-21 18:28:18', '2018-11-21 18:28:18', '2019-11-21 18:28:18'),
('7c5b472ad791ad31a4e57d8d1dd8a3ac9d4efa90594f476341cd270db1385e056c98d40026b0b1e6', 6, 1, 'MyApp', '[]', 0, '2018-11-19 09:42:02', '2018-11-19 09:42:02', '2019-11-19 09:42:02'),
('7cd8044a1d31ee6874be388f49a3412a991e4a4fac696e7355cdc363f257e6b9261229438ad06804', 4, 1, 'MyApp', '[]', 0, '2018-11-19 07:56:34', '2018-11-19 07:56:34', '2019-11-19 07:56:34'),
('7fc5dc8f20e5c6bd7b2c78adc7f29ac45bb7ebc5caa2d4ec220aff74eba47dd3c8e0b74de08004bd', 6, 1, 'MyApp', '[]', 0, '2018-11-20 18:15:46', '2018-11-20 18:15:46', '2019-11-20 18:15:46'),
('832e1b11c5b120ba9d8bdaf8956361bfec39bf41b05fad8dc1dbbbe4da1ee2e1a75cfed9a329fbcc', 6, 1, 'MyApp', '[]', 0, '2018-11-21 06:49:57', '2018-11-21 06:49:57', '2019-11-21 06:49:57'),
('8606a95ccaebce39089c6110597c81370339f21f8c5248299e54634cab431b5b116c1cd292610cfd', 8, 1, 'MyApp', '[]', 0, '2018-12-01 14:14:16', '2018-12-01 14:14:16', '2019-12-01 14:14:16'),
('888c271e0dd6f0bca7c493feba3f15bd59e1d92ec54655ab8d4cd824ff3e07e6f8f4925c6694c7e0', 6, 1, 'MyApp', '[]', 0, '2018-11-20 09:53:51', '2018-11-20 09:53:51', '2019-11-20 09:53:51'),
('90a91b8de20c374eb6a69c7d54ff87bd1f93efe61d0498baa9db79bbf98261e32f9dd07c616a0b58', 6, 1, 'MyApp', '[]', 0, '2018-11-20 17:40:26', '2018-11-20 17:40:26', '2019-11-20 17:40:26'),
('92fe9f9a122a24e75b0a1d519c82b78841df71143dc7071e545ee17d864410d77897cb8a7e65120c', 7, 1, 'MyApp', '[]', 0, '2018-11-22 08:55:40', '2018-11-22 08:55:40', '2019-11-22 08:55:40'),
('96d184865d3405b5f98ee59f72ff0711d676bb40163ca6660ff4e6e34352f4d63aa6ff965c30c048', 5, 1, 'MyApp', '[]', 0, '2018-11-19 07:56:36', '2018-11-19 07:56:36', '2019-11-19 07:56:36'),
('9cade240f0ddfd7788eac05d30dbfbf0f8e58f06a734421e90086482b8050547b08113dc1d4bd3d0', 6, 1, 'MyApp', '[]', 0, '2018-11-19 09:42:41', '2018-11-19 09:42:41', '2019-11-19 09:42:41'),
('acf65c50417a916a5aed23d37919510f54f291258914898c897334b4b5419c3d31110cb53fd09531', 6, 1, 'MyApp', '[]', 0, '2018-11-21 10:51:52', '2018-11-21 10:51:52', '2019-11-21 10:51:52'),
('adc27ce5fc531bb9651e0a58d013e18cc2ab5a73fccdd7a04aeca743cffec57edeafde48b9eb8d9b', 6, 1, 'MyApp', '[]', 0, '2018-11-19 08:21:14', '2018-11-19 08:21:14', '2019-11-19 08:21:14'),
('ae0c3327c810e163caa48c6f2f525ab3c566a11de1bbd194be88fb6672de3d9ea1e3bea6f5401266', 6, 1, 'MyApp', '[]', 0, '2018-11-20 18:19:22', '2018-11-20 18:19:22', '2019-11-20 18:19:22'),
('aeedf9b59ccd838135a0e217a0387581703d33249b41872cfd3740ca7ec3f914b104ce288c25946b', 6, 1, 'MyApp', '[]', 0, '2018-11-21 19:06:28', '2018-11-21 19:06:28', '2019-11-21 19:06:28'),
('af7743714293f6e804fa86998a6c6ad8865ff6f814dfc1a8d4b74f65b4b3006e62e536b374ab3daf', 6, 1, 'MyApp', '[]', 0, '2018-11-19 08:02:54', '2018-11-19 08:02:54', '2019-11-19 08:02:54'),
('b17351f9be126d509a284f10678b40577befb145fca74407c48b788a33d63a3defa5109253d63438', 3, 1, 'MyApp', '[]', 0, '2018-12-29 03:19:28', '2018-12-29 03:19:28', '2019-12-29 03:19:28'),
('b624e87e0109565bbbbfceffcb3bdc0325aa240cefad92e53e01cfbf059984709460233b71b38a82', 8, 1, 'MyApp', '[]', 0, '2018-12-01 04:41:25', '2018-12-01 04:41:25', '2019-12-01 04:41:25'),
('b8100621192c49a7426ef2001f860e701db37b98169d4f1e3f7800de31d86296563d26801ee9e60c', 3, 1, 'MyApp', '[]', 0, '2018-12-13 11:54:48', '2018-12-13 11:54:48', '2019-12-13 11:54:48'),
('bb7439df8f36689e5cc14cced833ef0652b2ab2045287b62991bda1c1ca2329144e7137cc3c050c3', 7, 1, 'MyApp', '[]', 0, '2018-11-22 07:50:26', '2018-11-22 07:50:26', '2019-11-22 07:50:26'),
('c451c9c286263d0daa28ed2ea31992cf98fa964e73e326609e5cf1b44bca4ff9c82dffc14e64acf4', 3, 1, 'MyApp', '[]', 0, '2018-11-27 18:12:09', '2018-11-27 18:12:09', '2019-11-27 18:12:09'),
('c76add63943fb2bdaa4ab07de4cc078755476f1d02c149fe6ec1a45fa1658528896d4482fcb3d7cc', 6, 1, 'MyApp', '[]', 0, '2018-11-21 10:11:16', '2018-11-21 10:11:16', '2019-11-21 10:11:16'),
('c781bcdb7e427e8e86c46a8f10525fb22d2b6cd672f4c7fdd268ecdf7c8524de59d239405d8ff9d9', 3, 1, 'MyApp', '[]', 0, '2018-11-19 06:57:43', '2018-11-19 06:57:43', '2019-11-19 06:57:43'),
('c7efbe552c6d3dc3a835744e89bf774b8a4ee9080c40f695ec94d4088f081ee3b92e62776217e922', 3, 1, 'MyApp', '[]', 0, '2018-11-28 01:42:48', '2018-11-28 01:42:48', '2019-11-28 01:42:48'),
('d080858f556a0d5067f5fc9abad94f78d4bbea5b2cffbdad312f37cd75000a7fd60eed2fdf41bf94', 6, 1, 'MyApp', '[]', 0, '2018-11-21 07:18:02', '2018-11-21 07:18:02', '2019-11-21 07:18:02'),
('d2e043ded5b3cd839fc369fea9cb1e4992df6a0549bdf00c59931cf3e9d275edf1575d5b2dd3259f', 6, 1, 'MyApp', '[]', 0, '2018-11-21 07:22:02', '2018-11-21 07:22:02', '2019-11-21 07:22:02'),
('e15396a75626f1104dcedc57c675d333f00476179616ecc7de4c8b7093ff997404ef965ef6407d22', 1, 1, 'MyApp', '[]', 0, '2018-11-19 09:49:31', '2018-11-19 09:49:31', '2019-11-19 09:49:31'),
('e6e24a45dd4b434dfa64a11b08b52ac7d924ff82372bc3d1fc47d9cc864a45cd9de3e9d8d1c077b8', 6, 1, 'MyApp', '[]', 0, '2018-11-21 18:37:51', '2018-11-21 18:37:51', '2019-11-21 18:37:51'),
('e97aa12ee5196a234130c12d21e4d7b46fabf777a6fc16f8c090fdb5698d8e733a904e50cba71ca5', 6, 1, 'MyApp', '[]', 0, '2018-11-21 18:21:37', '2018-11-21 18:21:37', '2019-11-21 18:21:37'),
('f4f79e2c5edbcefcebdb10cb0e40c346917f0a409fdec6a3b3de8e13c2eb1b049ba3f7e44fefa088', 6, 1, 'MyApp', '[]', 0, '2018-11-21 11:28:27', '2018-11-21 11:28:27', '2019-11-21 11:28:27'),
('fa2e5530c6a9e49ac4a257925f3e177b2b53a6419cfd3af314192845f8e92414e3c2dedf3548be31', 8, 1, 'MyApp', '[]', 0, '2018-12-01 12:43:35', '2018-12-01 12:43:35', '2019-12-01 12:43:35'),
('fd1f983082c2b12ca9a99c75800b1bda8c02eba8d6efa3e4978478212c3bfd5621cd9f8837466f04', 6, 1, 'MyApp', '[]', 0, '2018-11-20 18:23:03', '2018-11-20 18:23:03', '2019-11-20 18:23:03'),
('fdf90c1588e1ad5177ea3ec779dd687d05b9851b443292e3ad207f79134f76703c95d7de597e956c', 1, 1, 'MyApp', '[]', 0, '2018-12-29 06:50:38', '2018-12-29 06:50:38', '2019-12-29 06:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_token_providers`
--

CREATE TABLE `oauth_access_token_providers` (
  `oauth_access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_token_providers`
--

INSERT INTO `oauth_access_token_providers` (`oauth_access_token_id`, `provider`, `created_at`, `updated_at`) VALUES
('0fbee6d6d3d1eb4bc2f5e0596c400d73ce7730c56388d9946730e3a9eb108bf4ac1f3fea3f1d4b5b', 'users', '2018-11-21 07:12:30', '2018-11-21 07:12:30'),
('112fdddc3ab2c7f9f5b52b70549bd22dd2bf9f452ff41f4336d57738a13da8325fc293b3f6cabec5', 'users', '2018-12-01 14:45:24', '2018-12-01 14:45:24'),
('159c222a64f3b807f6b024f19dcdcd0aaeed97fbd2509b986e4e4411682cab9bcaa2934320fdc6d0', 'users', '2018-11-21 06:49:30', '2018-11-21 06:49:30'),
('18f1adfe3dc6d26191a918a45c1af931eefb46c28bffb9ff350aee5c63d05a7234189040f8fd9b4e', 'users', '2018-11-20 07:52:02', '2018-11-20 07:52:02'),
('1af76f9bfb9040c2508a731fb8d443f44599e1a2b5b8ff15537b3d32a2c21a83b3b76fcfa5a1d072', 'users', '2018-11-19 09:40:23', '2018-11-19 09:40:23'),
('1b02ab7f0d7fb31dcb5abc479426ee857479c3d18f0b0b3034e7aabd99b23cdfda4ec06bfff8b774', 'users', '2018-11-30 15:00:35', '2018-11-30 15:00:35'),
('2a752aceaab58a286a751358724040c05dfc5d21bc30fc3f35fb7eb62013dcee512a5db32f5235c6', 'users', '2018-11-28 01:52:18', '2018-11-28 01:52:18'),
('2c0f7dcb57e4ac6f6520ac1154162df093e04ff02b60db43116cc0f780d0f462c947de4b63b57b6b', 'users', '2018-11-19 05:28:54', '2018-11-19 05:28:54'),
('2c55ff0460761830dc18bfd0ec78e320391144772caac43aa560dea424a851ec1c1db3acc048a179', 'users', '2018-12-01 04:39:57', '2018-12-01 04:39:57'),
('30d6719ce350edb5d54099cad1d00344c94abeb527aa8fc886730c492984d026c19b95fb044a9162', 'users', '2018-11-22 07:53:00', '2018-11-22 07:53:00'),
('3322e40ce7407d3d76d9dfbe9d1b06817534915add405d35c9d0485c1d09b7bf50bb4791b879559f', 'users', '2018-11-21 16:34:34', '2018-11-21 16:34:34'),
('39d5992c77f08a172b410c22cadade72172a8a1ba60c06a8e0ec6f8b180b75fd3d011074ca74b3cf', 'users', '2018-12-01 08:33:59', '2018-12-01 08:33:59'),
('39f295f441c303ebaff121598ceec8ad9b603d3c1ec487324797b2b7235c7ab7720e4b5fc3158cc5', 'users', '2018-11-21 10:33:14', '2018-11-21 10:33:14'),
('3bd17f3f9e90ae8c553571cf39dedf0384fb0fc784670e14b489d7a6ba612e8d58c8b3903075c82e', 'users', '2018-11-20 18:41:14', '2018-11-20 18:41:14'),
('3d2bdf0bc1d3a278540b62d6c30f59ded403e715a14df9475fdab50812ba7a3e098c40e482822802', 'users', '2018-11-22 08:21:24', '2018-11-22 08:21:24'),
('46fd2823b0a2760ea4242b3f8d905756471f30273dd5a25101145373bc95d3bcd0b249fa79cb2e5d', 'users', '2018-11-20 18:43:09', '2018-11-20 18:43:09'),
('4b793fb32b6204e62710605c417b7a1756f302a7c040af4a8197273fae71c6605bdb22394a7b9d93', 'users', '2018-12-17 06:26:35', '2018-12-17 06:26:35'),
('510a561d469bee024dcf48e7a3d24146421e8fff47e25f3da954993d9d87437b3c9474f9609a486d', 'users', '2018-11-20 18:36:35', '2018-11-20 18:36:35'),
('5445a9a730345e4732f6f2cdd625e9396c6607b3a2b7b3e09b991d14c7286b11a3403af595bda7d0', 'users', '2018-11-21 19:03:19', '2018-11-21 19:03:19'),
('54b8c941ba6db8383599712fe0d3c13c976598e738f9c0e7f706cb1c9514758d479a1b2e9c85a330', 'users', '2018-11-21 07:08:22', '2018-11-21 07:08:22'),
('54e91c89d7155870e081b3ff0f35b031fcb57642bcf1c3502992340cc102e8d082630a90421b3d3a', 'users', '2018-11-21 09:52:01', '2018-11-21 09:52:01'),
('5b7d6f0b4b30ecf999df74ba96180e850534dd0c1802af91e489b2447d3aa071ab64c2047001300d', 'users', '2018-11-28 01:47:43', '2018-11-28 01:47:43'),
('63b6c5c0327be72efb4302ec64c510ad28ce9317213fc9bbe00d42e80d968c56fbb6b8135045eaa4', 'users', '2018-11-30 10:47:49', '2018-11-30 10:47:49'),
('663fb9df1d6ab94c3947e43b5a791f65ba79b0ebf1c73ffa26dc1b62dd6681d3fca65f78613d5aa4', 'users', '2018-11-21 10:30:46', '2018-11-21 10:30:46'),
('7626174b6cb158efe9728dcf3174c4e1e2981ddfdb26d033b368d66c3b9c29cba85f46d5916177e6', 'users', '2018-11-21 06:50:46', '2018-11-21 06:50:46'),
('76e401a2d8765b4c838fd271cc4a844f130c03561d35277573872bbe4b7230ddcaaa746afa0e4f39', 'users', '2018-11-19 08:16:48', '2018-11-19 08:16:48'),
('7a8420428b697260101563b47772751e4973fc9e3927a98e08d4539214b28c371bacec3a706c2071', 'users', '2018-11-28 01:15:40', '2018-11-28 01:15:40'),
('7a950ddc37735ceb8daf81028d77460b7c7cfef232effb6bbba24d1b7c8aac8cd41a4cb55c368f3a', 'users', '2018-11-21 18:28:18', '2018-11-21 18:28:18'),
('7c5b472ad791ad31a4e57d8d1dd8a3ac9d4efa90594f476341cd270db1385e056c98d40026b0b1e6', 'users', '2018-11-19 09:42:02', '2018-11-19 09:42:02'),
('7cd8044a1d31ee6874be388f49a3412a991e4a4fac696e7355cdc363f257e6b9261229438ad06804', 'users', '2018-11-19 07:56:34', '2018-11-19 07:56:34'),
('7fc5dc8f20e5c6bd7b2c78adc7f29ac45bb7ebc5caa2d4ec220aff74eba47dd3c8e0b74de08004bd', 'users', '2018-11-20 18:15:46', '2018-11-20 18:15:46'),
('832e1b11c5b120ba9d8bdaf8956361bfec39bf41b05fad8dc1dbbbe4da1ee2e1a75cfed9a329fbcc', 'users', '2018-11-21 06:49:57', '2018-11-21 06:49:57'),
('8606a95ccaebce39089c6110597c81370339f21f8c5248299e54634cab431b5b116c1cd292610cfd', 'users', '2018-12-01 14:14:16', '2018-12-01 14:14:16'),
('888c271e0dd6f0bca7c493feba3f15bd59e1d92ec54655ab8d4cd824ff3e07e6f8f4925c6694c7e0', 'users', '2018-11-20 09:53:51', '2018-11-20 09:53:51'),
('90a91b8de20c374eb6a69c7d54ff87bd1f93efe61d0498baa9db79bbf98261e32f9dd07c616a0b58', 'users', '2018-11-20 17:40:26', '2018-11-20 17:40:26'),
('92fe9f9a122a24e75b0a1d519c82b78841df71143dc7071e545ee17d864410d77897cb8a7e65120c', 'users', '2018-11-22 08:55:40', '2018-11-22 08:55:40'),
('96d184865d3405b5f98ee59f72ff0711d676bb40163ca6660ff4e6e34352f4d63aa6ff965c30c048', 'users', '2018-11-19 07:56:36', '2018-11-19 07:56:36'),
('9cade240f0ddfd7788eac05d30dbfbf0f8e58f06a734421e90086482b8050547b08113dc1d4bd3d0', 'users', '2018-11-19 09:42:41', '2018-11-19 09:42:41'),
('acf65c50417a916a5aed23d37919510f54f291258914898c897334b4b5419c3d31110cb53fd09531', 'users', '2018-11-21 10:51:52', '2018-11-21 10:51:52'),
('adc27ce5fc531bb9651e0a58d013e18cc2ab5a73fccdd7a04aeca743cffec57edeafde48b9eb8d9b', 'users', '2018-11-19 08:21:14', '2018-11-19 08:21:14'),
('ae0c3327c810e163caa48c6f2f525ab3c566a11de1bbd194be88fb6672de3d9ea1e3bea6f5401266', 'users', '2018-11-20 18:19:22', '2018-11-20 18:19:22'),
('aeedf9b59ccd838135a0e217a0387581703d33249b41872cfd3740ca7ec3f914b104ce288c25946b', 'users', '2018-11-21 19:06:28', '2018-11-21 19:06:28'),
('af7743714293f6e804fa86998a6c6ad8865ff6f814dfc1a8d4b74f65b4b3006e62e536b374ab3daf', 'users', '2018-11-19 08:02:54', '2018-11-19 08:02:54'),
('b17351f9be126d509a284f10678b40577befb145fca74407c48b788a33d63a3defa5109253d63438', 'users', '2018-12-29 03:19:28', '2018-12-29 03:19:28'),
('b624e87e0109565bbbbfceffcb3bdc0325aa240cefad92e53e01cfbf059984709460233b71b38a82', 'users', '2018-12-01 04:41:25', '2018-12-01 04:41:25'),
('b8100621192c49a7426ef2001f860e701db37b98169d4f1e3f7800de31d86296563d26801ee9e60c', 'users', '2018-12-13 11:54:48', '2018-12-13 11:54:48'),
('bb7439df8f36689e5cc14cced833ef0652b2ab2045287b62991bda1c1ca2329144e7137cc3c050c3', 'users', '2018-11-22 07:50:26', '2018-11-22 07:50:26'),
('c451c9c286263d0daa28ed2ea31992cf98fa964e73e326609e5cf1b44bca4ff9c82dffc14e64acf4', 'users', '2018-11-27 18:12:09', '2018-11-27 18:12:09'),
('c76add63943fb2bdaa4ab07de4cc078755476f1d02c149fe6ec1a45fa1658528896d4482fcb3d7cc', 'users', '2018-11-21 10:11:16', '2018-11-21 10:11:16'),
('c781bcdb7e427e8e86c46a8f10525fb22d2b6cd672f4c7fdd268ecdf7c8524de59d239405d8ff9d9', 'users', '2018-11-19 06:57:43', '2018-11-19 06:57:43'),
('c7efbe552c6d3dc3a835744e89bf774b8a4ee9080c40f695ec94d4088f081ee3b92e62776217e922', 'users', '2018-11-28 01:42:48', '2018-11-28 01:42:48'),
('d080858f556a0d5067f5fc9abad94f78d4bbea5b2cffbdad312f37cd75000a7fd60eed2fdf41bf94', 'users', '2018-11-21 07:18:02', '2018-11-21 07:18:02'),
('d2e043ded5b3cd839fc369fea9cb1e4992df6a0549bdf00c59931cf3e9d275edf1575d5b2dd3259f', 'users', '2018-11-21 07:22:02', '2018-11-21 07:22:02'),
('e15396a75626f1104dcedc57c675d333f00476179616ecc7de4c8b7093ff997404ef965ef6407d22', 'users', '2018-11-19 09:49:31', '2018-11-19 09:49:31'),
('e6e24a45dd4b434dfa64a11b08b52ac7d924ff82372bc3d1fc47d9cc864a45cd9de3e9d8d1c077b8', 'users', '2018-11-21 18:37:51', '2018-11-21 18:37:51'),
('e97aa12ee5196a234130c12d21e4d7b46fabf777a6fc16f8c090fdb5698d8e733a904e50cba71ca5', 'users', '2018-11-21 18:21:37', '2018-11-21 18:21:37'),
('f4f79e2c5edbcefcebdb10cb0e40c346917f0a409fdec6a3b3de8e13c2eb1b049ba3f7e44fefa088', 'users', '2018-11-21 11:28:27', '2018-11-21 11:28:27'),
('fa2e5530c6a9e49ac4a257925f3e177b2b53a6419cfd3af314192845f8e92414e3c2dedf3548be31', 'users', '2018-12-01 12:43:35', '2018-12-01 12:43:35'),
('fd1f983082c2b12ca9a99c75800b1bda8c02eba8d6efa3e4978478212c3bfd5621cd9f8837466f04', 'users', '2018-11-20 18:23:03', '2018-11-20 18:23:03'),
('fdf90c1588e1ad5177ea3ec779dd687d05b9851b443292e3ad207f79134f76703c95d7de597e956c', 'users', '2018-12-29 06:50:38', '2018-12-29 06:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'DivyaKripa', 'gtQ9LyANkyTwlt3n1t7SJEEMPtap4JL1bwmEujhh', 'http://localhost', 1, 0, 0, '2018-11-19 05:28:33', '2018-11-19 05:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-11-19 05:28:33', '2018-11-19 05:28:33');

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
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `temple_id` int(10) UNSIGNED NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci,
  `quantity` int(11) NOT NULL,
  `expected` time NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `temple_id`, `order_number`, `address`, `quantity`, `expected`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, '2_321607', NULL, 2, '00:00:00', 102, 'Ordered', '2018-11-19 11:14:29', '2018-11-23 05:39:46'),
(2, 3, 2, 6, '', '', 1, '00:00:00', 0, 'Added to Cart', '2018-12-15 15:09:05', '2018-12-15 15:09:05'),
(3, 3, 1, 1, '', '', 1, '00:00:00', 0, 'Added to Cart', '2018-12-29 03:49:38', '2018-12-29 03:49:38'),
(4, 10, 1, 1, '', '', 1, '00:00:00', 0, 'Added to Cart', '2019-01-18 07:44:47', '2019-01-18 07:44:47');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poojas`
--

CREATE TABLE `poojas` (
  `id` int(10) UNSIGNED NOT NULL,
  `temple_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_hour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_hour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `poojas`
--

INSERT INTO `poojas` (`id`, `temple_id`, `title`, `start_hour`, `end_hour`, `created_at`, `updated_at`) VALUES
(1, 1, 'Monday', '6', '9', '2018-11-19 06:24:39', '2018-11-19 06:24:39'),
(2, 6, 'Tuesday, Wednesday, Thursday, Friday, Saturday', '18:33', '7:39', '2018-12-01 03:35:52', '2018-12-01 03:35:52'),
(3, 7, 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday', '6:31', '6:37', '2018-12-01 08:26:05', '2018-12-01 08:26:05'),
(4, 7, 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday', '6:24', '6:27', '2018-12-01 08:28:17', '2018-12-01 08:28:17'),
(6, 1, 'Arti', '05:55', '05:57', '2018-12-19 09:01:56', '2018-12-19 09:01:56'),
(7, 1, 'ghhfh', '17:25', '17:25', '2018-12-19 11:32:45', '2018-12-19 11:32:45'),
(8, 5, 'Kali Puja', '12:00', '14:30', '2018-12-22 12:22:12', '2018-12-22 12:22:12'),
(9, 5, 'Indonesian Mutter', '12:00', '12:00', '2019-01-04 15:26:49', '2019-01-04 15:26:49'),
(10, 1, 'Morning Arti', '05:30', '11:55', '2019-01-05 05:59:16', '2019-01-05 05:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `temple_id` int(10) UNSIGNED NOT NULL,
  `image_url1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `temple_id`, `image_url1`, `image_url2`, `image_url3`, `quantity`, `discount`, `time`, `created_at`, `updated_at`) VALUES
(1, 'Prasad - Camp Hanuman Ji', 'Laddu', 51, 1, 'public/images/products/eNpR9BByhSG6g02HdoydY4AXomlLDomeLruXbWrI.jpeg', 'images/products/GjHWUYlTikGRyBu1I2XmwfnvdafTrbaCTHFPZ9a4.jpeg', NULL, '10', NULL, NULL, '2018-11-19 06:18:12', '2018-11-19 07:26:57'),
(2, 'Arti', 'Arti', 100, 6, 'public/images/products/7C0ENkaAS2CndfNO35eeXQHLie1xbZttI1ZqBecu.jpeg', NULL, NULL, '10', NULL, NULL, '2018-12-01 03:36:41', '2018-12-01 03:36:41'),
(3, 'Shringar', 'Flower', 10085, 6, 'public/images/products/4pq8dT6qSu7cxo46SlaFB56wG9fhZj17nAiYY5df.jpeg', NULL, NULL, '10', NULL, NULL, '2018-12-01 03:37:17', '2018-12-01 03:37:17'),
(4, 'Deepak AArti', 'AArti', 1000, 7, 'public/images/products/JRws871kump5shIX8qnGFYvm23hmshVrNZ8SSu50.jpeg', NULL, NULL, '10', NULL, NULL, '2018-12-01 08:18:57', '2018-12-01 08:18:57'),
(5, 'Prasadam - Devta', 'Prasad', 5150, 7, 'public/images/products/6MTnvtURCaQfMsJ8l884hFV3wbodx378rD5XAu0i.jpeg', NULL, NULL, '100', NULL, NULL, '2018-12-01 08:20:01', '2018-12-01 08:20:01'),
(6, 'Shringar', 'Dev Shringar', 100, 7, 'public/images/products/UHg6c8MyQjUuPlbboq5mtaR4XvElxcuFCsWXHNXG.jpeg', NULL, NULL, '1000', NULL, NULL, '2018-12-01 08:20:43', '2018-12-01 08:20:43');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers_all`
--

CREATE TABLE `subscribers_all` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unsubscribed` tinyint(1) NOT NULL,
  `subscribed_from_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unsubscribed_from_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers_custom_temples`
--

CREATE TABLE `subscribers_custom_temples` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `temple_id` int(11) NOT NULL,
  `unsubscribed` tinyint(1) NOT NULL,
  `subscribed_from_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unsubscribed_from_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temples`
--

CREATE TABLE `temples` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `god` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temples`
--

INSERT INTO `temples` (`id`, `name`, `email`, `password`, `phone`, `god`, `img_url`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'CAMP HANUMAN JI, AHMEDABAD', 'camphanu@startinspire.com', '$2y$10$LRTaN6FvRWcpmlsl3frSQeL02ljkbZT25hWnlCiKn85mPcKNOyQfG', NULL, NULL, 'public/images/darshans/5SnlhXfe0vRsHhMZgtiIiiZO4PFV9qhJUJOS3AEI.jpeg', 'L2Cy1aCzBsCVbaPQCIcdnYyqMvZ3DsSP12Tl0yRswZQDLjoRBL4rlVLwBgrt', '2018-11-19 06:02:29', '2018-12-19 09:04:42'),
(2, 'Hanuman Ji', 'hanuman@divyakripa.com', '$2y$10$naunwDvDk0S3NnsuFOo3cuXDHJuDxHv2a/QUkOb.pbdkQO767KnVu', NULL, NULL, 'public/images/temples/R2GfGiyzwPxH6spWO8So3MD8CHOt93sftitsenA0.jpeg', 'euS32YgM4WXZwypqQenzNXmehoR766E4MFh3OWFkowbAOSaacU1ZBKAB2KhX', '2018-11-20 06:15:40', '2018-11-20 06:15:40'),
(3, 'Bohra Ganesh Ji', 'bohraganeshji@divyakripa.com', '$2y$10$1mhTiOSyHY0S.Ri1dxlsx.bumN2d7dP.A183srTuXOhd2sr6dpKbO', NULL, NULL, NULL, NULL, '2018-11-20 07:06:24', '2018-11-20 07:06:24'),
(4, 'vastrapur ganesh', 'vganesh@startinspire.com', '$2y$10$9V5A46TEPAQQk1EH4JK2MuYEHy02dl2MIGGsNrsQvFHPhWWh9eY0m', NULL, NULL, NULL, NULL, '2018-11-20 10:33:29', '2018-11-20 10:33:29'),
(5, 'Dakshineshwar', 'sonicxxx7@gmail.com', '$2y$10$9PCARKJz0TF.w2eSBCAFAONEwKxoPqLzpewGrsyhv7dmKCxO877q.', NULL, NULL, 'public/images/temples/pcPpsASLYHCGfj9fZR5ieY2MA4ZyJrPCdOlCy95y.jpeg', NULL, '2018-11-24 15:56:36', '2018-11-24 19:48:27'),
(6, 'Dhokde wale Hanuman ji', 'dhokde@startinspire.com', '$2y$10$1XJ6SKp0LJHYQxpNywu3p.RkhjeXnC.bsP1qWvoFb9pVPj2Ot/CtS', NULL, NULL, 'public/images/temples/CVgy7LgdVOUso2BnmFZN4QdyeNj7zFpxRMIBv6FZ.jpeg', 'hOHwUM6YFRl4zrnaTpjLekZb6gq5ds8oZrtqo7hn6BmkJLn1cYnTFxEjcDiI', '2018-12-01 03:32:48', '2018-12-01 08:24:04'),
(7, 'Kashtbhanjan', 'kasht@startinspire.com', '$2y$10$KeWNjRFPyFNN7n27g5.X9egSmLEZFNcpY6SJlHHZtTbEy5dF03RhK', NULL, NULL, 'public/images/temples/469dGFvCXaVVOaYTLxHaJ3Wbak2Dy3aJof19LeSj.jpeg', '6AAtE53MLrCVUFQJhYHQLpcQUWOzyvYYN1ux7mB8zmSvkEUyMtAOQPpeZQv0', '2018-12-01 07:47:13', '2018-12-01 08:18:15');

--
-- Triggers `temples`
--
DELIMITER $$
CREATE TRIGGER `onInsertTempleCreateTempleInformation` AFTER INSERT ON `temples` FOR EACH ROW INSERT INTO 
    informations(
		temple_id, 
		created_at, 
		updated_at
	) 
	VALUES (
		new.id,
		new.created_at,
		new.created_at
	)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `temple_password_resets`
--

CREATE TABLE `temple_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `img_url`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Himanshu Shankhala', 'himanshu.shankhala@gmail.com', '$2y$10$J80GFhgNtp9w2khaAvaGbu1LwnNpxPb202.sUL1rnGTIKKFBbOaeq', NULL, NULL, NULL, '2018-11-19 05:25:27', '2018-11-19 05:25:27'),
(2, 'Pranshul Khandelwal', 'pranshul.khandelwal06@gmail.com', '$2y$10$vwHo/ZOm86LZlFPkG4bCzu06c2H0W7gsc9bwKQuCH/FMoGg0RX3ju', NULL, NULL, 'qtgLtRYcgrETJJ3ZVjccyT2F5sG1bwogbqYofWZ8pZVdRzIFC24eiDK5pf72', '2018-11-19 06:34:09', '2018-11-19 06:34:09'),
(3, 'alka', 'alka@gmail.com', '$2y$10$FfQSVE2JOfH/JookuAB4qO286ZNyB6D9k0I9L/aKu.MUknm9/62Em', NULL, NULL, NULL, '2018-11-19 06:57:43', '2018-11-19 06:57:43'),
(4, 'aa', 'aa@gmail.com', '$2y$10$IyS8kfryGdWsmUFXTKEswO0TQJeEm5lhoYq/9qYPZX1fFEpEw.Wi2', NULL, NULL, NULL, '2018-11-19 07:56:34', '2018-11-19 07:56:34'),
(5, 'alka', 'alka10@gmail.com', '$2y$10$GyAp1IEIGfjRWOSGymNTqe5zUbwQ47hSBkFVxu2pGDMGMwoD0wiIy', NULL, NULL, NULL, '2018-11-19 07:56:36', '2018-11-19 07:56:36'),
(6, 'alka', 'alka20@gmail.com', '$2y$10$f1P8LtqM/VvZgErdnEuTneZKucyHnJwLthwJNTO7GK6c9cZw/hIdW', NULL, NULL, NULL, '2018-11-19 08:02:54', '2018-11-19 08:02:54'),
(7, 'Garima', 'garimas@gmail.com', '$2y$10$MkHItJbZSS7VZxO7YA0PEe0hm2RuUxo5uLr9fC/5/L/soc843pB0y', NULL, NULL, NULL, '2018-11-22 07:50:26', '2018-11-22 07:50:26'),
(8, 'Garima', 'garima3968@gmail.com', '$2y$10$eiZ.m8vqNmbk2yoIGeXaFu6SnUjqV1gyFoSqlKlomjddWOMGz5lsi', NULL, NULL, NULL, '2018-12-01 04:39:57', '2018-12-01 04:39:57'),
(9, 'Dakshineshwar', 'sonicxxx7@gmail.com', '$2y$10$k1losCCKw/ksqKst20lfK.PXegiAAj129jIxhs5wzpOXbg7nCmA36', NULL, NULL, 'NAtaXFN5lPzyYBpafGSqkR48nWNv4mOnl0DHXXysNiHbf92uv0GBH5WEPtoz', '2018-12-06 18:13:47', '2018-12-06 18:13:47'),
(10, 'manvi thakur', 'manvithakur099@gmail.com', '$2y$10$Ud/jtzTwo6f9V76emq0TSeMfzhSjaIQETaZepaRSx3ItVnGzDwoZm', NULL, NULL, NULL, '2019-01-18 06:41:04', '2019-01-18 06:41:04'),
(11, 'Parth', 'inbox6792@gmail.com', '$2y$10$KQYWm2bd6GUZYg4Zo6xvVuL3xf9LTZk43qKGTBet3iyIIz3ikhGK6', NULL, NULL, 'zzMj6fPbUAy9DHMnClyNvGY95QZxuuSzMHkrsUJ6xUnYnQvTh4rKIvXK6ZxX', '2019-01-19 08:51:57', '2019-01-19 08:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_password_resets`
--

CREATE TABLE `user_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`),
  ADD KEY `admin_password_resets_token_index` (`token`);

--
-- Indexes for table `checkouts`
--
ALTER TABLE `checkouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `darshans`
--
ALTER TABLE `darshans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `darshans_pooja_id_foreign` (`pooja_id`),
  ADD KEY `darshans_temple_id_foreign` (`temple_id`),
  ADD KEY `darshans_user_id_foreign` (`user_id`);

--
-- Indexes for table `darvamps`
--
ALTER TABLE `darvamps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `darvamps_temple_id_foreign` (`temple_id`),
  ADD KEY `darvamps_pooja_id_foreign` (`pooja_id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donations_user_id_foreign` (`user_id`),
  ADD KEY `donations_temple_id_foreign` (`temple_id`);

--
-- Indexes for table `informations`
--
ALTER TABLE `informations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `informations_temple_id_foreign` (`temple_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_access_token_providers`
--
ALTER TABLE `oauth_access_token_providers`
  ADD PRIMARY KEY (`oauth_access_token_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_product_id_foreign` (`product_id`),
  ADD KEY `orders_temple_id_foreign` (`temple_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `poojas`
--
ALTER TABLE `poojas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poojas_temple_id_foreign` (`temple_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_temple_id_foreign` (`temple_id`);

--
-- Indexes for table `subscribers_all`
--
ALTER TABLE `subscribers_all`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_all_email_unique` (`email`);

--
-- Indexes for table `subscribers_custom_temples`
--
ALTER TABLE `subscribers_custom_temples`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temples`
--
ALTER TABLE `temples`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `temples_email_unique` (`email`);

--
-- Indexes for table `temple_password_resets`
--
ALTER TABLE `temple_password_resets`
  ADD KEY `temple_password_resets_email_index` (`email`),
  ADD KEY `temple_password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_password_resets`
--
ALTER TABLE `user_password_resets`
  ADD KEY `user_password_resets_email_index` (`email`),
  ADD KEY `user_password_resets_token_index` (`token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checkouts`
--
ALTER TABLE `checkouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `darshans`
--
ALTER TABLE `darshans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `darvamps`
--
ALTER TABLE `darvamps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `informations`
--
ALTER TABLE `informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `poojas`
--
ALTER TABLE `poojas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribers_all`
--
ALTER TABLE `subscribers_all`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers_custom_temples`
--
ALTER TABLE `subscribers_custom_temples`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temples`
--
ALTER TABLE `temples`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `darshans`
--
ALTER TABLE `darshans`
  ADD CONSTRAINT `darshans_pooja_id_foreign` FOREIGN KEY (`pooja_id`) REFERENCES `poojas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `darshans_temple_id_foreign` FOREIGN KEY (`temple_id`) REFERENCES `temples` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `darshans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `darvamps`
--
ALTER TABLE `darvamps`
  ADD CONSTRAINT `darvamps_pooja_id_foreign` FOREIGN KEY (`pooja_id`) REFERENCES `poojas` (`id`),
  ADD CONSTRAINT `darvamps_temple_id_foreign` FOREIGN KEY (`temple_id`) REFERENCES `temples` (`id`);

--
-- Constraints for table `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `donations_temple_id_foreign` FOREIGN KEY (`temple_id`) REFERENCES `temples` (`id`),
  ADD CONSTRAINT `donations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `informations`
--
ALTER TABLE `informations`
  ADD CONSTRAINT `informations_temple_id_foreign` FOREIGN KEY (`temple_id`) REFERENCES `temples` (`id`);

--
-- Constraints for table `oauth_access_token_providers`
--
ALTER TABLE `oauth_access_token_providers`
  ADD CONSTRAINT `oauth_access_token_providers_oauth_access_token_id_foreign` FOREIGN KEY (`oauth_access_token_id`) REFERENCES `oauth_access_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `orders_temple_id_foreign` FOREIGN KEY (`temple_id`) REFERENCES `temples` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `poojas`
--
ALTER TABLE `poojas`
  ADD CONSTRAINT `poojas_temple_id_foreign` FOREIGN KEY (`temple_id`) REFERENCES `temples` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_temple_id_foreign` FOREIGN KEY (`temple_id`) REFERENCES `temples` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
