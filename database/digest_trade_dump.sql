-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for digest_trade
DROP DATABASE IF EXISTS `digest_trade`;
CREATE DATABASE IF NOT EXISTS `digest_trade` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `digest_trade`;

-- Dumping structure for table digest_trade.admins
DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `token_2fa` varchar(250) DEFAULT NULL,
  `token_2fa_expiry` varchar(244) DEFAULT NULL,
  `dashboard_style` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(233) DEFAULT NULL,
  `acnt_type_active` varchar(233) DEFAULT NULL,
  `account_verify` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `act_session` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table digest_trade.admins: ~2 rows (approximately)
DELETE FROM `admins`;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` (`id`, `firstName`, `lastName`, `email`, `phone`, `token_2fa`, `token_2fa_expiry`, `dashboard_style`, `password`, `remember_token`, `acnt_type_active`, `account_verify`, `status`, `act_session`, `type`, `created_at`, `updated_at`) VALUES
	(1, 'DIGEST', 'Trader', 'super@thedigest.online', '123456', NULL, NULL, 'dark', '$2y$10$k.vbZP2QMkIGftO41PCKROHAupYJDojVi5m2dzP29t2bm0LpKf/ne', 'NDcp0dujwu88BKQ8LrGSZadsfDsUDORzA5aNnE51kMw0O6GT2uRkLVVE4aeY', 'active', NULL, 'active', NULL, 'Super Admin', '0000-00-00 00:00:00', '2021-02-27 21:10:26');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;

-- Dumping structure for table digest_trade.agents
DROP TABLE IF EXISTS `agents`;
CREATE TABLE IF NOT EXISTS `agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent` varchar(20) NOT NULL,
  `total_refered` varchar(20) NOT NULL DEFAULT '0',
  `total_activated` varchar(20) DEFAULT '0',
  `earnings` varchar(20) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `agent` (`agent`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table digest_trade.agents: 1 rows
DELETE FROM `agents`;
/*!40000 ALTER TABLE `agents` DISABLE KEYS */;
INSERT INTO `agents` (`id`, `agent`, `total_refered`, `total_activated`, `earnings`, `created_at`, `updated_at`) VALUES
	(1, '18', '0', '0', '0', '2021-02-28 13:40:34', '2021-02-28 13:40:34');
/*!40000 ALTER TABLE `agents` ENABLE KEYS */;

-- Dumping structure for table digest_trade.assets
DROP TABLE IF EXISTS `assets`;
CREATE TABLE IF NOT EXISTS `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table digest_trade.assets: ~4 rows (approximately)
DELETE FROM `assets`;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` (`id`, `name`, `symbol`, `category`, `created_at`, `updated_at`) VALUES
	(1, 'bitcoin', 'BTC', 'Cryptocurrency', '2020-05-06 13:16:23', '2020-05-06 13:19:44'),
	(3, 'etherium', 'ETH', 'Cryptocurrency', '2020-05-06 14:55:59', '2020-05-06 14:55:59'),
	(4, 'Ripple', 'XRP', 'Cryptocurrency', '2020-05-12 11:14:57', '2020-05-12 11:14:57'),
	(5, 'Litcoin', 'LTC', 'Select', '2020-05-12 11:15:09', '2020-05-12 11:15:09');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;

-- Dumping structure for table digest_trade.contents
DROP TABLE IF EXISTS `contents`;
CREATE TABLE IF NOT EXISTS `contents` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `ref_key` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table digest_trade.contents: ~27 rows (approximately)
DELETE FROM `contents`;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` (`id`, `ref_key`, `title`, `description`, `created_at`, `updated_at`) VALUES
	(5, 'SMsJr1', 'TESTIMONIALS', 'Don\'t take our word for it, here\'s what some of our clients have to say about us', '2020-08-22 11:13:00', '2020-08-22 11:37:15'),
	(6, 'toe3Ew', 'Trade in the Moment', 'DIGEST Trade Platform for your future', '2020-08-22 11:29:36', '2020-08-22 11:29:36'),
	(7, 'jJwh78', 'We process withdrawal request Promptly', 'DIGEST Trade Platform for your future', '2020-08-22 11:30:22', '2020-08-22 11:30:22'),
	(8, 'SLxaB2', 'Invest in the future', 'DIGEST Trade Platform for your future', '2020-08-22 11:30:55', '2020-08-22 11:30:55'),
	(9, 'BkP8pH', 'Trade on the Go', 'DIGEST Trade Platform for your future', '2020-08-22 11:31:38', '2020-08-22 11:31:38'),
	(10, 'W6gTBN', 'Buy,sell,trade,invest has been simplified', 'DIGEST Trade Platform for your future', '2020-08-22 11:31:55', '2020-08-22 11:31:55'),
	(11, 'anvs8c', 'About', 'DIGEST Trade Platform for your future', '2020-08-22 11:32:29', '2020-08-22 11:32:29'),
	(12, 'epJ4LI', 'we Innovate', 'Nemo enim ipsam voluptatem quia voluptas sit aut odit aut fugit', '2020-08-22 11:33:32', '2020-08-22 11:33:32'),
	(13, '5hbB6X', 'LINCENSE CERTIFIED', 'Nemo enim ipsam voluptatem quia voluptas sit aut odit aut fugit,', '2020-08-22 11:33:55', '2020-08-22 11:33:55'),
	(14, 'Zrhm3I', 'WE ARE PROFESSIONAL', 'Nemo enim ipsam voluptatem quia voluptas sit aut odit aut fugit,', '2020-08-22 11:34:11', '2020-08-22 11:34:11'),
	(15, 'yTKhlt', 'SAVINGS AND INVESTMENT', 'Nemo enim ipsam voluptatem quia voluptas sit aut odit aut fugit,', '2020-08-22 11:34:26', '2020-08-22 11:34:26'),
	(16, 'u0Ervr', 'OUR SERVICES', 'Why you should Choose us', '2020-08-22 11:34:56', '2020-08-22 11:34:56'),
	(17, 'Dwu6Bv', 'PROFITABLE PLATFORM', 'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', '2020-08-22 11:35:22', '2020-08-22 11:35:22'),
	(18, 'eMo1d2', 'INSTANT AND SECURE WITHDRAWALS', 'Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata', '2020-08-22 11:35:42', '2020-08-22 11:35:42'),
	(19, 'kEJPm3', 'SOCIAL TRADING PROGRAM', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur', '2020-08-22 11:35:59', '2020-08-22 11:35:59'),
	(20, 'bBSnFV', 'MULTI CURRENCY SUPPORT', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2020-08-22 11:36:17', '2020-08-22 11:36:17'),
	(21, 'DUK9pc', '24/7 CUSTOMER SUPPORT', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque', '2020-08-22 11:36:31', '2020-08-22 11:36:31'),
	(22, 'VaeiMW', 'ULTIMATE SECURITY', 'Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi', '2020-08-22 11:36:49', '2020-08-22 11:36:49'),
	(23, 'vr6Xw0', 'OUR INVESTMENT PLAN', 'Choose how you want to invest with us', '2020-08-22 11:37:43', '2020-08-22 11:37:43'),
	(25, 'OtEicb', 'LATEST TRANSACTIONS', 'Our goal is to simplify investing so that anyone can be an investor. With this in mind, we hand-pick the investments we offer on our platform.', '2020-08-22 11:38:06', '2020-08-22 11:38:06'),
	(26, 'OLZt1I', 'FAQ', 'Our goal is to simplify investing so that anyone can be an investor. With this in mind, we hand-pick the investments we offer on our platform.', '2020-08-22 11:38:56', '2020-08-22 11:38:56'),
	(27, 'U7zpEj', 'WE ACCEPT', 'we accept', '2020-08-22 11:39:43', '2020-08-22 11:39:43'),
	(29, '9sNF7G', 'CONTACTS', 'Send us a message and we\'ll respond as soon as possible', '2020-08-22 11:40:06', '2020-08-22 11:40:06'),
	(30, '52GPRA', 'ADDRESS', 'No 10 Mission Road, Nigeria', '2020-08-22 11:40:19', '2020-08-22 11:40:19'),
	(31, '0EXbji', 'PHONE NUMBER', '+123456789', '2020-08-22 11:40:36', '2020-08-22 11:40:36'),
	(32, 'HLgyaQ', 'EMAIL', 'support@trade.digest.online', '2020-08-22 11:41:14', '2020-08-22 12:23:55'),
	(33, 'ETsdbc', 'description', 'Cras fermentum odio eu feugiat lide par naso tierra. Justo eget nada terra videa magna derita valies darta donna mare fermentum iaculis eu non diam phasellus. Scelerisque felis imperdiet proin fermentum leo. Amet volutpat consequat mauris nunc congue.', '2020-08-22 11:42:05', '2020-08-22 11:42:05');
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;

-- Dumping structure for table digest_trade.cp_transactions
DROP TABLE IF EXISTS `cp_transactions`;
CREATE TABLE IF NOT EXISTS `cp_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txn_id` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `amount_paid` varchar(100) DEFAULT NULL,
  `user_plan` varchar(100) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `user_tele_id` varchar(200) DEFAULT NULL,
  `amount1` varchar(100) DEFAULT NULL,
  `amount2` varchar(100) DEFAULT NULL,
  `currency1` varchar(100) DEFAULT NULL,
  `currency2` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `status_text` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `cp_p_key` varchar(255) DEFAULT NULL,
  `cp_pv_key` varchar(255) DEFAULT NULL,
  `cp_m_id` varchar(255) DEFAULT NULL,
  `cp_ipn_secret` varchar(255) DEFAULT NULL,
  `cp_debug_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=565 DEFAULT CHARSET=latin1;

-- Dumping data for table digest_trade.cp_transactions: 1 rows
DELETE FROM `cp_transactions`;
/*!40000 ALTER TABLE `cp_transactions` DISABLE KEYS */;
INSERT INTO `cp_transactions` (`id`, `txn_id`, `item_name`, `item_number`, `amount_paid`, `user_plan`, `user_id`, `user_tele_id`, `amount1`, `amount2`, `currency1`, `currency2`, `status`, `status_text`, `type`, `created_at`, `updated_at`, `cp_p_key`, `cp_pv_key`, `cp_m_id`, `cp_ipn_secret`, `cp_debug_email`) VALUES
	(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2018-08-05 00:00:00', '2020-01-09 22:23:42', 'aa3f6948307c4fc318be48571d0f33603f9479d9e084ab9eee0601eeb25b09ad', 'd57F069303fFDa7a88A6Ba121E7bFd19C4026Fcb789c874D04190773873E80Df', '6c0ec8a4a9fc05cc6843418cbdd5c08e', 'lpskjkviim94', 'khjhjhj@jhj.jd');
/*!40000 ALTER TABLE `cp_transactions` ENABLE KEYS */;

-- Dumping structure for table digest_trade.deposits
DROP TABLE IF EXISTS `deposits`;
CREATE TABLE IF NOT EXISTS `deposits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txn_id` varchar(200) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `amount` varchar(20) NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `plan` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `proof` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table digest_trade.deposits: 0 rows
DELETE FROM `deposits`;
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposits` ENABLE KEYS */;

-- Dumping structure for table digest_trade.faqs
DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `ref_key` varchar(255) DEFAULT NULL,
  `question` text,
  `answer` text,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table digest_trade.faqs: ~2 rows (approximately)
DELETE FROM `faqs`;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` (`id`, `ref_key`, `question`, `answer`, `updated_at`, `created_at`) VALUES
	(12, 'OMPQE5', 'How can i do a withdrawal', 'Using withdrawal menu on your dashboard', '2020-08-22 10:09:27', '2020-08-17 15:24:03'),
	(13, 'j2MnAV', 'How can i deposit money', 'You can use our deposit mechanisms', '2020-08-17 15:30:30', '2020-08-17 15:30:30');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;

-- Dumping structure for table digest_trade.images
DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `ref_key` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img_path` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table digest_trade.images: ~10 rows (approximately)
DELETE FROM `images`;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`id`, `ref_key`, `title`, `description`, `img_path`, `created_at`, `updated_at`) VALUES
	(3, '57VnOE', 'Slider1', 'This is carosel 1', '1.jpg', '2020-08-23 12:08:38', '2020-08-23 12:08:38'),
	(4, 'dC6ZaA', 'Slider2', 'This is slider 2', '2.jpg', '2020-08-23 12:09:00', '2020-08-23 12:09:00'),
	(5, '9kHash', 'Slider3', 'This is slider 3', '3.jpg', '2020-08-23 12:09:16', '2020-08-23 12:09:16'),
	(6, 'CcW52g', 'Slider4', 'This is Slider 4', '4.jpg', '2020-08-23 12:09:38', '2020-08-23 12:09:38'),
	(7, '96i7xH', 'Slider5', 'This is slider 5', '5.jpg', '2020-08-23 12:09:55', '2020-08-23 12:09:55'),
	(8, 'DPd1Kn', 'Testimonial 1', 'Testimonial 1', 'testimonial-1.jpg', '2020-08-23 12:24:52', '2020-08-23 12:24:52'),
	(9, 'ZqCgDz', 'Testimonial 2', 'Testimonial 2', 'testimonial-2.jpg', '2020-08-23 12:25:07', '2020-08-23 12:25:07'),
	(10, 'zNNAgD', 'Testimonial 3', 'Testimonial 3', 'testimonial-3.jpg', '2020-08-23 12:25:22', '2020-08-23 12:25:22'),
	(11, '2v0Ut5', 'Testimonial 4', 'Testimonial 4', 'testimonial-4.jpg', '2020-08-23 12:25:37', '2020-08-23 12:25:37'),
	(12, '4Rp9Wz', 'Testimonial 5', 'Testimonial 5', 'testimonial-5.jpg', '2020-08-23 12:25:54', '2020-08-23 12:25:54');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;

-- Dumping structure for table digest_trade.markets
DROP TABLE IF EXISTS `markets`;
CREATE TABLE IF NOT EXISTS `markets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `market` varchar(50) DEFAULT NULL,
  `base_curr` varchar(50) DEFAULT NULL,
  `quote_curr` varchar(50) DEFAULT NULL,
  `current_pair` varchar(50) DEFAULT NULL,
  `default_mark` varchar(50) DEFAULT NULL,
  `commission_type` varchar(50) DEFAULT NULL,
  `commission_fee` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table digest_trade.markets: ~7 rows (approximately)
DELETE FROM `markets`;
/*!40000 ALTER TABLE `markets` DISABLE KEYS */;
INSERT INTO `markets` (`id`, `market`, `base_curr`, `quote_curr`, `current_pair`, `default_mark`, `commission_type`, `commission_fee`, `created_at`, `updated_at`) VALUES
	(1, 'Cryptocurrency', 'ETH', 'BTC', NULL, NULL, NULL, NULL, '2020-04-25 18:35:26', '2020-05-06 13:15:06'),
	(3, 'Cryptocurrency', 'LTC', 'BTC', NULL, NULL, NULL, NULL, '2020-05-06 13:15:42', '2020-05-06 13:15:42'),
	(4, 'Cryptocurrency', 'BTC', 'USD', NULL, NULL, NULL, NULL, '2020-05-06 13:15:42', '2020-05-06 13:15:42'),
	(5, 'Cryptocurrency', 'ETH', 'USD', NULL, NULL, NULL, NULL, '2020-05-06 13:15:42', '2020-05-06 13:15:42'),
	(6, 'Cryptocurrency', 'LTC', 'USD', NULL, NULL, NULL, NULL, '2020-05-06 13:15:42', '2020-05-06 13:15:42'),
	(7, 'Forex', 'EUR', 'USD', NULL, NULL, NULL, NULL, '2020-05-06 13:15:42', '2020-05-06 13:15:42'),
	(8, 'Forex', 'GBP', 'USD', NULL, NULL, NULL, NULL, '2020-05-06 13:15:42', '2020-05-06 13:15:42');
/*!40000 ALTER TABLE `markets` ENABLE KEYS */;

-- Dumping structure for table digest_trade.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table digest_trade.migrations: ~0 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`migration`, `batch`) VALUES
	('2014_10_12_100000_create_password_resets_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table digest_trade.mt4details
DROP TABLE IF EXISTS `mt4details`;
CREATE TABLE IF NOT EXISTS `mt4details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(255) DEFAULT NULL,
  `mt4_id` varchar(255) DEFAULT NULL,
  `mt4_password` varchar(200) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `account_type` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `leverage` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table digest_trade.mt4details: ~2 rows (approximately)
DELETE FROM `mt4details`;
/*!40000 ALTER TABLE `mt4details` DISABLE KEYS */;
INSERT INTO `mt4details` (`id`, `client_id`, `mt4_id`, `mt4_password`, `type`, `account_type`, `currency`, `leverage`, `server`, `options`, `duration`, `created_at`, `updated_at`, `start_date`, `end_date`, `status`) VALUES
	(1, 1, '86345679', 'test123456', NULL, 'ECN', 'USD', '1:1000', 'ForexTimeFXTM-FXTM ECN', NULL, 'Quaterly', '2020-08-17 23:00:33', '2020-08-17 23:00:33', NULL, NULL, 'Pending'),
	(2, 18, '92637846', 'test123456', NULL, 'ECN', 'USD', '1:1000', 'ForexTimeFXTM-FXTM ECN', NULL, 'Quaterly', '2020-08-19 02:34:19', '2021-02-28 15:07:23', '2021-02-28 15:07:23', '2021-06-28 15:07:23', 'Active');
/*!40000 ALTER TABLE `mt4details` ENABLE KEYS */;

-- Dumping structure for table digest_trade.notifications
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) DEFAULT NULL,
  `message` text,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table digest_trade.notifications: ~0 rows (approximately)
DELETE FROM `notifications`;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;

-- Dumping structure for table digest_trade.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table digest_trade.password_resets: ~8 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('Rejoice2017@gmail.com', '1a637489097377dbf21c8a7a7ba973d63a25f2f4ef2c483edb62f104a2182f1c', '2017-02-27 06:29:47'),
	('rialebrume@gmail.com', 'd53c6a25865107ac7400f22436e6d37da6721bcdd36e9a67b86afee9c9fc9b7d', '2017-03-10 01:19:02'),
	('dynamixng@gmail.com', '$2y$10$nel4xzM2Dvii86czm4YQxuH0nzdDUximHJM3QVkkkRmky1C.48GRy', '2018-08-14 19:44:33'),
	('test123@happ.com', '$2y$10$Ue8EEVYbIRIRA0EA7o1aJ.h.K5MZLyip4ZMuiSpbxsq3xUp0DN.cu', '2018-09-11 13:22:04'),
	('humble5y@gmail.com', '$2y$10$IM0FlP6UaB7N1rTdGgo04elJiex9bdHYXc2K3IaLWSduq99zTUr3O', '2018-09-16 05:48:32'),
	('ranawaseemsajid@outlook.com', '$2y$10$VRnunT6BauJemm2mKqp/N.yXb8C5HHOJGnBOSZYdyAj1otmP.y1Ru', '2018-09-26 04:53:33'),
	('test1234@happ.com', '$2y$10$.rvGmEIKCMxwCTMW2Ftlcec77Lv1hUjz/qH/aGdS4tbRVmQKzhVqS', '2018-10-11 15:58:43'),
	('johnsteiner530@gmail.com', '$2y$10$V5QsjmZUSymjpNSTIfMTluwTn4bBKE34hKQSu7NZ58unUHRQganH6', '2019-10-17 19:03:31');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table digest_trade.plans
DROP TABLE IF EXISTS `plans`;
CREATE TABLE IF NOT EXISTS `plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `w_limit` varchar(50) DEFAULT NULL,
  `price` varchar(20) NOT NULL,
  `min_price` varchar(20) DEFAULT NULL,
  `max_price` varchar(20) DEFAULT NULL,
  `minr` varchar(50) NOT NULL,
  `maxr` varchar(50) NOT NULL,
  `gift` varchar(50) NOT NULL,
  `expected_return` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `increment_interval` varchar(20) NOT NULL,
  `increment_type` varchar(20) NOT NULL,
  `increment_amount` varchar(20) DEFAULT NULL,
  `expiration` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Dumping data for table digest_trade.plans: 2 rows
DELETE FROM `plans`;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` (`id`, `name`, `w_limit`, `price`, `min_price`, `max_price`, `minr`, `maxr`, `gift`, `expected_return`, `type`, `created_at`, `updated_at`, `increment_interval`, `increment_type`, `increment_amount`, `expiration`) VALUES
	(23, 'Starter', '100', '5000', '5000', '5000', '500', '1000', '50', '1000', 'Main', '2019-11-20 21:29:06', '2019-12-10 10:51:37', 'Weekly', 'Percentage', '5', 'One week'),
	(24, 'Premium', '300', '1000', '200', '3000', '322', '353', '444', '20', 'Main', '2019-11-22 00:44:46', '2019-12-10 10:55:51', 'Daily', 'Percentage', '5', 'Three months');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;

-- Dumping structure for table digest_trade.settings
DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(50) NOT NULL,
  `description` text,
  `total_investors` int(50) NOT NULL DEFAULT '0',
  `active_investors` int(50) NOT NULL DEFAULT '0',
  `contracted_companies` int(50) NOT NULL DEFAULT '0',
  `currency` varchar(100) DEFAULT NULL,
  `s_currency` varchar(20) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `account_number` varchar(20) DEFAULT NULL,
  `eth_address` varchar(200) DEFAULT NULL,
  `btc_address` varchar(200) DEFAULT NULL,
  `ltc_address` varchar(255) DEFAULT NULL,
  `payment_mode` varchar(100) DEFAULT NULL,
  `s_s_k` varchar(200) DEFAULT NULL,
  `s_p_k` varchar(200) DEFAULT NULL,
  `pp_cs` varchar(200) DEFAULT NULL,
  `pp_ci` varchar(200) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `site_title` varchar(100) NOT NULL,
  `site_address` varchar(100) DEFAULT NULL,
  `bot_link` varchar(200) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `trade_mode` varchar(20) DEFAULT NULL,
  `contact_email` varchar(50) DEFAULT NULL,
  `referral_commission` varchar(20) DEFAULT NULL,
  `referral_commission1` varchar(10) DEFAULT NULL,
  `referral_commission2` varchar(10) DEFAULT NULL,
  `referral_commission3` varchar(10) DEFAULT NULL,
  `referral_commission4` varchar(10) DEFAULT NULL,
  `referral_commission5` varchar(10) DEFAULT NULL,
  `signup_bonus` varchar(20) DEFAULT NULL,
  `files_key` varchar(50) DEFAULT NULL,
  `tawk_to` text,
  `enable_2fa` varchar(20) NOT NULL DEFAULT 'no',
  `enable_kyc` varchar(20) NOT NULL DEFAULT 'no',
  `enable_verification` varchar(255) NOT NULL DEFAULT 'true',
  `withdrawal_option` varchar(20) NOT NULL DEFAULT 'auto',
  `dashboard_option` varchar(20) DEFAULT NULL,
  `site_preference` varchar(20) DEFAULT NULL,
  `bot_activate` varchar(20) DEFAULT NULL,
  `telegram_token` varchar(255) DEFAULT NULL,
  `bot_group_chat` varchar(200) DEFAULT NULL,
  `bot_channel` varchar(200) DEFAULT NULL,
  `site_colour` varchar(50) DEFAULT NULL,
  `commission_type` varchar(50) DEFAULT NULL,
  `commission_fee` varchar(50) DEFAULT NULL,
  `monthlyfee` varchar(50) DEFAULT NULL,
  `quaterlyfee` varchar(50) DEFAULT NULL,
  `yearlyfee` varchar(50) DEFAULT NULL,
  `update` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table digest_trade.settings: ~1 rows (approximately)
DELETE FROM `settings`;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `site_name`, `description`, `total_investors`, `active_investors`, `contracted_companies`, `currency`, `s_currency`, `bank_name`, `account_name`, `account_number`, `eth_address`, `btc_address`, `ltc_address`, `payment_mode`, `s_s_k`, `s_p_k`, `pp_cs`, `pp_ci`, `keywords`, `site_title`, `site_address`, `bot_link`, `logo`, `favicon`, `trade_mode`, `contact_email`, `referral_commission`, `referral_commission1`, `referral_commission2`, `referral_commission3`, `referral_commission4`, `referral_commission5`, `signup_bonus`, `files_key`, `tawk_to`, `enable_2fa`, `enable_kyc`, `enable_verification`, `withdrawal_option`, `dashboard_option`, `site_preference`, `bot_activate`, `telegram_token`, `bot_group_chat`, `bot_channel`, `site_colour`, `commission_type`, `commission_fee`, `monthlyfee`, `quaterlyfee`, `yearlyfee`, `update`, `created_at`, `updated_at`, `updated_by`) VALUES
	(1, 'Digest Trade', 'Moving forward towards your dream', 7763, 3001, 5, '&#82;&#112;', 'EURS', 'DIGEST Bank', 'Admin Account name', '2123343493659', NULL, '123456789', NULL, '123456', 'sk_test_BQokikJOvBiI2HlWgH4olfQ2', 'pk_test_6pRNASCoBOKtIshFeQd4XMUh', NULL, NULL, 'DIGEST Club Trading Platform', 'Your New Hope', 'https://trade.thedigest.online', 'https://t.me/onlinetradeofficialbotdd', 'logo02.png', NULL, 'on', 'support@trade.thedigest.online', '2.53', '23', '1.73', '1.23', '13', '0.53', '20', 'OT_MqiwN', 'hbhlhahihlhlhuAJHO347T8UGQ0U[I9ghp', 'no', 'yes', 'true', 'auto', 'Online Trade', 'Web dashboard only', 'false', 'jhlhgohghgoygynouyoq', 'https://t.me/joinchat/', 'https://t.me/', NULL, 'Percentage', '3', '10', '20', '30', 'Welcome to DIGEST Trade', '2017-02-27 01:10:03', '2021-02-27 21:09:48', NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table digest_trade.testimonys
DROP TABLE IF EXISTS `testimonys`;
CREATE TABLE IF NOT EXISTS `testimonys` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `ref_key` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) NOT NULL,
  `what_is_said` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table digest_trade.testimonys: ~5 rows (approximately)
DELETE FROM `testimonys`;
/*!40000 ALTER TABLE `testimonys` DISABLE KEYS */;
INSERT INTO `testimonys` (`id`, `ref_key`, `name`, `position`, `what_is_said`, `picture`, `created_at`, `updated_at`) VALUES
	(3, 'cXv7R7', 'Sara Wilsson', 'Investor', 'Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam.', 'testimonial-2.jpg', '2020-08-18 10:01:35', '2020-08-23 12:26:57'),
	(7, 'WXUcna', 'Sara Wilssons', 'principal', 'Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam.', 'testimonial-1.jpg', '2020-08-22 09:14:28', '2020-08-23 12:27:12'),
	(8, 'afgcHb', 'Sara Wilssons', 'System user', 'Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam.', 'testimonial-3.jpg', '2020-08-23 12:27:36', '2020-08-23 12:27:36'),
	(9, 'UBBZkd', 'Sara Wilssons', 'System user', 'Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam.', 'testimonial-4.jpg', '2020-08-23 12:27:52', '2020-08-23 12:27:52'),
	(10, 'MgDO3G', 'Sara Wilssons', 'System user', 'Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam.', 'testimonial-5.jpg', '2020-08-23 12:28:16', '2020-08-23 12:28:16');
/*!40000 ALTER TABLE `testimonys` ENABLE KEYS */;

-- Dumping structure for table digest_trade.tp_transactions
DROP TABLE IF EXISTS `tp_transactions`;
CREATE TABLE IF NOT EXISTS `tp_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan` varchar(20) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table digest_trade.tp_transactions: 5 rows
DELETE FROM `tp_transactions`;
/*!40000 ALTER TABLE `tp_transactions` DISABLE KEYS */;
INSERT INTO `tp_transactions` (`id`, `plan`, `user`, `amount`, `type`, `created_at`, `updated_at`) VALUES
	(1, 'Starter', '1', '10', 'ROI', '2020-08-07 14:15:40', '2020-08-07 14:15:40'),
	(2, 'Starter', '1', '100', 'Bonus', '2020-08-07 14:16:03', '2020-08-07 14:16:03'),
	(3, 'Credit', '1', '50', 'Profit', '2020-08-07 14:28:15', '2020-08-07 14:28:15'),
	(4, 'Credit', '1', '10', 'Ref_Bonus', '2020-08-07 14:30:41', '2020-08-07 14:30:41'),
	(5, 'Credit reversal', '1', '3', 'Profit', '2020-08-07 14:31:23', '2020-08-07 14:31:23');
/*!40000 ALTER TABLE `tp_transactions` ENABLE KEYS */;

-- Dumping structure for table digest_trade.userlogs
DROP TABLE IF EXISTS `userlogs`;
CREATE TABLE IF NOT EXISTS `userlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(20) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- Dumping data for table digest_trade.userlogs: ~30 rows (approximately)
DELETE FROM `userlogs`;
/*!40000 ALTER TABLE `userlogs` DISABLE KEYS */;
INSERT INTO `userlogs` (`id`, `user`, `ip`, `type`, `created_at`, `updated_at`) VALUES
	(1, 1, '127.0.0.1', 'login', '2019-11-27 20:45:09', '2019-11-27 20:45:09'),
	(2, 1, '127.0.0.1', 'login', '2019-11-27 21:56:54', '2019-11-27 21:56:54'),
	(4, 10, '127.0.0.1', 'login', '2019-11-27 22:16:34', '2019-11-27 22:16:34'),
	(5, NULL, '127.0.0.1', 'Register', '2019-11-27 22:17:59', '2019-11-27 22:17:59'),
	(6, NULL, '127.0.0.1', 'Register', '2019-11-27 22:18:48', '2019-11-27 22:18:48'),
	(7, NULL, '127.0.0.1', 'Register', '2019-11-27 23:24:46', '2019-11-27 23:24:46'),
	(8, 15, '127.0.0.1', 'Register', '2019-11-28 01:42:45', '2019-11-28 01:42:45'),
	(9, 16, '127.0.0.1', 'Register', '2019-11-28 01:44:09', '2019-11-28 01:44:09'),
	(10, 1, '127.0.0.1', 'login', '2019-11-28 17:22:11', '2019-11-28 17:22:11'),
	(11, 8, '127.0.0.1', 'login', '2019-11-28 18:36:36', '2019-11-28 18:36:36'),
	(12, 1, '127.0.0.1', 'login', '2019-11-28 22:05:00', '2019-11-28 22:05:00'),
	(13, 8, '127.0.0.1', 'login', '2019-12-02 17:45:59', '2019-12-02 17:45:59'),
	(14, 1, '127.0.0.1', 'login', '2019-12-02 17:47:59', '2019-12-02 17:47:59'),
	(15, 8, '127.0.0.1', 'login', '2019-12-02 22:29:35', '2019-12-02 22:29:35'),
	(16, 1, '127.0.0.1', 'login', '2019-12-02 22:41:09', '2019-12-02 22:41:09'),
	(17, 1, '127.0.0.1', 'login', '2019-12-03 00:58:56', '2019-12-03 00:58:56'),
	(18, 1, '127.0.0.1', 'login', '2019-12-03 17:23:26', '2019-12-03 17:23:26'),
	(19, 1, '127.0.0.1', 'login', '2019-12-03 23:04:24', '2019-12-03 23:04:24'),
	(20, 8, '127.0.0.1', 'login', '2019-12-03 23:24:33', '2019-12-03 23:24:33'),
	(21, 8, '127.0.0.1', 'login', '2019-12-04 00:43:41', '2019-12-04 00:43:41'),
	(22, 8, '127.0.0.1', 'login', '2019-12-04 01:11:05', '2019-12-04 01:11:05'),
	(23, 8, '127.0.0.1', 'login', '2019-12-04 17:35:59', '2019-12-04 17:35:59'),
	(24, 1, '127.0.0.1', 'login', '2019-12-04 17:37:26', '2019-12-04 17:37:26'),
	(25, 8, '127.0.0.1', 'login', '2019-12-06 01:15:49', '2019-12-06 01:15:49'),
	(26, 8, '127.0.0.1', 'login', '2019-12-06 17:53:29', '2019-12-06 17:53:29'),
	(27, 8, '127.0.0.1', 'login', '2019-12-06 20:21:45', '2019-12-06 20:21:45'),
	(28, 1, '127.0.0.1', 'login', '2019-12-07 00:20:35', '2019-12-07 00:20:35'),
	(29, 8, '127.0.0.1', 'login', '2019-12-07 01:02:42', '2019-12-07 01:02:42'),
	(30, 1, '127.0.0.1', 'login', '2019-12-07 16:58:46', '2019-12-07 16:58:46'),
	(31, 1, '127.0.0.1', 'login', '2019-12-13 00:14:13', '2019-12-13 00:14:13');
/*!40000 ALTER TABLE `userlogs` ENABLE KEYS */;

-- Dumping structure for table digest_trade.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tele_id` varchar(200) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `adress` text,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `areacode` varchar(50) DEFAULT NULL,
  `token_2fa` varchar(255) DEFAULT NULL,
  `token_2fa_expiry` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `dashboard_style` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `acnt_type_active` varchar(255) DEFAULT 'no',
  `account_no` varchar(50) DEFAULT NULL,
  `btc_address` varchar(255) DEFAULT NULL,
  `eth_address` varchar(255) DEFAULT NULL,
  `ltc_address` varchar(255) DEFAULT NULL,
  `plan` varchar(25) DEFAULT '0',
  `user_plan` varchar(20) DEFAULT NULL,
  `promo_plan` varchar(20) NOT NULL DEFAULT '0',
  `confirmed_plan` varchar(25) DEFAULT '0',
  `inv_duration` varchar(100) DEFAULT NULL,
  `account_bal` varchar(20) NOT NULL DEFAULT '0',
  `roi` varchar(50) NOT NULL DEFAULT '0',
  `bonus` varchar(50) DEFAULT NULL,
  `ref_bonus` varchar(20) NOT NULL DEFAULT '0',
  `recieve_ref_bonus` varchar(11) NOT NULL DEFAULT 'no',
  `signup_bonus` varchar(20) DEFAULT NULL,
  `auto_trade` varchar(255) DEFAULT NULL,
  `bonus_released` varchar(20) NOT NULL DEFAULT '0',
  `ref_by` varchar(20) DEFAULT NULL,
  `ref_link` varchar(100) DEFAULT NULL,
  `bot_ref_link` varchar(200) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `account_verify` varchar(20) DEFAULT NULL,
  `entered_at` datetime DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `last_growth` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT 'blocked',
  `act_session` varchar(255) DEFAULT NULL,
  `trade_mode` varchar(20) NOT NULL DEFAULT 'on',
  `type` varchar(25) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `name` (`name`,`email`),
  FULLTEXT KEY `name_2` (`name`,`l_name`,`email`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- Dumping data for table digest_trade.users: 2 rows
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `tele_id`, `name`, `l_name`, `dob`, `adress`, `email`, `phone_number`, `areacode`, `token_2fa`, `token_2fa_expiry`, `photo`, `dashboard_style`, `password`, `remember_token`, `bank_name`, `account_name`, `acnt_type_active`, `account_no`, `btc_address`, `eth_address`, `ltc_address`, `plan`, `user_plan`, `promo_plan`, `confirmed_plan`, `inv_duration`, `account_bal`, `roi`, `bonus`, `ref_bonus`, `recieve_ref_bonus`, `signup_bonus`, `auto_trade`, `bonus_released`, `ref_by`, `ref_link`, `bot_ref_link`, `id_card`, `passport`, `account_verify`, `entered_at`, `activated_at`, `last_growth`, `status`, `act_session`, `trade_mode`, `type`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Tester1', 'Test', '2020-07-21', NULL, 'test1@gmail.com', '123456789', '', '93669', '2020-08-20 10:13:38', 'logo02.png', 'light', '$2y$10$.J9GrJhwyJRbYs/vEar1zutDkFGvsEsvLaA.2hQOcQXz9RU8YrzXW', 'nNTaZVtdpXK4FUejBK5LLIUgi5NTKL0dFHUUFaB67ykJI9vKFAJcuXQhNCA8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', '0', NULL, '1242.0683705707233', '217', '10', '235', 'no', 'received', 'yes', '0', NULL, 'yoursite.com/ref/1', NULL, 'new update.png', 'new update.png', 'yes', NULL, NULL, NULL, 'active', NULL, 'on', '1', '2019-11-08 14:54:06', '2020-08-20 10:13:38'),
	(18, NULL, 'Sakti', 'Sakti', NULL, NULL, 'sakti@gmail.com', '123456789', NULL, NULL, '2021-02-28 13:35:08', NULL, 'light', '$2y$10$.J9GrJhwyJRbYs/vEar1zutDkFGvsEsvLaA.2hQOcQXz9RU8YrzXW', 'cR70vompPjzlKk5YByuPZbHI6Ipp9nDCZWmcTJV4h7lOvPRBhqEevjU1KCFT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24', '3', '0', '0', NULL, '25.299999999999955', '2000', '183', '25.3', 'yes', 'received', NULL, '0', NULL, 'yoursiteurl.com/trade/ref/18', NULL, NULL, NULL, NULL, '2020-08-06 12:18:27', NULL, NULL, 'active', 'J6O6fR3NjswzzJD9MDuP649pWorIxcSTdkNbVR4W', 'off', '0', '2020-01-24 10:29:31', '2021-02-28 13:57:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table digest_trade.user_plans
DROP TABLE IF EXISTS `user_plans`;
CREATE TABLE IF NOT EXISTS `user_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan` varchar(20) DEFAULT NULL,
  `w_limit` varchar(50) DEFAULT NULL,
  `amount` varchar(20) DEFAULT '0',
  `user` varchar(20) DEFAULT NULL,
  `active` varchar(20) DEFAULT NULL,
  `inv_duration` varchar(50) DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `last_growth` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table digest_trade.user_plans: 3 rows
DELETE FROM `user_plans`;
/*!40000 ALTER TABLE `user_plans` DISABLE KEYS */;
INSERT INTO `user_plans` (`id`, `plan`, `w_limit`, `amount`, `user`, `active`, `inv_duration`, `expire_date`, `activated_at`, `last_growth`, `created_at`, `updated_at`) VALUES
	(1, '24', NULL, '1000', '18', 'yes', 'Three months', '2020-09-08 11:23:11', '2020-06-09 11:23:11', '2020-06-09 11:23:11', '2020-06-09 11:23:11', '2020-06-09 11:23:11'),
	(2, '24', NULL, '1000', '18', 'yes', 'Three months', '2020-09-09 11:45:53', '2020-06-10 11:45:53', '2020-06-10 11:45:53', '2020-06-10 11:45:53', '2020-06-10 11:45:53'),
	(3, '24', NULL, '1000', '18', 'yes', 'Three months', NULL, '2020-08-06 12:18:27', '2020-08-06 12:18:27', '2020-08-06 12:18:27', '2020-08-06 12:18:27');
/*!40000 ALTER TABLE `user_plans` ENABLE KEYS */;

-- Dumping structure for table digest_trade.wdmethods
DROP TABLE IF EXISTS `wdmethods`;
CREATE TABLE IF NOT EXISTS `wdmethods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `minimum` varchar(50) NOT NULL,
  `maximum` varchar(50) NOT NULL,
  `charges_fixed` varchar(50) NOT NULL,
  `charges_percentage` varchar(50) NOT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table digest_trade.wdmethods: 5 rows
DELETE FROM `wdmethods`;
/*!40000 ALTER TABLE `wdmethods` DISABLE KEYS */;
INSERT INTO `wdmethods` (`id`, `name`, `minimum`, `maximum`, `charges_fixed`, `charges_percentage`, `duration`, `type`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Bitcoin', '10', '20000', '2', '2', 'instant', 'withdrawal', 'enabled', '2019-11-09 09:05:00', '2019-11-09 09:05:23'),
	(2, 'Ethereum', '5', '10000', '2', '2', 'instant', 'withdrawal', 'enabled', '2019-11-09 09:11:21', '2019-11-09 09:11:21'),
	(5, 'Bank transfer', '100', '100000', '2', '2', '2 working days', 'withdrawal', 'enabled', '2019-11-09 11:36:37', '2019-11-09 11:36:37'),
	(4, 'Litecoin', '10', '2', '4000', '2', '2', 'withdrawal', 'enabled', '2019-11-09 11:35:35', '2019-11-09 11:35:35'),
	(6, 'Credit Card', '10', '100000', '2', '2', '2 working days', 'withdrawal', 'enabled', '2019-12-11 18:51:04', '2019-12-11 18:51:04');
/*!40000 ALTER TABLE `wdmethods` ENABLE KEYS */;

-- Dumping structure for table digest_trade.withdrawals
DROP TABLE IF EXISTS `withdrawals`;
CREATE TABLE IF NOT EXISTS `withdrawals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txn_id` varchar(200) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `amount` varchar(20) NOT NULL,
  `to_deduct` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table digest_trade.withdrawals: 0 rows
DELETE FROM `withdrawals`;
/*!40000 ALTER TABLE `withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdrawals` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
