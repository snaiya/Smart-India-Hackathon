-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 11, 2018 at 10:16 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--
CREATE DATABASE IF NOT EXISTS `hostel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hostel`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adminid` varchar(40) NOT NULL,
  `adminpass` varchar(40) NOT NULL,
  `collegename` varchar(256) NOT NULL,
  `location` varchar(256) NOT NULL,
  `boysrooms` int(5) NOT NULL,
  `boysperroom` int(5) NOT NULL,
  `girlsrooms` int(5) NOT NULL,
  `girlsperroom` int(5) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminpass`, `collegename`, `location`, `boysrooms`, `boysperroom`, `girlsrooms`, `girlsperroom`, `status`) VALUES
('admin', 'admin', '', '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `determining_factors`
--

DROP TABLE IF EXISTS `determining_factors`;
CREATE TABLE IF NOT EXISTS `determining_factors` (
  `formid` int(11) NOT NULL,
  `acpcid` int(10) NOT NULL,
  `name` varchar(81) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `category` varchar(8) NOT NULL,
  `distance` float NOT NULL,
  `merit` int(8) NOT NULL,
  `allot` int(11) NOT NULL DEFAULT '0',
  `room` varchar(5) NOT NULL DEFAULT '-',
  PRIMARY KEY (`formid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_application`
--

DROP TABLE IF EXISTS `hostel_application`;
CREATE TABLE IF NOT EXISTS `hostel_application` (
  `formid` int(11) NOT NULL,
  `acpcid` int(10) NOT NULL,
  `name` varchar(81) NOT NULL,
  `email` varchar(256) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `dob` varchar(12) NOT NULL,
  `aadhar` varchar(16) NOT NULL,
  `merit` varchar(8) NOT NULL,
  `photo` longtext NOT NULL,
  `gender` varchar(6) NOT NULL,
  `category` varchar(8) NOT NULL,
  `address` text NOT NULL,
  `distance` varchar(256) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `parentname` varchar(60) NOT NULL,
  `relation` varchar(60) NOT NULL,
  `occupation` varchar(60) NOT NULL,
  `income` varchar(15) NOT NULL,
  `hometelephone` varchar(12) NOT NULL,
  `parentmobile` varchar(15) NOT NULL,
  `localguname` varchar(60) NOT NULL,
  `localmobile` varchar(15) NOT NULL,
  `localaddress` text NOT NULL,
  PRIMARY KEY (`formid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registered_student`
--

DROP TABLE IF EXISTS `registered_student`;
CREATE TABLE IF NOT EXISTS `registered_student` (
  `acpcid` int(10) NOT NULL,
  `pin` varchar(20) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `surname` varchar(40) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(16) NOT NULL,
  `formid` int(11) NOT NULL AUTO_INCREMENT,
  `step` int(2) NOT NULL,
  PRIMARY KEY (`acpcid`),
  UNIQUE KEY `UNIQUE` (`pin`),
  UNIQUE KEY `FORMID` (`formid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Database: `hostelh`
--
CREATE DATABASE IF NOT EXISTS `hostelh` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hostelh`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adminid` varchar(40) NOT NULL,
  `adminpass` varchar(40) NOT NULL,
  `collegename` varchar(256) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminpass`, `collegename`, `status`) VALUES
('admin', 'admin', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `college_hostels`
--

DROP TABLE IF EXISTS `college_hostels`;
CREATE TABLE IF NOT EXISTS `college_hostels` (
  `hostelname` varchar(80) NOT NULL,
  `collegename` varchar(80) NOT NULL,
  `location` varchar(256) NOT NULL,
  `boysrooms` int(4) NOT NULL,
  `boysperroom` int(2) NOT NULL,
  `girlsrooms` int(4) NOT NULL,
  `girlsperroom` int(2) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`hostelname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `determining_factors`
--

DROP TABLE IF EXISTS `determining_factors`;
CREATE TABLE IF NOT EXISTS `determining_factors` (
  `formid` int(11) NOT NULL,
  `acpcid` int(10) NOT NULL,
  `name` varchar(81) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `category` varchar(8) NOT NULL,
  `distance` float NOT NULL,
  `merit` int(8) NOT NULL,
  `allot` int(11) NOT NULL DEFAULT '0',
  `room` varchar(5) NOT NULL DEFAULT '-',
  `college` varchar(80) NOT NULL,
  PRIMARY KEY (`formid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_application`
--

DROP TABLE IF EXISTS `hostel_application`;
CREATE TABLE IF NOT EXISTS `hostel_application` (
  `formid` int(11) NOT NULL,
  `acpcid` int(10) NOT NULL,
  `name` varchar(81) NOT NULL,
  `email` varchar(256) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `dob` varchar(12) NOT NULL,
  `aadhar` varchar(16) NOT NULL,
  `merit` varchar(8) NOT NULL,
  `photo` longtext NOT NULL,
  `gender` varchar(6) NOT NULL,
  `category` varchar(8) NOT NULL,
  `address` text NOT NULL,
  `distance` varchar(256) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `parentname` varchar(60) NOT NULL,
  `relation` varchar(60) NOT NULL,
  `occupation` varchar(60) NOT NULL,
  `income` varchar(15) NOT NULL,
  `hometelephone` varchar(12) NOT NULL,
  `parentmobile` varchar(15) NOT NULL,
  `localguname` varchar(60) NOT NULL,
  `localmobile` varchar(15) NOT NULL,
  `localaddress` text NOT NULL,
  PRIMARY KEY (`formid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registered_student`
--

DROP TABLE IF EXISTS `registered_student`;
CREATE TABLE IF NOT EXISTS `registered_student` (
  `acpcid` int(10) NOT NULL,
  `pin` varchar(20) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `surname` varchar(40) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(16) NOT NULL,
  `course` varchar(80) NOT NULL,
  `college` varchar(80) NOT NULL,
  `hostel` varchar(80) NOT NULL,
  `formid` int(11) NOT NULL AUTO_INCREMENT,
  `step` int(2) NOT NULL,
  PRIMARY KEY (`acpcid`),
  UNIQUE KEY `UNIQUE` (`pin`),
  UNIQUE KEY `FORMID` (`formid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `super`
--

DROP TABLE IF EXISTS `super`;
CREATE TABLE IF NOT EXISTS `super` (
  `admin` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`admin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `super`
--

INSERT INTO `super` (`admin`, `password`, `status`) VALUES
('super', 'super', 0);
--
-- Database: `myusers`
--
CREATE DATABASE IF NOT EXISTS `myusers` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `myusers`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `num` int(10) NOT NULL AUTO_INCREMENT,
  `admin_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`num`, `admin_id`, `password`, `role`) VALUES
(1, 'hardik', 'hardik', 'administrator'),
(2, 'hinal', 'hinal', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fn` varchar(255) NOT NULL,
  `sn` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mob` varchar(15) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `bday` date NOT NULL,
  `loc` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fn`, `sn`, `email`, `mob`, `pass`, `bday`, `loc`) VALUES
(1, 'Hinal', 'Upadhyay', 'hinal@gmail.com', '9876543211', 'hinal', '1998-02-10', 'Ahmedabad'),
(2, 'Hardik', 'Panchal', 'hardik@gmail.com', '8530305299', 'hardik', '1997-09-26', 'Ahmedabad'),
(16, 'dhaval ', 'patel', 'dh@fmail.com', '9876543210', '123', '1996-02-03', 'Ahmedabad'),
(17, 'Hardik', 'Panchal', 'hardik@gmail.com', '11111111', 'AA', '2018-02-05', 'Ahmedabad'),
(14, 'Sahil', 'Panchal', 'sahil@gmail.com', '853030299', 'asd', '2017-09-19', 'Ahmedabad'),
(13, 'a', 'a', 'a@gmail.com', '123', 'a', '2017-09-05', 'AHmedabad');
--
-- Database: `trial`
--
CREATE DATABASE IF NOT EXISTS `trial` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `trial`;

-- --------------------------------------------------------

--
-- Table structure for table `bv`
--

DROP TABLE IF EXISTS `bv`;
CREATE TABLE IF NOT EXISTS `bv` (
  `a` int(2) NOT NULL,
  `b` int(2) NOT NULL,
  `c` int(2) NOT NULL,
  `d` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Database: `trialhostel`
--
CREATE DATABASE IF NOT EXISTS `trialhostel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `trialhostel`;

-- --------------------------------------------------------

--
-- Table structure for table `formdetails`
--

DROP TABLE IF EXISTS `formdetails`;
CREATE TABLE IF NOT EXISTS `formdetails` (
  `form` varchar(5) NOT NULL,
  `acpcid` varchar(14) NOT NULL,
  `name` varchar(80) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(300) NOT NULL,
  `photo` longtext NOT NULL,
  `merit` varchar(6) NOT NULL,
  `dob` varchar(16) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `aadhar` varchar(16) NOT NULL,
  `faocc` varchar(100) NOT NULL,
  `moocc` varchar(100) NOT NULL,
  `income` varchar(10) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `pamob` varchar(15) NOT NULL,
  `localguname` varchar(80) NOT NULL,
  `localaddress` varchar(1000) NOT NULL,
  `localmobile` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  PRIMARY KEY (`form`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formdetails`
--

INSERT INTO `formdetails` (`form`, `acpcid`, `name`, `contact`, `email`, `photo`, `merit`, `dob`, `address`, `aadhar`, `faocc`, `moocc`, `income`, `tel`, `pamob`, `localguname`, `localaddress`, `localmobile`, `gender`, `category`) VALUES
('18', '5555', '1', '1', '1', '12123', '', '', '', '', '', '', '', '', '', '', '', '', 'Male', 'GENERAL'),
('13', '111', '111', '111', '111', 'data:image/jpeg;base64,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', '11', '11', '11', '11', '11', '11', '11', '11', '11', '11', '11', '11', 'Male', 'GENERAL');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `acpcid` varchar(32) NOT NULL,
  `pin` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(32) NOT NULL,
  `step` int(2) NOT NULL,
  `form` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`acpcid`),
  UNIQUE KEY `UNIQUE` (`form`),
  KEY `form` (`form`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
--
-- Database: `word_store`
--
CREATE DATABASE IF NOT EXISTS `word_store` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `word_store`;

-- --------------------------------------------------------

--
-- Table structure for table `nouns`
--

DROP TABLE IF EXISTS `nouns`;
CREATE TABLE IF NOT EXISTS `nouns` (
  `noun` varchar(80) NOT NULL,
  `meaning` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nouns`
--

INSERT INTO `nouns` (`noun`, `meaning`) VALUES
('boy', 'a male child or youth');
--
-- Database: `wpblog`
--
CREATE DATABASE IF NOT EXISTS `wpblog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wpblog`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-26 08:24:00', '2017-11-26 08:24:00', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=339 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Techroot', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'hardikpanchal551@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=119&cpage=$matches[1]\";s:25:\"obfx_templates(/(.*))?/?$\";s:37:\"index.php?&obfx_templates=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:43:\"themeisle-companion/themeisle-companion.php\";i:1;s:45:\"wp-visual-icon-fonts/wp_visual_icon_fonts.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-5.5', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:80:\"E:\\Windows_Programs\\wamp64\\www\\wordpress/wp-content/themes/tiny-hestia/style.css\";i:2;s:84:\"E:\\Windows_Programs\\wamp64\\www\\wordpress/wp-content/themes/tiny-hestia/functions.php\";i:3;s:82:\"E:\\Windows_Programs\\wamp64\\www\\wordpress/wp-content/themes/hestia/editor-style.css\";i:4;s:75:\"E:\\Windows_Programs\\wamp64\\www\\wordpress/wp-content/themes/hestia/index.php\";i:5;s:76:\"E:\\Windows_Programs\\wamp64\\www\\wordpress/wp-content/themes/hestia/header.php\";}', 'no'),
(40, 'template', 'hestia', 'yes'),
(41, 'stylesheet', 'tiny-hestia', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:9:{i:2;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;i:6;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:7;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:8;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:9;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '55', 'yes'),
(84, 'page_on_front', '119', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '79', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:6:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:6:\"Search\";}i:4;a:1:{s:5:\"title\";s:6:\"Search\";}i:6;a:1:{s:5:\"title\";s:0:\"\";}i:7;a:0:{}}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:11:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:6:\"text-4\";i:6;s:6:\"text-5\";i:7;s:12:\"categories-2\";i:8;s:14:\"recent-posts-2\";i:9;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:2:{i:0;s:8:\"search-7\";i:1;s:11:\"tag_cloud-3\";}s:18:\"footer-one-widgets\";a:0:{}s:18:\"footer-two-widgets\";a:0:{}s:20:\"footer-three-widgets\";a:0:{}s:19:\"sidebar-woocommerce\";a:0:{}s:15:\"sidebar-top-bar\";a:1:{i:0;s:10:\"nav_menu-1\";}s:14:\"header-sidebar\";a:0:{}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-8\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-9\";i:1;s:8:\"search-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"taxonomy\";s:8:\"post_tag\";}}', 'yes'),
(107, 'widget_nav_menu', 'a:2:{i:1;a:2:{s:5:\"title\";s:7:\"Socials\";s:8:\"nav_menu\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1512203041;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1512203091;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1512230744;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1511691322;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-6\";i:1;s:8:\"search-3\";i:2;s:6:\"text-7\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-8\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-9\";i:1;s:8:\"search-4\";}}}}', 'yes'),
(335, '_site_transient_timeout_theme_roots', '1512197159', 'no'),
(336, '_site_transient_theme_roots', 'a:2:{s:6:\"hestia\";s:7:\"/themes\";s:11:\"tiny-hestia\";s:7:\"/themes\";}', 'no'),
(151, '_transient_timeout_hestia_t_elementor', '1512551464', 'no'),
(152, '_transient_hestia_t_elementor', 'The most advanced frontend drag &amp; drop page builder', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(323, 'obfx_data', 'a:3:{s:13:\"core_settings\";a:0:{}s:13:\"module_status\";a:6:{s:5:\"stats\";a:1:{s:14:\"showed_notices\";a:0:{}}s:14:\"social-sharing\";a:1:{s:14:\"showed_notices\";a:0:{}}s:16:\"companion-legacy\";a:1:{s:14:\"showed_notices\";a:1:{i:0;s:32:\"95292952f6d338157ba9b701a401a42d\";}}s:18:\"template-directory\";a:1:{s:14:\"showed_notices\";a:0:{}}s:10:\"menu-icons\";a:1:{s:14:\"showed_notices\";a:0:{}}s:14:\"mystock-import\";a:1:{s:14:\"showed_notices\";a:0:{}}}s:15:\"module_settings\";N;}', 'yes'),
(324, 'theme_mods_tiny-hestia', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1512033535;s:4:\"data\";a:10:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:6:\"text-4\";i:6;s:6:\"text-5\";i:7;s:12:\"categories-2\";i:8;s:14:\"recent-posts-2\";i:9;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:8:\"search-7\";}s:18:\"footer-one-widgets\";a:0:{}s:18:\"footer-two-widgets\";a:0:{}s:20:\"footer-three-widgets\";a:0:{}s:19:\"sidebar-woocommerce\";a:0:{}s:15:\"sidebar-top-bar\";a:1:{i:0;s:10:\"nav_menu-1\";}s:14:\"header-sidebar\";a:0:{}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-8\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-9\";i:1;s:8:\"search-4\";}}}}', 'yes'),
(327, 'theme_switch_menu_locations', 'a:1:{s:12:\"top-bar-menu\";i:0;}', 'yes'),
(246, 'WPLANG', '', 'yes'),
(247, 'new_admin_email', 'hardikpanchal551@gmail.com', 'yes'),
(297, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:26:\"hardikpanchal551@gmail.com\";s:7:\"version\";s:5:\"4.9.1\";s:9:\"timestamp\";i:1512011021;}', 'no'),
(294, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1512195355;s:15:\"version_checked\";s:5:\"4.9.1\";s:12:\"translations\";a:0:{}}', 'no'),
(136, 'theme_mods_stucco', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(153, 'hestia_install', '1511687464', 'yes'),
(154, '_transient_timeout_hestia_1154versions', '1514279466', 'no'),
(139, '_site_transient_timeout_browser_cb0f25941c7ee58acd15fece4d84c18b', '1512289920', 'no'),
(140, '_site_transient_browser_cb0f25941c7ee58acd15fece4d84c18b', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"62.0.3202.94\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(306, 'category_children', 'a:0:{}', 'yes'),
(155, '_transient_hestia_1154versions', 'a:35:{i:0;a:2:{s:7:\"version\";s:5:\"1.0.6\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.1.0.6.zip\";}i:1;a:2:{s:7:\"version\";s:5:\"1.0.8\";s:3:\"url\";s:54:\"https://downloads.wordpress.org/theme/hestia.1.0.8.zip\";}i:2;a:2:{s:7:\"version\";s:6:\"1.0.11\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.0.11.zip\";}i:3;a:2:{s:7:\"version\";s:6:\"1.0.12\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.0.12.zip\";}i:4;a:2:{s:7:\"version\";s:6:\"1.1.19\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.19.zip\";}i:5;a:2:{s:7:\"version\";s:6:\"1.1.20\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.20.zip\";}i:6;a:2:{s:7:\"version\";s:6:\"1.1.21\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.21.zip\";}i:7;a:2:{s:7:\"version\";s:6:\"1.1.22\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.22.zip\";}i:8;a:2:{s:7:\"version\";s:6:\"1.1.23\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.23.zip\";}i:9;a:2:{s:7:\"version\";s:6:\"1.1.24\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.24.zip\";}i:10;a:2:{s:7:\"version\";s:6:\"1.1.25\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.25.zip\";}i:11;a:2:{s:7:\"version\";s:6:\"1.1.28\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.28.zip\";}i:12;a:2:{s:7:\"version\";s:6:\"1.1.29\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.29.zip\";}i:13;a:2:{s:7:\"version\";s:6:\"1.1.30\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.30.zip\";}i:14;a:2:{s:7:\"version\";s:6:\"1.1.31\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.31.zip\";}i:15;a:2:{s:7:\"version\";s:6:\"1.1.32\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.32.zip\";}i:16;a:2:{s:7:\"version\";s:6:\"1.1.33\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.33.zip\";}i:17;a:2:{s:7:\"version\";s:6:\"1.1.36\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.36.zip\";}i:18;a:2:{s:7:\"version\";s:6:\"1.1.37\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.37.zip\";}i:19;a:2:{s:7:\"version\";s:6:\"1.1.38\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.38.zip\";}i:20;a:2:{s:7:\"version\";s:6:\"1.1.39\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.39.zip\";}i:21;a:2:{s:7:\"version\";s:6:\"1.1.40\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.40.zip\";}i:22;a:2:{s:7:\"version\";s:6:\"1.1.41\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.41.zip\";}i:23;a:2:{s:7:\"version\";s:6:\"1.1.42\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.42.zip\";}i:24;a:2:{s:7:\"version\";s:6:\"1.1.43\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.43.zip\";}i:25;a:2:{s:7:\"version\";s:6:\"1.1.44\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.44.zip\";}i:26;a:2:{s:7:\"version\";s:6:\"1.1.45\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.45.zip\";}i:27;a:2:{s:7:\"version\";s:6:\"1.1.46\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.46.zip\";}i:28;a:2:{s:7:\"version\";s:6:\"1.1.47\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.47.zip\";}i:29;a:2:{s:7:\"version\";s:6:\"1.1.48\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.48.zip\";}i:30;a:2:{s:7:\"version\";s:6:\"1.1.50\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.50.zip\";}i:31;a:2:{s:7:\"version\";s:6:\"1.1.51\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.51.zip\";}i:32;a:2:{s:7:\"version\";s:6:\"1.1.52\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.52.zip\";}i:33;a:2:{s:7:\"version\";s:6:\"1.1.53\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.53.zip\";}i:34;a:2:{s:7:\"version\";s:6:\"1.1.54\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.54.zip\";}}', 'no'),
(158, 'theme_mods_hestia', 'a:13:{s:18:\"custom_css_post_id\";i:87;s:11:\"custom_logo\";i:58;s:18:\"nav_menu_locations\";a:3:{s:12:\"top-bar-menu\";i:0;s:7:\"primary\";i:2;s:6:\"footer\";i:2;}s:21:\"hestia_general_layout\";b:0;s:19:\"hestia_top_bar_hide\";b:1;s:16:\"background_image\";s:0:\"\";s:26:\"hestia_page_sidebar_layout\";s:10:\"full-width\";s:26:\"hestia_blog_sidebar_layout\";s:13:\"sidebar-right\";s:16:\"background_color\";s:6:\"e5e5e5\";s:12:\"accent_color\";s:7:\"#fe7f00\";s:13:\"show_on_front\";s:4:\"page\";s:21:\"hestia_body_font_size\";d:16;s:25:\"hestia_headings_font_size\";d:39.899999999999999;}', 'yes'),
(159, 'current_theme', 'Tiny Hestia', 'yes'),
(160, 'theme_switched', '', 'yes'),
(161, 'theme_switched_via_customizer', '', 'yes'),
(162, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(163, 'customize_stashed_theme_mods', 'a:1:{s:15:\"twentyseventeen\";a:6:{s:23:\"nav_menu_locations[top]\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-1;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2017-11-26 09:08:41\";}s:26:\"nav_menu_locations[social]\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-5;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2017-11-26 09:08:41\";}s:7:\"panel_1\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:56;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2017-11-26 09:08:41\";}s:7:\"panel_2\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:53;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2017-11-26 09:08:41\";}s:7:\"panel_3\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:55;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2017-11-26 09:08:41\";}s:7:\"panel_4\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:54;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2017-11-26 09:08:41\";}}}', 'no'),
(164, 'hestia_time_activated', '1512033687', 'yes'),
(165, 'hestia_had_elementor', 'no', 'yes'),
(337, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1512195368;s:7:\"checked\";a:2:{s:6:\"hestia\";s:6:\"1.1.54\";s:11:\"tiny-hestia\";s:5:\"1.0.6\";}s:8:\"response\";a:1:{s:6:\"hestia\";a:4:{s:5:\"theme\";s:6:\"hestia\";s:11:\"new_version\";s:6:\"1.1.56\";s:3:\"url\";s:36:\"https://wordpress.org/themes/hestia/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/hestia.1.1.56.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(338, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1512195364;s:8:\"response\";a:1:{s:43:\"themeisle-companion/themeisle-companion.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:33:\"w.org/plugins/themeisle-companion\";s:4:\"slug\";s:19:\"themeisle-companion\";s:6:\"plugin\";s:43:\"themeisle-companion/themeisle-companion.php\";s:11:\"new_version\";s:5:\"2.2.3\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/themeisle-companion/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/themeisle-companion.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:72:\"https://ps.w.org/themeisle-companion/assets/icon-128x128.png?rev=1712080\";s:7:\"default\";s:72:\"https://ps.w.org/themeisle-companion/assets/icon-128x128.png?rev=1712080\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:74:\"https://ps.w.org/themeisle-companion/assets/banner-772x250.png?rev=1714629\";s:7:\"default\";s:74:\"https://ps.w.org/themeisle-companion/assets/banner-772x250.png?rev=1714629\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.1\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"wp-visual-icon-fonts/wp_visual_icon_fonts.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/wp-visual-icon-fonts\";s:4:\"slug\";s:20:\"wp-visual-icon-fonts\";s:6:\"plugin\";s:45:\"wp-visual-icon-fonts/wp_visual_icon_fonts.php\";s:11:\"new_version\";s:5:\"0.5.7\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/wp-visual-icon-fonts/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-visual-icon-fonts.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:2:{s:2:\"1x\";s:74:\"https://ps.w.org/wp-visual-icon-fonts/assets/banner-772x250.png?rev=799322\";s:7:\"default\";s:74:\"https://ps.w.org/wp-visual-icon-fonts/assets/banner-772x250.png?rev=799322\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(182, 'recently_activated', 'a:0:{}', 'yes'),
(183, 'hestia_load_default', '1', 'yes'),
(184, 'themeisle_companion_install', '1511692223', 'yes'),
(185, '_transient_timeout_themeisle_companion_222versions', '1514284225', 'no'),
(186, '_transient_themeisle_companion_222versions', 'a:23:{i:0;a:2:{s:7:\"version\";s:5:\"1.0.0\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.1.0.0.zip\";}i:1;a:2:{s:7:\"version\";s:5:\"1.0.1\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.1.0.1.zip\";}i:2;a:2:{s:7:\"version\";s:5:\"1.0.2\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.1.0.2.zip\";}i:3;a:2:{s:7:\"version\";s:5:\"1.0.3\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.1.0.3.zip\";}i:4;a:2:{s:7:\"version\";s:5:\"1.0.4\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.1.0.4.zip\";}i:5;a:2:{s:7:\"version\";s:5:\"1.0.5\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.1.0.5.zip\";}i:6;a:2:{s:7:\"version\";s:5:\"2.0.0\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.2.0.0.zip\";}i:7;a:2:{s:7:\"version\";s:5:\"2.0.1\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.2.0.1.zip\";}i:8;a:2:{s:7:\"version\";s:6:\"2.0.10\";s:3:\"url\";s:69:\"https://downloads.wordpress.org/plugin/themeisle-companion.2.0.10.zip\";}i:9;a:2:{s:7:\"version\";s:6:\"2.0.11\";s:3:\"url\";s:69:\"https://downloads.wordpress.org/plugin/themeisle-companion.2.0.11.zip\";}i:10;a:2:{s:7:\"version\";s:5:\"2.0.2\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.2.0.2.zip\";}i:11;a:2:{s:7:\"version\";s:5:\"2.0.3\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.2.0.3.zip\";}i:12;a:2:{s:7:\"version\";s:5:\"2.0.4\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.2.0.4.zip\";}i:13;a:2:{s:7:\"version\";s:5:\"2.0.5\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.2.0.5.zip\";}i:14;a:2:{s:7:\"version\";s:5:\"2.0.6\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.2.0.6.zip\";}i:15;a:2:{s:7:\"version\";s:5:\"2.0.7\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.2.0.7.zip\";}i:16;a:2:{s:7:\"version\";s:5:\"2.0.8\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.2.0.8.zip\";}i:17;a:2:{s:7:\"version\";s:5:\"2.0.9\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.2.0.9.zip\";}i:18;a:2:{s:7:\"version\";s:5:\"2.1.0\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.2.1.0.zip\";}i:19;a:2:{s:7:\"version\";s:5:\"2.1.1\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.2.1.1.zip\";}i:20;a:2:{s:7:\"version\";s:5:\"2.2.0\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.2.2.0.zip\";}i:21;a:2:{s:7:\"version\";s:5:\"2.2.1\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.2.2.1.zip\";}i:22;a:2:{s:7:\"version\";s:5:\"2.2.2\";s:3:\"url\";s:68:\"https://downloads.wordpress.org/plugin/themeisle-companion.2.2.2.zip\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=372 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2017/11/espresso.jpg'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/11/espresso.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4, 4, '_starter_content_theme', 'twentyseventeen'),
(5, 4, '_customize_draft_post_name', 'espresso'),
(6, 5, '_wp_attached_file', '2017/11/sandwich.jpg'),
(7, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/11/sandwich.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 5, '_starter_content_theme', 'twentyseventeen'),
(9, 5, '_customize_draft_post_name', 'sandwich'),
(10, 6, '_wp_attached_file', '2017/11/coffee.jpg'),
(11, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2017/11/coffee.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 6, '_starter_content_theme', 'twentyseventeen'),
(13, 6, '_customize_draft_post_name', 'coffee'),
(14, 7, '_customize_draft_post_name', 'home'),
(15, 7, '_customize_changeset_uuid', '82b5133b-959c-40ed-999a-845e3b7daeee'),
(16, 8, '_thumbnail_id', '5'),
(17, 8, '_customize_draft_post_name', 'about'),
(18, 8, '_customize_changeset_uuid', '82b5133b-959c-40ed-999a-845e3b7daeee'),
(19, 9, '_thumbnail_id', '4'),
(20, 9, '_customize_draft_post_name', 'contact'),
(21, 9, '_customize_changeset_uuid', '82b5133b-959c-40ed-999a-845e3b7daeee'),
(22, 10, '_thumbnail_id', '6'),
(23, 10, '_customize_draft_post_name', 'blog'),
(24, 10, '_customize_changeset_uuid', '82b5133b-959c-40ed-999a-845e3b7daeee'),
(25, 11, '_thumbnail_id', '4'),
(26, 11, '_customize_draft_post_name', 'a-homepage-section'),
(27, 11, '_customize_changeset_uuid', '82b5133b-959c-40ed-999a-845e3b7daeee'),
(29, 13, '_wp_attached_file', '2017/11/espresso-1.jpg'),
(30, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2017/11/espresso-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"espresso-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"espresso-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"espresso-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"espresso-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"espresso-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 13, '_starter_content_theme', 'twentyseventeen'),
(32, 13, '_customize_draft_post_name', 'espresso'),
(33, 14, '_wp_attached_file', '2017/11/sandwich-1.jpg'),
(34, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2017/11/sandwich-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sandwich-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sandwich-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sandwich-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"sandwich-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"sandwich-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 14, '_starter_content_theme', 'twentyseventeen'),
(36, 14, '_customize_draft_post_name', 'sandwich'),
(37, 15, '_wp_attached_file', '2017/11/coffee-1.jpg'),
(38, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/11/coffee-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"coffee-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"coffee-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"coffee-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"coffee-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"coffee-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 15, '_starter_content_theme', 'twentyseventeen'),
(40, 15, '_customize_draft_post_name', 'coffee'),
(41, 16, '_customize_draft_post_name', 'home'),
(42, 16, '_customize_changeset_uuid', '856bffbd-b997-4326-a424-20750cff0027'),
(43, 17, '_thumbnail_id', '14'),
(44, 17, '_customize_draft_post_name', 'about'),
(45, 17, '_customize_changeset_uuid', '856bffbd-b997-4326-a424-20750cff0027'),
(46, 18, '_thumbnail_id', '13'),
(47, 18, '_customize_draft_post_name', 'contact'),
(48, 18, '_customize_changeset_uuid', '856bffbd-b997-4326-a424-20750cff0027'),
(49, 19, '_thumbnail_id', '15'),
(50, 19, '_customize_draft_post_name', 'blog'),
(51, 19, '_customize_changeset_uuid', '856bffbd-b997-4326-a424-20750cff0027'),
(52, 20, '_thumbnail_id', '13'),
(53, 20, '_customize_draft_post_name', 'a-homepage-section'),
(54, 20, '_customize_changeset_uuid', '856bffbd-b997-4326-a424-20750cff0027'),
(55, 21, '_edit_lock', '1511685137:1'),
(56, 22, '_wp_attached_file', '2017/11/espresso-2.jpg'),
(57, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2017/11/espresso-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"espresso-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"espresso-2-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"espresso-2-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"espresso-2-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"espresso-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 22, '_starter_content_theme', 'twentyseventeen'),
(59, 22, '_customize_draft_post_name', 'espresso'),
(60, 23, '_wp_attached_file', '2017/11/sandwich-2.jpg'),
(61, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2017/11/sandwich-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sandwich-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sandwich-2-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sandwich-2-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"sandwich-2-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"sandwich-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 23, '_starter_content_theme', 'twentyseventeen'),
(63, 23, '_customize_draft_post_name', 'sandwich'),
(64, 24, '_wp_attached_file', '2017/11/coffee-2.jpg'),
(65, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/11/coffee-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"coffee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"coffee-2-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"coffee-2-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"coffee-2-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"coffee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 24, '_starter_content_theme', 'twentyseventeen'),
(67, 24, '_customize_draft_post_name', 'coffee'),
(68, 25, '_customize_draft_post_name', 'home'),
(69, 25, '_customize_changeset_uuid', 'e4bb05db-d341-47f2-a78e-160bf22378a4'),
(70, 26, '_thumbnail_id', '23'),
(71, 26, '_customize_draft_post_name', 'about'),
(72, 26, '_customize_changeset_uuid', 'e4bb05db-d341-47f2-a78e-160bf22378a4'),
(73, 27, '_thumbnail_id', '22'),
(74, 27, '_customize_draft_post_name', 'contact'),
(75, 27, '_customize_changeset_uuid', 'e4bb05db-d341-47f2-a78e-160bf22378a4'),
(76, 28, '_thumbnail_id', '24'),
(77, 28, '_customize_draft_post_name', 'blog'),
(78, 28, '_customize_changeset_uuid', 'e4bb05db-d341-47f2-a78e-160bf22378a4'),
(79, 29, '_thumbnail_id', '22'),
(80, 29, '_customize_draft_post_name', 'a-homepage-section'),
(81, 29, '_customize_changeset_uuid', 'e4bb05db-d341-47f2-a78e-160bf22378a4'),
(82, 30, '_edit_lock', '1511686071:1'),
(83, 31, '_wp_attached_file', '2017/11/espresso-3.jpg'),
(84, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2017/11/espresso-3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"espresso-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"espresso-3-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"espresso-3-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"espresso-3-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"espresso-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 31, '_starter_content_theme', 'twentyseventeen'),
(86, 31, '_customize_draft_post_name', 'espresso'),
(87, 32, '_wp_attached_file', '2017/11/sandwich-3.jpg'),
(88, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2017/11/sandwich-3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sandwich-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sandwich-3-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sandwich-3-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"sandwich-3-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"sandwich-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 32, '_starter_content_theme', 'twentyseventeen'),
(90, 32, '_customize_draft_post_name', 'sandwich'),
(91, 33, '_wp_attached_file', '2017/11/coffee-3.jpg'),
(92, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/11/coffee-3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"coffee-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"coffee-3-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"coffee-3-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"coffee-3-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"coffee-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 33, '_starter_content_theme', 'twentyseventeen'),
(94, 33, '_customize_draft_post_name', 'coffee'),
(95, 34, '_customize_draft_post_name', 'home'),
(96, 34, '_customize_changeset_uuid', 'c3879ae4-e3b0-4deb-8546-dee05c202ebb'),
(97, 35, '_thumbnail_id', '32'),
(98, 35, '_customize_draft_post_name', 'about'),
(99, 35, '_customize_changeset_uuid', 'c3879ae4-e3b0-4deb-8546-dee05c202ebb'),
(100, 36, '_thumbnail_id', '31'),
(101, 36, '_customize_draft_post_name', 'contact'),
(102, 36, '_customize_changeset_uuid', 'c3879ae4-e3b0-4deb-8546-dee05c202ebb'),
(103, 37, '_thumbnail_id', '33'),
(104, 37, '_customize_draft_post_name', 'blog'),
(105, 37, '_customize_changeset_uuid', 'c3879ae4-e3b0-4deb-8546-dee05c202ebb'),
(106, 38, '_thumbnail_id', '31'),
(107, 38, '_customize_draft_post_name', 'a-homepage-section'),
(108, 38, '_customize_changeset_uuid', 'c3879ae4-e3b0-4deb-8546-dee05c202ebb'),
(109, 39, '_edit_lock', '1511686095:1'),
(110, 40, '_wp_attached_file', '2017/11/espresso-4.jpg'),
(111, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2017/11/espresso-4.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"espresso-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"espresso-4-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"espresso-4-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"espresso-4-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"espresso-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(112, 40, '_starter_content_theme', 'twentyseventeen'),
(113, 40, '_customize_draft_post_name', 'espresso'),
(114, 41, '_wp_attached_file', '2017/11/sandwich-4.jpg'),
(115, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2017/11/sandwich-4.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sandwich-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sandwich-4-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sandwich-4-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"sandwich-4-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"sandwich-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 41, '_starter_content_theme', 'twentyseventeen'),
(117, 41, '_customize_draft_post_name', 'sandwich'),
(118, 42, '_wp_attached_file', '2017/11/coffee-4.jpg'),
(119, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/11/coffee-4.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"coffee-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"coffee-4-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"coffee-4-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"coffee-4-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"coffee-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 42, '_starter_content_theme', 'twentyseventeen'),
(121, 42, '_customize_draft_post_name', 'coffee'),
(122, 43, '_customize_draft_post_name', 'home'),
(123, 43, '_customize_changeset_uuid', '443c083e-3139-4b80-b078-7716dd14269e'),
(124, 44, '_thumbnail_id', '41'),
(125, 44, '_customize_draft_post_name', 'about'),
(126, 44, '_customize_changeset_uuid', '443c083e-3139-4b80-b078-7716dd14269e'),
(127, 45, '_thumbnail_id', '40'),
(128, 45, '_customize_draft_post_name', 'contact'),
(129, 45, '_customize_changeset_uuid', '443c083e-3139-4b80-b078-7716dd14269e'),
(130, 46, '_thumbnail_id', '42'),
(131, 46, '_customize_draft_post_name', 'blog'),
(132, 46, '_customize_changeset_uuid', '443c083e-3139-4b80-b078-7716dd14269e'),
(133, 47, '_thumbnail_id', '40'),
(134, 47, '_customize_draft_post_name', 'a-homepage-section'),
(135, 47, '_customize_changeset_uuid', '443c083e-3139-4b80-b078-7716dd14269e'),
(136, 48, '_edit_lock', '1511686142:1'),
(272, 58, '_wp_attachment_is_custom_background', 'tiny-hestia'),
(273, 78, '_wp_trash_meta_status', 'publish'),
(274, 78, '_wp_trash_meta_time', '1511693399'),
(290, 86, '_wp_trash_meta_status', 'publish'),
(291, 86, '_wp_trash_meta_time', '1511797865'),
(278, 80, '_customize_restore_dismissed', '1'),
(279, 81, '_edit_lock', '1511791818:1'),
(280, 81, '_customize_restore_dismissed', '1'),
(281, 82, '_wp_trash_meta_status', 'publish'),
(282, 82, '_wp_trash_meta_time', '1511792542'),
(283, 83, '_edit_lock', '1511793012:1'),
(284, 83, '_customize_restore_dismissed', '1'),
(285, 84, '_wp_trash_meta_status', 'publish'),
(286, 84, '_wp_trash_meta_time', '1511794424'),
(287, 85, '_edit_lock', '1511797613:1'),
(288, 85, '_customize_restore_dismissed', '1'),
(289, 86, '_edit_lock', '1511797865:1'),
(172, 64, '_menu_item_xfn', ''),
(271, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:25:\"2017/11/cropped-512px.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-512px-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"cropped-512px-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"hestia-blog\";a:4:{s:4:\"file\";s:25:\"cropped-512px-360x240.png\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:25:\"cropped-512px-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:25:\"cropped-512px-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:25:\"cropped-512px-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:23:\"cropped-512px-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(266, 77, '_wp_attached_file', '2017/11/512px.png'),
(267, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:17:\"2017/11/512px.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"512px-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"512px-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"hestia-blog\";a:4:{s:4:\"file\";s:17:\"512px-360x240.png\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(268, 78, '_edit_lock', '1511693398:1'),
(269, 79, '_wp_attached_file', '2017/11/cropped-512px.png'),
(270, 79, '_wp_attachment_context', 'site-icon'),
(265, 76, '_customize_restore_dismissed', '1'),
(171, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(170, 64, '_menu_item_target', ''),
(150, 52, '_customize_changeset_uuid', 'cf0814f3-6719-4675-8829-8007f4c5f94a'),
(169, 64, '_menu_item_object', 'custom'),
(153, 53, '_customize_changeset_uuid', 'cf0814f3-6719-4675-8829-8007f4c5f94a'),
(168, 64, '_menu_item_object_id', '64'),
(156, 54, '_customize_changeset_uuid', 'cf0814f3-6719-4675-8829-8007f4c5f94a'),
(167, 64, '_menu_item_menu_item_parent', '0'),
(159, 55, '_customize_changeset_uuid', 'cf0814f3-6719-4675-8829-8007f4c5f94a'),
(292, 89, '_edit_lock', '1511798056:1'),
(166, 64, '_menu_item_type', 'custom'),
(162, 56, '_customize_changeset_uuid', 'cf0814f3-6719-4675-8829-8007f4c5f94a'),
(163, 57, '_edit_lock', '1511691322:1'),
(164, 58, '_wp_attached_file', '2017/11/Full_logo.png'),
(165, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:377;s:6:\"height\";i:72;s:4:\"file\";s:21:\"2017/11/Full_logo.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Full_logo-150x72.png\";s:5:\"width\";i:150;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Full_logo-300x57.png\";s:5:\"width\";i:300;s:6:\"height\";i:57;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"Full_logo-100x72.png\";s:5:\"width\";i:100;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(173, 64, '_menu_item_url', 'http://localhost/wordpress/'),
(174, 65, '_menu_item_type', 'post_type'),
(175, 65, '_menu_item_menu_item_parent', '0'),
(176, 65, '_menu_item_object_id', '53'),
(177, 65, '_menu_item_object', 'page'),
(178, 65, '_menu_item_target', ''),
(179, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(180, 65, '_menu_item_xfn', ''),
(181, 65, '_menu_item_url', ''),
(182, 66, '_menu_item_type', 'post_type'),
(183, 66, '_menu_item_menu_item_parent', '0'),
(184, 66, '_menu_item_object_id', '55'),
(185, 66, '_menu_item_object', 'page'),
(186, 66, '_menu_item_target', ''),
(187, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(188, 66, '_menu_item_xfn', ''),
(189, 66, '_menu_item_url', ''),
(190, 67, '_menu_item_type', 'post_type'),
(191, 67, '_menu_item_menu_item_parent', '0'),
(192, 67, '_menu_item_object_id', '54'),
(193, 67, '_menu_item_object', 'page'),
(194, 67, '_menu_item_target', ''),
(195, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(196, 67, '_menu_item_xfn', ''),
(197, 67, '_menu_item_url', ''),
(198, 68, '_menu_item_type', 'custom'),
(199, 68, '_menu_item_menu_item_parent', '0'),
(200, 68, '_menu_item_object_id', '68'),
(201, 68, '_menu_item_object', 'custom'),
(202, 68, '_menu_item_target', ''),
(203, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(204, 68, '_menu_item_xfn', ''),
(205, 68, '_menu_item_url', 'https://www.yelp.com'),
(206, 69, '_menu_item_type', 'custom'),
(207, 69, '_menu_item_menu_item_parent', '0'),
(208, 69, '_menu_item_object_id', '69'),
(209, 69, '_menu_item_object', 'custom'),
(210, 69, '_menu_item_target', ''),
(211, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(212, 69, '_menu_item_xfn', ''),
(213, 69, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(214, 70, '_menu_item_type', 'custom'),
(215, 70, '_menu_item_menu_item_parent', '0'),
(216, 70, '_menu_item_object_id', '70'),
(217, 70, '_menu_item_object', 'custom'),
(218, 70, '_menu_item_target', ''),
(219, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(220, 70, '_menu_item_xfn', ''),
(221, 70, '_menu_item_url', 'https://twitter.com/wordpress'),
(222, 71, '_menu_item_type', 'custom'),
(223, 71, '_menu_item_menu_item_parent', '0'),
(224, 71, '_menu_item_object_id', '71'),
(225, 71, '_menu_item_object', 'custom'),
(226, 71, '_menu_item_target', ''),
(227, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(228, 71, '_menu_item_xfn', ''),
(229, 71, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(230, 72, '_menu_item_type', 'custom'),
(231, 72, '_menu_item_menu_item_parent', '0'),
(232, 72, '_menu_item_object_id', '72'),
(233, 72, '_menu_item_object', 'custom'),
(234, 72, '_menu_item_target', ''),
(235, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(236, 72, '_menu_item_xfn', ''),
(237, 72, '_menu_item_url', 'mailto:wordpress@example.com'),
(238, 57, '_wp_trash_meta_status', 'publish'),
(239, 57, '_wp_trash_meta_time', '1511691323'),
(240, 48, '_customize_restore_dismissed', '1'),
(241, 39, '_customize_restore_dismissed', '1'),
(242, 30, '_customize_restore_dismissed', '1'),
(243, 21, '_customize_restore_dismissed', '1'),
(244, 12, '_customize_restore_dismissed', '1'),
(366, 124, '_edit_lock', '1512038082:1'),
(365, 123, '_wp_trash_meta_time', '1512037985'),
(364, 123, '_wp_trash_meta_status', 'publish'),
(363, 65, 'obfx_menu_icon', ''),
(362, 67, 'obfx_menu_icon', ''),
(361, 66, 'obfx_menu_icon', ''),
(360, 64, 'obfx_menu_icon', ''),
(253, 74, '_menu_item_type', 'custom'),
(254, 74, '_menu_item_menu_item_parent', '0'),
(255, 74, '_menu_item_object_id', '74'),
(256, 74, '_menu_item_object', 'custom'),
(257, 74, '_menu_item_target', ''),
(258, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(259, 74, '_menu_item_xfn', ''),
(260, 74, '_menu_item_url', 'http://www.facebook.com'),
(261, 75, '_edit_lock', '1511692404:1'),
(262, 75, '_wp_trash_meta_status', 'publish'),
(263, 75, '_wp_trash_meta_time', '1511692405'),
(264, 76, '_edit_lock', '1511692798:1'),
(293, 89, '_wp_trash_meta_status', 'publish'),
(294, 89, '_wp_trash_meta_time', '1511798057'),
(295, 90, '_edit_lock', '1511798459:1'),
(296, 90, '_wp_trash_meta_status', 'publish'),
(297, 90, '_wp_trash_meta_time', '1511798460'),
(298, 91, '_edit_lock', '1511798651:1'),
(299, 91, '_wp_trash_meta_status', 'publish'),
(300, 91, '_wp_trash_meta_time', '1511798651'),
(301, 92, '_edit_lock', '1511798713:1'),
(302, 92, '_wp_trash_meta_status', 'publish'),
(303, 92, '_wp_trash_meta_time', '1511798714'),
(304, 1, '_edit_lock', '1511858671:1'),
(305, 94, '_wp_attached_file', '2017/11/smartphones.jpg'),
(306, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:948;s:6:\"height\";i:668;s:4:\"file\";s:23:\"2017/11/smartphones.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"smartphones-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"smartphones-300x211.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"smartphones-768x541.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:541;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"hestia-blog\";a:4:{s:4:\"file\";s:23:\"smartphones-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:75:\"All modern screen devices. Desktop, mobile, wearable and tv. EPS 10 vector.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:25:\"All modern screen devices\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:50:{i:0;s:10:\"all-in-one\";i:1;s:11:\"application\";i:2;s:10:\"background\";i:3;s:3:\"big\";i:4;s:5:\"color\";i:5;s:9:\"colourful\";i:6;s:13:\"communication\";i:7;s:8:\"computer\";i:8;s:7:\"desktop\";i:9;s:6:\"device\";i:10;s:7:\"display\";i:11;s:10:\"electronic\";i:12;s:4:\"flat\";i:13;s:7:\"graphic\";i:14;s:4:\"icon\";i:15;s:12:\"illustration\";i:16;s:9:\"interface\";i:17;s:8:\"internet\";i:18;s:8:\"isolated\";i:19;s:6:\"laptop\";i:20;s:4:\"mini\";i:21;s:6:\"modern\";i:22;s:6:\"object\";i:23;s:4:\"page\";i:24;s:2:\"pc\";i:25;s:5:\"phone\";i:26;s:9:\"pictogram\";i:27;s:3:\"set\";i:28;s:4:\"sign\";i:29;s:5:\"smart\";i:30;s:6:\"symbol\";i:31;s:6:\"tablet\";i:32;s:10:\"technology\";i:33;s:10:\"television\";i:34;s:8:\"template\";i:35;s:5:\"tiles\";i:36;s:2:\"tv\";i:37;s:6:\"vector\";i:38;s:5:\"watch\";i:39;s:8:\"wearable\";i:40;s:3:\"web\";i:41;s:7:\"webpage\";i:42;s:10:\"widescreen\";i:43;s:7:\"windows\";i:44;s:16:\"operating system\";i:45;s:11:\"smart phone\";i:46;s:15:\"user experience\";i:47;s:14:\"user interface\";i:48;s:12:\"video player\";i:49;s:6:\"mobile\";}}}'),
(307, 1, '_edit_last', '1'),
(308, 1, '_thumbnail_id', '94'),
(312, 97, '_customize_restore_dismissed', '1'),
(313, 98, '_edit_lock', '1511846390:1'),
(314, 98, '_wp_trash_meta_status', 'publish'),
(315, 98, '_wp_trash_meta_time', '1511846390'),
(316, 99, '_edit_lock', '1511846473:1'),
(317, 99, '_wp_trash_meta_status', 'publish'),
(318, 99, '_wp_trash_meta_time', '1511846473'),
(319, 101, '_wp_trash_meta_status', 'publish'),
(320, 101, '_wp_trash_meta_time', '1511846483'),
(321, 1, '_wp_trash_meta_status', 'publish'),
(322, 1, '_wp_trash_meta_time', '1511858814'),
(323, 1, '_wp_desired_post_slug', 'hello-world'),
(324, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(325, 103, '_edit_last', '1'),
(326, 103, '_edit_lock', '1511970785:1'),
(327, 106, '_wp_attached_file', '2017/11/smartphones-1.jpg'),
(328, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:450;s:4:\"file\";s:25:\"2017/11/smartphones-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"smartphones-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"smartphones-1-300x193.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"hestia-blog\";a:4:{s:4:\"file\";s:25:\"smartphones-1-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:75:\"All modern screen devices. Desktop, mobile, wearable and tv. EPS 10 vector.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:25:\"All modern screen devices\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:50:{i:0;s:10:\"all-in-one\";i:1;s:11:\"application\";i:2;s:10:\"background\";i:3;s:3:\"big\";i:4;s:5:\"color\";i:5;s:9:\"colourful\";i:6;s:13:\"communication\";i:7;s:8:\"computer\";i:8;s:7:\"desktop\";i:9;s:6:\"device\";i:10;s:7:\"display\";i:11;s:10:\"electronic\";i:12;s:4:\"flat\";i:13;s:7:\"graphic\";i:14;s:4:\"icon\";i:15;s:12:\"illustration\";i:16;s:9:\"interface\";i:17;s:8:\"internet\";i:18;s:8:\"isolated\";i:19;s:6:\"laptop\";i:20;s:4:\"mini\";i:21;s:6:\"modern\";i:22;s:6:\"object\";i:23;s:4:\"page\";i:24;s:2:\"pc\";i:25;s:5:\"phone\";i:26;s:9:\"pictogram\";i:27;s:3:\"set\";i:28;s:4:\"sign\";i:29;s:5:\"smart\";i:30;s:6:\"symbol\";i:31;s:6:\"tablet\";i:32;s:10:\"technology\";i:33;s:10:\"television\";i:34;s:8:\"template\";i:35;s:5:\"tiles\";i:36;s:2:\"tv\";i:37;s:6:\"vector\";i:38;s:5:\"watch\";i:39;s:8:\"wearable\";i:40;s:3:\"web\";i:41;s:7:\"webpage\";i:42;s:10:\"widescreen\";i:43;s:7:\"windows\";i:44;s:16:\"operating system\";i:45;s:11:\"smart phone\";i:46;s:15:\"user experience\";i:47;s:14:\"user interface\";i:48;s:12:\"video player\";i:49;s:6:\"mobile\";}}}'),
(329, 107, '_wp_attached_file', '2017/11/chip.png'),
(330, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:535;s:6:\"height\";i:449;s:4:\"file\";s:16:\"2017/11/chip.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"chip-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"chip-300x252.png\";s:5:\"width\";i:300;s:6:\"height\";i:252;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"hestia-blog\";a:4:{s:4:\"file\";s:16:\"chip-360x240.png\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(331, 103, '_thumbnail_id', '106'),
(337, 111, '_edit_lock', '1511971345:1'),
(336, 111, '_edit_last', '1'),
(338, 112, '_wp_attached_file', '2017/11/linux.png'),
(339, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:450;s:4:\"file\";s:17:\"2017/11/linux.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"linux-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"linux-300x193.png\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"hestia-blog\";a:4:{s:4:\"file\";s:17:\"linux-360x240.png\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(340, 111, '_thumbnail_id', '112'),
(344, 115, '_edit_lock', '1512014937:1'),
(343, 115, '_edit_last', '1'),
(345, 116, '_wp_attached_file', '2017/11/underwater.png'),
(346, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:450;s:4:\"file\";s:22:\"2017/11/underwater.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"underwater-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"underwater-300x193.png\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"hestia-blog\";a:4:{s:4:\"file\";s:22:\"underwater-360x240.png\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(347, 115, '_thumbnail_id', '116'),
(350, 118, '_wp_trash_meta_status', 'publish'),
(351, 118, '_wp_trash_meta_time', '1512033535'),
(352, 120, '_wp_trash_meta_status', 'publish'),
(353, 120, '_wp_trash_meta_time', '1512033678'),
(354, 121, '_edit_lock', '1512034038:1'),
(355, 121, '_wp_trash_meta_status', 'publish'),
(356, 121, '_wp_trash_meta_time', '1512034038'),
(357, 122, '_edit_lock', '1512037778:1'),
(358, 122, '_wp_trash_meta_status', 'publish'),
(359, 122, '_wp_trash_meta_time', '1512037779'),
(367, 124, '_wp_trash_meta_status', 'publish'),
(368, 124, '_wp_trash_meta_time', '1512038082'),
(369, 125, '_edit_lock', '1512038263:1'),
(370, 125, '_wp_trash_meta_status', 'publish'),
(371, 125, '_wp_trash_meta_time', '1512038263');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-11-26 08:24:00', '2017-11-26 08:24:00', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2017-11-28 03:16:54', '2017-11-28 08:46:54', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2017-11-26 08:24:00', '2017-11-26 08:24:00', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-11-26 08:24:00', '2017-11-26 08:24:00', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-11-26 08:24:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-26 08:24:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2017-11-26 08:30:52', '0000-00-00 00:00:00', '', 'Espresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-11-26 08:25:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/11/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, '2017-11-26 08:30:52', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-11-26 08:25:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/11/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2017-11-26 08:30:52', '0000-00-00 00:00:00', '', 'Coffee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-11-26 08:25:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/11/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2017-11-26 08:30:52', '0000-00-00 00:00:00', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:25:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-11-26 08:30:52', '0000-00-00 00:00:00', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:25:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-11-26 08:30:52', '0000-00-00 00:00:00', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:25:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2017-11-26 08:30:52', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:25:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2017-11-26 08:30:52', '0000-00-00 00:00:00', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:25:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2017-11-26 08:30:52', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"55426fd5b59ac9ee6647f9343f4719f9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1b8bf0c47805d0be252ef3b96a57f6ab\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"eb55f0d70fa03a121b5a9d3160eb1c10\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"55426fd5b59ac9ee6647f9343f4719f9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"eb55f0d70fa03a121b5a9d3160eb1c10\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1b8bf0c47805d0be252ef3b96a57f6ab\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            4,\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Top Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 10,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 7,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:25:26\"\n    },\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"text-2\",\n                \"search-3\",\n                \"text-3\"\n            ],\n            \"sidebar-2\": [\n                \"text-4\"\n            ],\n            \"sidebar-3\": [\n                \"text-5\",\n                \"search-4\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:30:52\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '82b5133b-959c-40ed-999a-845e3b7daeee', '', '', '2017-11-26 08:30:52', '2017-11-26 08:30:52', '', 0, 'http://localhost/wordpress/?p=12', 0, 'customize_changeset', '', 0),
(13, 1, '2017-11-26 08:32:13', '0000-00-00 00:00:00', '', 'Espresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-11-26 08:32:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/11/espresso-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2017-11-26 08:32:13', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-11-26 08:32:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/11/sandwich-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2017-11-26 08:32:13', '0000-00-00 00:00:00', '', 'Coffee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-11-26 08:32:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/11/coffee-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2017-11-26 08:32:13', '0000-00-00 00:00:00', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:32:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=16', 0, 'page', '', 0),
(17, 1, '2017-11-26 08:32:13', '0000-00-00 00:00:00', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:32:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2017-11-26 08:32:13', '0000-00-00 00:00:00', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:32:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=18', 0, 'page', '', 0),
(19, 1, '2017-11-26 08:32:13', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:32:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=19', 0, 'page', '', 0),
(20, 1, '2017-11-26 08:32:13', '0000-00-00 00:00:00', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:32:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2017-11-26 08:32:13', '0000-00-00 00:00:00', '{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"55426fd5b59ac9ee6647f9343f4719f9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1b8bf0c47805d0be252ef3b96a57f6ab\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"eb55f0d70fa03a121b5a9d3160eb1c10\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-3\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"55426fd5b59ac9ee6647f9343f4719f9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"eb55f0d70fa03a121b5a9d3160eb1c10\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1b8bf0c47805d0be252ef3b96a57f6ab\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            13,\n            14,\n            15,\n            16,\n            17,\n            18,\n            19,\n            20\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Top Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 17,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 19,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 18,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 16,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 19,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 20,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 17,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 19,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 18,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:32:13\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '856bffbd-b997-4326-a424-20750cff0027', '', '', '2017-11-26 08:32:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=21', 0, 'customize_changeset', '', 0),
(22, 1, '2017-11-26 08:47:49', '0000-00-00 00:00:00', '', 'Espresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-11-26 08:47:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/11/espresso-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2017-11-26 08:47:49', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-11-26 08:47:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/11/sandwich-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2017-11-26 08:47:49', '0000-00-00 00:00:00', '', 'Coffee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-11-26 08:47:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/11/coffee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2017-11-26 08:47:49', '0000-00-00 00:00:00', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:47:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=25', 0, 'page', '', 0),
(26, 1, '2017-11-26 08:47:49', '0000-00-00 00:00:00', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:47:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=26', 0, 'page', '', 0),
(27, 1, '2017-11-26 08:47:49', '0000-00-00 00:00:00', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:47:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=27', 0, 'page', '', 0),
(28, 1, '2017-11-26 08:47:49', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:47:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=28', 0, 'page', '', 0),
(29, 1, '2017-11-26 08:47:49', '0000-00-00 00:00:00', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:47:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=29', 0, 'page', '', 0),
(30, 1, '2017-11-26 08:47:49', '0000-00-00 00:00:00', '{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"55426fd5b59ac9ee6647f9343f4719f9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1b8bf0c47805d0be252ef3b96a57f6ab\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"eb55f0d70fa03a121b5a9d3160eb1c10\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-3\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"55426fd5b59ac9ee6647f9343f4719f9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"eb55f0d70fa03a121b5a9d3160eb1c10\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1b8bf0c47805d0be252ef3b96a57f6ab\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            22,\n            23,\n            24,\n            25,\n            26,\n            27,\n            28,\n            29\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Top Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 26,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 28,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 27,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 25,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 28,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 29,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 26,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 28,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 27,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:47:49\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'e4bb05db-d341-47f2-a78e-160bf22378a4', '', '', '2017-11-26 08:47:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=30', 0, 'customize_changeset', '', 0),
(31, 1, '2017-11-26 08:48:12', '0000-00-00 00:00:00', '', 'Espresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-11-26 08:48:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/11/espresso-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2017-11-26 08:48:12', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-11-26 08:48:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/11/sandwich-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2017-11-26 08:48:12', '0000-00-00 00:00:00', '', 'Coffee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-11-26 08:48:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/11/coffee-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2017-11-26 08:48:12', '0000-00-00 00:00:00', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:48:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=34', 0, 'page', '', 0),
(35, 1, '2017-11-26 08:48:12', '0000-00-00 00:00:00', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:48:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=35', 0, 'page', '', 0),
(36, 1, '2017-11-26 08:48:12', '0000-00-00 00:00:00', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:48:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=36', 0, 'page', '', 0),
(37, 1, '2017-11-26 08:48:12', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:48:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=37', 0, 'page', '', 0),
(38, 1, '2017-11-26 08:48:12', '0000-00-00 00:00:00', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:48:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=38', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(39, 1, '2017-11-26 08:48:12', '0000-00-00 00:00:00', '{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"55426fd5b59ac9ee6647f9343f4719f9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1b8bf0c47805d0be252ef3b96a57f6ab\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"eb55f0d70fa03a121b5a9d3160eb1c10\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-3\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"55426fd5b59ac9ee6647f9343f4719f9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"eb55f0d70fa03a121b5a9d3160eb1c10\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1b8bf0c47805d0be252ef3b96a57f6ab\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            31,\n            32,\n            33,\n            34,\n            35,\n            36,\n            37,\n            38\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Top Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 35,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 37,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 36,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 34,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 37,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 38,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 35,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 37,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 36,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:12\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'c3879ae4-e3b0-4deb-8546-dee05c202ebb', '', '', '2017-11-26 08:48:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2017-11-26 08:48:59', '0000-00-00 00:00:00', '', 'Espresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-11-26 08:48:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/11/espresso-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2017-11-26 08:48:59', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-11-26 08:48:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/11/sandwich-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2017-11-26 08:48:59', '0000-00-00 00:00:00', '', 'Coffee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-11-26 08:48:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/11/coffee-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2017-11-26 08:48:59', '0000-00-00 00:00:00', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:48:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=43', 0, 'page', '', 0),
(44, 1, '2017-11-26 08:48:59', '0000-00-00 00:00:00', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:48:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=44', 0, 'page', '', 0),
(45, 1, '2017-11-26 08:48:59', '0000-00-00 00:00:00', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:48:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=45', 0, 'page', '', 0),
(46, 1, '2017-11-26 08:48:59', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:48:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=46', 0, 'page', '', 0),
(47, 1, '2017-11-26 08:48:59', '0000-00-00 00:00:00', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-26 08:48:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=47', 0, 'page', '', 0),
(48, 1, '2017-11-26 08:48:59', '0000-00-00 00:00:00', '{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"55426fd5b59ac9ee6647f9343f4719f9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1b8bf0c47805d0be252ef3b96a57f6ab\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"eb55f0d70fa03a121b5a9d3160eb1c10\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-3\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"55426fd5b59ac9ee6647f9343f4719f9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"eb55f0d70fa03a121b5a9d3160eb1c10\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1b8bf0c47805d0be252ef3b96a57f6ab\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            40,\n            41,\n            42,\n            43,\n            44,\n            45,\n            46,\n            47\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Top Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 44,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 46,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 45,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 43,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 46,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 47,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 44,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 46,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 45,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 08:48:59\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '443c083e-3139-4b80-b078-7716dd14269e', '', '', '2017-11-26 08:48:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=48', 0, 'customize_changeset', '', 0),
(52, 1, '2017-11-26 10:15:22', '2017-11-26 10:15:22', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-11-26 10:15:22', '2017-11-26 10:15:22', '', 0, 'http://localhost/wordpress/?page_id=52', 0, 'page', '', 0),
(53, 1, '2017-11-26 10:15:22', '2017-11-26 10:15:22', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2017-11-26 10:15:22', '2017-11-26 10:15:22', '', 0, 'http://localhost/wordpress/?page_id=53', 0, 'page', '', 0),
(54, 1, '2017-11-26 10:15:22', '2017-11-26 10:15:22', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-11-26 10:15:22', '2017-11-26 10:15:22', '', 0, 'http://localhost/wordpress/?page_id=54', 0, 'page', '', 0),
(55, 1, '2017-11-26 10:15:22', '2017-11-26 10:15:22', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-11-26 10:15:22', '2017-11-26 10:15:22', '', 0, 'http://localhost/wordpress/?page_id=55', 0, 'page', '', 0),
(56, 1, '2017-11-26 10:15:23', '2017-11-26 10:15:23', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'publish', 'closed', 'closed', '', 'a-homepage-section', '', '', '2017-11-26 10:15:23', '2017-11-26 10:15:23', '', 0, 'http://localhost/wordpress/?page_id=56', 0, 'page', '', 0),
(57, 1, '2017-11-26 10:15:22', '2017-11-26 10:15:22', '{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"55426fd5b59ac9ee6647f9343f4719f9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1b8bf0c47805d0be252ef3b96a57f6ab\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"eb55f0d70fa03a121b5a9d3160eb1c10\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-3\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"55426fd5b59ac9ee6647f9343f4719f9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"eb55f0d70fa03a121b5a9d3160eb1c10\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1b8bf0c47805d0be252ef3b96a57f6ab\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            49,\n            50,\n            51,\n            52,\n            53,\n            54,\n            55,\n            56\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Top Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:15:35\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:15:35\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 53,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:15:35\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 55,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:15:35\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 54,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:15:35\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Social Links Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:15:35\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:15:35\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:15:35\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:15:35\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:15:35\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:15:35\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 52,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 55,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 56,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 53,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 55,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 54,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:08:41\"\n    },\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"text-6\",\n                \"search-3\",\n                \"text-7\"\n            ],\n            \"sidebar-2\": [\n                \"text-8\"\n            ],\n            \"sidebar-3\": [\n                \"text-9\",\n                \"search-4\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:11:07\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 09:15:35\"\n    },\n    \"tiny-hestia::custom_logo\": {\n        \"value\": 58,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 10:15:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cf0814f3-6719-4675-8829-8007f4c5f94a', '', '', '2017-11-26 10:15:22', '2017-11-26 10:15:22', '', 0, 'http://localhost/wordpress/?p=57', 0, 'customize_changeset', '', 0),
(58, 1, '2017-11-26 10:13:45', '2017-11-26 10:13:45', '', 'Techroot', '', 'inherit', 'open', 'closed', '', 'full_logo', '', '', '2017-11-26 10:14:00', '2017-11-26 10:14:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/11/Full_logo.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2017-11-26 10:49:59', '2017-11-26 10:49:59', '{\n    \"site_icon\": {\n        \"value\": 79,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 10:49:01\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 10:49:01\"\n    },\n    \"tiny-hestia::background_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2017/11/Full_logo.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 10:49:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '60c336c3-c540-4c4a-ba78-9f0eb4b6380a', '', '', '2017-11-26 10:49:59', '2017-11-26 10:49:59', '', 0, 'http://localhost/wordpress/?p=78', 0, 'customize_changeset', '', 0),
(77, 1, '2017-11-26 10:47:57', '2017-11-26 10:47:57', '', '512px', '', 'inherit', 'open', 'closed', '', '512px', '', '', '2017-11-26 10:47:57', '2017-11-26 10:47:57', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/11/512px.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2017-11-26 10:15:22', '2017-11-26 10:15:22', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2017-11-26 10:15:22', '2017-11-26 10:15:22', '', 52, 'http://localhost/wordpress/2017/11/26/52-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2017-11-26 10:15:22', '2017-11-26 10:15:22', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2017-11-26 10:15:22', '2017-11-26 10:15:22', '', 53, 'http://localhost/wordpress/2017/11/26/53-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2017-11-26 10:15:22', '2017-11-26 10:15:22', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2017-11-26 10:15:22', '2017-11-26 10:15:22', '', 54, 'http://localhost/wordpress/2017/11/26/54-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2017-11-26 10:15:22', '2017-11-26 10:15:22', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-11-26 10:15:22', '2017-11-26 10:15:22', '', 55, 'http://localhost/wordpress/2017/11/26/55-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-11-26 10:15:23', '2017-11-26 10:15:23', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2017-11-26 10:15:23', '2017-11-26 10:15:23', '', 56, 'http://localhost/wordpress/2017/11/26/56-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2017-11-26 10:15:23', '2017-11-26 10:15:23', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-11-30 05:01:46', '2017-11-30 10:31:46', '', 0, 'http://localhost/wordpress/2017/11/26/home/', 1, 'nav_menu_item', '', 0),
(65, 1, '2017-11-26 10:15:23', '2017-11-26 10:15:23', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2017-11-30 05:01:46', '2017-11-30 10:31:46', '', 0, 'http://localhost/wordpress/2017/11/26/65/', 4, 'nav_menu_item', '', 0),
(66, 1, '2017-11-26 10:15:23', '2017-11-26 10:15:23', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2017-11-30 05:01:46', '2017-11-30 10:31:46', '', 0, 'http://localhost/wordpress/2017/11/26/66/', 2, 'nav_menu_item', '', 0),
(67, 1, '2017-11-26 10:15:23', '2017-11-26 10:15:23', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2017-11-30 05:01:46', '2017-11-30 10:31:46', '', 0, 'http://localhost/wordpress/2017/11/26/67/', 3, 'nav_menu_item', '', 0),
(68, 1, '2017-11-26 10:15:23', '2017-11-26 10:15:23', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2017-11-26 10:15:23', '2017-11-26 10:15:23', '', 0, 'http://localhost/wordpress/2017/11/26/yelp/', 0, 'nav_menu_item', '', 0),
(69, 1, '2017-11-26 10:15:23', '2017-11-26 10:15:23', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2017-11-26 10:15:23', '2017-11-26 10:15:23', '', 0, 'http://localhost/wordpress/2017/11/26/facebook/', 1, 'nav_menu_item', '', 0),
(70, 1, '2017-11-26 10:15:23', '2017-11-26 10:15:23', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2017-11-26 10:15:23', '2017-11-26 10:15:23', '', 0, 'http://localhost/wordpress/2017/11/26/twitter/', 2, 'nav_menu_item', '', 0),
(71, 1, '2017-11-26 10:15:23', '2017-11-26 10:15:23', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2017-11-26 10:15:23', '2017-11-26 10:15:23', '', 0, 'http://localhost/wordpress/2017/11/26/instagram/', 3, 'nav_menu_item', '', 0),
(72, 1, '2017-11-26 10:15:23', '2017-11-26 10:15:23', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2017-11-26 10:15:23', '2017-11-26 10:15:23', '', 0, 'http://localhost/wordpress/2017/11/26/email/', 4, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(123, 1, '2017-11-30 05:03:05', '2017-11-30 10:33:05', '{\n    \"tiny-hestia::hestia_body_font_size\": {\n        \"value\": \"16\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 10:33:05\"\n    },\n    \"tiny-hestia::hestia_headings_font_size\": {\n        \"value\": \"39.9\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 10:33:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6b44923f-64d0-482a-aa47-a4acc0eb2717', '', '', '2017-11-30 05:03:05', '2017-11-30 10:33:05', '', 0, 'http://localhost/wordpress/6b44923f-64d0-482a-aa47-a4acc0eb2717/', 0, 'customize_changeset', '', 0),
(74, 1, '2017-11-26 10:30:09', '2017-11-26 10:30:09', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook-2', '', '', '2017-11-26 10:30:09', '2017-11-26 10:30:09', '', 0, 'http://localhost/wordpress/2017/11/26/facebook-2/', 0, 'nav_menu_item', '', 0),
(75, 1, '2017-11-26 10:33:25', '2017-11-26 10:33:25', '{\n    \"tiny-hestia::hestia_general_layout\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 10:31:45\"\n    },\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 10:32:45\"\n    },\n    \"tiny-hestia::hestia_top_bar_hide\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 10:32:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0bd43524-449a-4e93-af0f-a71e6f8e173a', '', '', '2017-11-26 10:33:25', '2017-11-26 10:33:25', '', 0, 'http://localhost/wordpress/?p=75', 0, 'customize_changeset', '', 0),
(76, 1, '2017-11-26 10:39:35', '0000-00-00 00:00:00', '{\n    \"tiny-hestia::background_color\": {\n        \"value\": \"#000000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 10:39:35\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'e93c223e-dd68-4ff1-b78c-fac1580dc23d', '', '', '2017-11-26 10:39:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=76', 0, 'customize_changeset', '', 0),
(79, 1, '2017-11-26 10:48:02', '2017-11-26 10:48:02', 'http://localhost/wordpress/wp-content/uploads/2017/11/cropped-512px.png', 'cropped-512px.png', '', 'inherit', 'open', 'closed', '', 'cropped-512px-png', '', '', '2017-11-26 10:48:02', '2017-11-26 10:48:02', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/11/cropped-512px.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2017-11-26 10:51:27', '0000-00-00 00:00:00', '{\n    \"tiny-hestia::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 10:51:27\"\n    },\n    \"tiny-hestia::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-26 10:51:27\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '441edd83-788b-4870-bb8b-e05b090de372', '', '', '2017-11-26 10:51:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=80', 0, 'customize_changeset', '', 0),
(81, 1, '2017-11-27 14:02:24', '0000-00-00 00:00:00', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-27 14:02:24\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '7efdf3a7-0811-4513-831c-7ce71b54139d', '', '', '2017-11-27 14:02:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=81', 0, 'customize_changeset', '', 0),
(82, 1, '2017-11-27 14:22:22', '2017-11-27 14:22:22', '{\n    \"blogdescription\": {\n        \"value\": \"Bhenchod\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-27 14:22:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3ef743d7-6b20-4fef-8562-0ffcd9790668', '', '', '2017-11-27 14:22:22', '2017-11-27 14:22:22', '', 0, 'http://localhost/wordpress/2017/11/27/3ef743d7-6b20-4fef-8562-0ffcd9790668/', 0, 'customize_changeset', '', 0),
(83, 1, '2017-11-27 14:30:12', '0000-00-00 00:00:00', '{\n    \"blogdescription\": {\n        \"value\": \"Intrinsic\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-27 14:30:12\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'edafcf8f-f81d-4589-aedb-772f738be1ba', '', '', '2017-11-27 14:30:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=83', 0, 'customize_changeset', '', 0),
(84, 1, '2017-11-27 14:53:44', '2017-11-27 14:53:44', '{\n    \"blogdescription\": {\n        \"value\": \"Intrinsic\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-27 14:53:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6a0cd55d-116b-472c-8895-4c73c1394009', '', '', '2017-11-27 14:53:44', '2017-11-27 14:53:44', '', 0, 'http://localhost/wordpress/2017/11/27/6a0cd55d-116b-472c-8895-4c73c1394009/', 0, 'customize_changeset', '', 0),
(85, 1, '2017-11-27 15:32:53', '0000-00-00 00:00:00', '{\n    \"custom_css[tiny-hestia]\": {\n        \"value\": \".hestia-blogs {\\n\\t\\n} \",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-27 15:32:53\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '9ddc34a6-34bd-435f-ac63-0785a5ce9524', '', '', '2017-11-27 15:32:53', '2017-11-27 15:32:53', '', 0, 'http://localhost/wordpress/?p=85', 0, 'customize_changeset', '', 0),
(86, 1, '2017-11-27 15:51:05', '2017-11-27 15:51:05', '{\n    \"custom_css[tiny-hestia]\": {\n        \"value\": \".main {\\n  margin-top:100px;\\n\\tmargin-bottom:30px;\\n}\\n\\n.page-header {\\n\\tdisplay:none\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-27 15:51:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4bb4b49a-d5a9-4c78-b0dc-452a745cbcfc', '', '', '2017-11-27 15:51:05', '2017-11-27 15:51:05', '', 0, 'http://localhost/wordpress/?p=86', 0, 'customize_changeset', '', 0),
(87, 1, '2017-11-27 15:51:05', '2017-11-27 15:51:05', '.main {\n  margin-top:70px;\n}\n\n.page-header {\n	display:none\n}\n', 'tiny-hestia', '', 'publish', 'closed', 'closed', '', 'tiny-hestia', '', '', '2017-11-30 04:59:39', '2017-11-30 10:29:39', '', 0, 'http://localhost/wordpress/2017/11/27/tiny-hestia/', 0, 'custom_css', '', 0),
(88, 1, '2017-11-27 15:51:05', '2017-11-27 15:51:05', '.main {\n  margin-top:100px;\n	margin-bottom:30px;\n}\n\n.page-header {\n	display:none\n}', 'tiny-hestia', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2017-11-27 15:51:05', '2017-11-27 15:51:05', '', 87, 'http://localhost/wordpress/2017/11/27/87-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2017-11-27 15:54:17', '2017-11-27 15:54:17', '{\n    \"tiny-hestia::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-27 15:53:17\"\n    },\n    \"tiny-hestia::hestia_page_sidebar_layout\": {\n        \"value\": \"full-width\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-27 15:53:17\"\n    },\n    \"tiny-hestia::hestia_blog_sidebar_layout\": {\n        \"value\": \"sidebar-right\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-27 15:53:17\"\n    },\n    \"tiny-hestia::hestia_general_layout\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-27 15:54:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a8bc7b4e-bdea-4299-8cba-33b261a8161b', '', '', '2017-11-27 15:54:17', '2017-11-27 15:54:17', '', 0, 'http://localhost/wordpress/?p=89', 0, 'customize_changeset', '', 0),
(90, 1, '2017-11-27 16:01:00', '2017-11-27 16:01:00', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-27 15:58:20\"\n    },\n    \"widget_search[6]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjA6IiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"eb6bb40199ffe1bd22f90edce5d868b9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-27 15:57:20\"\n    },\n    \"widget_search[7]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-27 15:58:20\"\n    },\n    \"tiny-hestia::background_color\": {\n        \"value\": \"#e5e5e5\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-27 16:00:20\"\n    },\n    \"tiny-hestia::accent_color\": {\n        \"value\": \"#e91e63\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-27 16:00:20\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-27 16:00:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8e08e4b3-ffa9-472c-b18d-5d215a9f6d48', '', '', '2017-11-27 16:01:00', '2017-11-27 16:01:00', '', 0, 'http://localhost/wordpress/?p=90', 0, 'customize_changeset', '', 0),
(91, 1, '2017-11-27 16:04:11', '2017-11-27 16:04:11', '{\n    \"tiny-hestia::accent_color\": {\n        \"value\": \"#000da5\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-27 16:04:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '089a5dbe-dd2e-46c4-be58-248e4ef8736f', '', '', '2017-11-27 16:04:11', '2017-11-27 16:04:11', '', 0, 'http://localhost/wordpress/?p=91', 0, 'customize_changeset', '', 0),
(92, 1, '2017-11-27 16:05:13', '2017-11-27 16:05:13', '{\n    \"tiny-hestia::accent_color\": {\n        \"value\": \"#fe7f00\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-27 16:05:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '717f72b5-a60b-4377-af7c-7b674559db90', '', '', '2017-11-27 16:05:13', '2017-11-27 16:05:13', '', 0, 'http://localhost/wordpress/?p=92', 0, 'customize_changeset', '', 0),
(93, 1, '2017-11-27 16:05:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-27 16:05:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=93', 0, 'post', '', 0),
(94, 1, '2017-11-28 05:12:09', '2017-11-28 05:12:09', '', 'All modern screen devices', '.', 'inherit', 'open', 'closed', '', 'all-modern-screen-devices', '', '', '2017-11-28 05:12:20', '2017-11-28 05:12:20', '', 1, 'http://localhost/wordpress/wp-content/uploads/2017/11/smartphones.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2017-11-28 05:12:31', '2017-11-28 05:12:31', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2017-11-28 05:12:31', '2017-11-28 05:12:31', '', 1, 'http://localhost/wordpress/2017/11/28/1-autosave-v1/', 0, 'revision', '', 0),
(96, 1, '2017-11-28 05:12:34', '2017-11-28 05:12:34', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-11-28 05:12:34', '2017-11-28 05:12:34', '', 1, 'http://localhost/wordpress/2017/11/28/1-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2017-11-28 05:17:04', '0000-00-00 00:00:00', '{\n    \"custom_css[tiny-hestia]\": {\n        \"value\": \".main {\\n  margin-top:100px;\\n\\tmargin-bottom:30px;\\n}\\n\\n\\n.page-header {\\n\\tdisplay:none\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-28 05:17:04\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'ea68e3f3-3d76-4728-8784-29d233719277', '', '', '2017-11-28 05:17:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=97', 0, 'customize_changeset', '', 0),
(98, 1, '2017-11-28 05:19:50', '2017-11-28 05:19:50', '{\n    \"tiny-hestia::hestia_general_layout\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-28 05:19:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '02345075-1d01-4984-9b35-64abb89b8b74', '', '', '2017-11-28 05:19:50', '2017-11-28 05:19:50', '', 0, 'http://localhost/wordpress/?p=98', 0, 'customize_changeset', '', 0),
(99, 1, '2017-11-28 05:21:13', '2017-11-28 05:21:13', '{\n    \"custom_css[tiny-hestia]\": {\n        \"value\": \".main {\\n  margin-top:70px;\\n}\\n\\n.page-header {\\n\\tdisplay:none\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-28 05:21:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '030f45a7-1efe-4f19-a958-3b801078d848', '', '', '2017-11-28 05:21:13', '2017-11-28 05:21:13', '', 0, 'http://localhost/wordpress/?p=99', 0, 'customize_changeset', '', 0),
(100, 1, '2017-11-28 05:21:13', '2017-11-28 05:21:13', '.main {\n  margin-top:70px;\n}\n\n.page-header {\n	display:none\n}', 'tiny-hestia', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2017-11-28 05:21:13', '2017-11-28 05:21:13', '', 87, 'http://localhost/wordpress/2017/11/28/87-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2017-11-28 05:21:23', '2017-11-28 05:21:23', '{\n    \"custom_css[tiny-hestia]\": {\n        \"value\": \".main {\\n  margin-top:70px;\\n}\\n\\n.page-header {\\n\\tdisplay:none\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-28 05:21:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '698907de-d60e-4ada-9dc0-12e4278562a6', '', '', '2017-11-28 05:21:23', '2017-11-28 05:21:23', '', 0, 'http://localhost/wordpress/2017/11/28/698907de-d60e-4ada-9dc0-12e4278562a6/', 0, 'customize_changeset', '', 0),
(102, 1, '2017-11-28 08:41:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-28 08:41:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=102', 0, 'post', '', 0),
(103, 1, '2017-11-29 10:08:51', '2017-11-29 15:38:51', 'Have you ever wondered which part of the your smartphone handles all the processes?. Almost all the android smartphones available today in the market uses the chip named \'<strong>Qualcomm\'s Snapdragon</strong>\' that forms the central part of the phone and handles all the processes and working of other hardware be it working of applications, sensors, cameras, processing multimedia, graphics, connectivity, display, etc of a smartphone.\r\n\r\nQualcomm\'s Snapdragon provides a premium processor chip which has been used by leading smartphones brands be it Google\'s Pixel, Samsung, OnePlus, LG, Motorola, Sony, Lenovo, HTC, Asus, HP, Xaomi, LeEco, etc to power their smartphones.\r\n\r\nHere is a brief description of parts of Snapdragon Chip that powers the android smartphones.\r\n\r\n<img class=\"size-medium wp-image-107 aligncenter\" src=\"http://localhost/wordpress/wp-content/uploads/2017/11/chip-300x252.png\" alt=\"\" width=\"300\" height=\"252\" />\r\n<h3>1. CPU</h3>\r\nCPU stands for Central Processing Unit. The Snapdragon uses Qualcomm\'s Kryo CPU released in 2015. Earlier it used Krait CPU and Scorpion CPU. Kryo is based on ARM-architecture. It handles the fetching and execution of the Instructions to perform various processes of a smartphone.\r\n<h3>2. GPU</h3>\r\nGPU stands for Graphics Processing Unit. Snapdragon used Qualcomm\'s Adreno GPU which is responsible graphics rendering to support real-life-quality visuals for exciting immersive experiences.\r\n<h3>3. Cellular Modem for Connectivity</h3>\r\nThis unit is responsible for high speed wireless telecommunication and internet connectivity through wifi. It consists of LTE modem and wifi hardware to connect the smartphone to mobile towers and internet points.\r\n<h3>4. Camera, Display and Multimedia Unit</h3>\r\nThe camera processor facilitates the functioning of camera by processing the image signal, the function of video recorder and the display unit is responsible for screen display according to its resolution. The multimedia unit handles the playback of audio, video, and recognition of gestures.\r\n<h3>5. Location</h3>\r\nThis units supports usage of GPS satellite system including other satellite systems in order to provide the correct location of a smartphone.\r\n<h3>6. Hexagon DSP</h3>\r\nHexagon is the brand for a family of 32-bit multi-threaded micro architectures implementing the same instruction set for a digital signal processor (DSP) developed by Qualcomm. It is designed to deliver efficiency in performance with low power over variety of applications.\r\n<h3>7. Sensor Core</h3>\r\nSnapdragon integrated sensor engine is designed to manage many different sensor types with highly efficient, custom-designed hardware and algorithms working seamlessly together, even when the mobile device is in standby.\r\n<h3>8. Security</h3>\r\nThis unit comprises of comprehensive user and device authentication with the Qualcomm Haven™ security suite, which includes a full biometric suite for fingerprint scanning, voice, iris and facial recognition.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'The Processor inside your Smartphone', '', 'publish', 'open', 'open', '', 'the-processor-inside-your-smartphone', '', '', '2017-11-29 10:13:35', '2017-11-29 15:43:35', '', 0, 'http://localhost/wordpress/?p=103', 0, 'post', '', 0),
(104, 1, '2017-11-28 03:33:18', '2017-11-28 09:03:18', 'Smartphone retailers characterize their phones with technical specifications. Here is a brief description of commonly used terms in technical specification\'s of a smartphone.\r\n<h3>1. Processor</h3>\r\nThe processor is the brain of the smartphone. All the processes and tasks are done by processors. The speed of processor is measured in Gigahertz (GHz). The higher value of GHz means better performance.', 'Technical Specifications of a Smartphone', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2017-11-28 03:33:18', '2017-11-28 09:03:18', '', 103, 'http://localhost/wordpress/103-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2017-11-29 09:07:56', '2017-11-29 14:37:56', '', 'Inside your Smartphone', '', 'inherit', 'open', 'closed', '', 'all-modern-screen-devices-2', '', '', '2017-11-29 10:08:20', '2017-11-29 15:38:20', '', 103, 'http://localhost/wordpress/wp-content/uploads/2017/11/smartphones-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2017-11-29 08:57:25', '2017-11-29 14:27:25', 'Have you ever wondered which part of the your smartphone handles all the processes?. Almost all the android smartphones available today in the market uses the chip name \'<strong>Qualcomm\'s Snapdragon</strong>\' that forms the central part of the phone and handles all the processes and working of other hardware be it working of applications, sensors, cameras, processing multimedia, graphics, connectivity, display, etc of a smartphone.\r\n<h3>1. Processor</h3>\r\nThe processor is the brain of the smartphone. All the processes and tasks are done by processors. The speed of processor is measured in Gigahertz (GHz). The higher value of GHz means better performance. Most Android Smartphones are powered with Qualcomm\'s Snapdragron Processor be it OnePlus, Google\'s Pixel, Samsung, Xaomi, etc.\r\n<h3>2. GPU</h3>\r\nThe GPU stands for Graphics Processing Unit. It is', 'The Processor inside your Smartphone', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2017-11-29 08:57:25', '2017-11-29 14:27:25', '', 103, 'http://localhost/wordpress/103-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2017-11-29 10:08:51', '2017-11-29 15:38:51', 'Have you ever wondered which part of the your smartphone handles all the processes?. Almost all the android smartphones available today in the market uses the chip named \'<strong>Qualcomm\'s Snapdragon</strong>\' that forms the central part of the phone and handles all the processes and working of other hardware be it working of applications, sensors, cameras, processing multimedia, graphics, connectivity, display, etc of a smartphone.\r\n\r\n&nbsp;\r\n\r\nQualcomm\'s Snapdragon provides a premium processor chip which has been used by leading smartphones brands be it Google\'s Pixel, Samsung, OnePlus, LG, Motorola, Sony, Lenovo, HTC, Asus, HP, Xaomi, LeEco, etc to power their smartphones.\r\n\r\nHere is a brief description of parts of Snapdragon Chip that powers the android smartphones.\r\n\r\n<img class=\"size-medium wp-image-107 aligncenter\" src=\"http://localhost/wordpress/wp-content/uploads/2017/11/chip-300x252.png\" alt=\"\" width=\"300\" height=\"252\" />\r\n<h3>1. CPU</h3>\r\nCPU stands for Central Processing Unit. The Snapdragon uses Qualcomm\'s Kryo CPU released in 2015. Earlier it used Krait CPU and Scorpion CPU. Kryo is based on ARM-architecture. It handles the fetching and execution of the Instructions to perform various processes of a smartphone.\r\n<h3>2. GPU</h3>\r\nGPU stands for Graphics Processing Unit. Snapdragon used Qualcomm\'s Adreno GPU which is responsible graphics rendering to support real-life-quality visuals for exciting immersive experiences.\r\n<h3>3. Cellular Modem for Connectivity</h3>\r\nThis unit is responsible for high speed wireless telecommunication and internet connectivity through wifi. It consists of LTE modem and wifi hardware to connect the smartphone to mobile towers and internet points.\r\n<h3>4. Camera, Display and Multimedia Unit</h3>\r\nThe camera processor facilitates the functioning of camera by processing the image signal, the function of video recorder and the display unit is responsible for screen display according to its resolution. The multimedia unit handles the playback of audio, video, and recognition of gestures.\r\n<h3>5. Location</h3>\r\nThis units supports usage of GPS satellite system including other satellite systems in order to provide the correct location of a smartphone.\r\n<h3>6. Hexagon DSP</h3>\r\nHexagon is the brand for a family of 32-bit multi-threaded micro architectures implementing the same instruction set for a digital signal processor (DSP) developed by Qualcomm. It is designed to deliver efficiency in performance with low power over variety of applications.\r\n<h3>7. Sensor Core</h3>\r\nSnapdragon integrated sensor engine is designed to manage many different sensor types with highly efficient, custom-designed hardware and algorithms working seamlessly together, even when the mobile device is in standby.\r\n<h3>8. Security</h3>\r\nThis unit comprises of comprehensive user and device authentication with the Qualcomm Haven™ security suite, which includes a full biometric suite for fingerprint scanning, voice, iris and facial recognition.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'The Processor inside your Smartphone', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2017-11-29 10:08:51', '2017-11-29 15:38:51', '', 103, 'http://localhost/wordpress/103-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2017-11-29 09:08:11', '2017-11-29 14:38:11', '', 'chip', '', 'inherit', 'open', 'closed', '', 'chip', '', '', '2017-11-29 09:08:11', '2017-11-29 14:38:11', '', 103, 'http://localhost/wordpress/wp-content/uploads/2017/11/chip.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2017-11-29 10:13:06', '2017-11-29 15:43:06', 'Have you ever wondered which part of the your smartphone handles all the processes?. Almost all the android smartphones available today in the market uses the chip named \'<strong>Qualcomm\'s Snapdragon</strong>\' that forms the central part of the phone and handles all the processes and working of other hardware be it working of applications, sensors, cameras, processing multimedia, graphics, connectivity, display, etc of a smartphone.\n\nQualcomm\'s Snapdragon provides a premium processor chip which has been used by leading smartphones brands be it Google\'s Pixel, Samsung, OnePlus, LG, Motorola, Sony, Lenovo, HTC, Asus, HP, Xaomi, LeEco, etc to power their smartphones.\n\nHere is a brief description of parts of Snapdragon Chip that powers the android smartphones.\n\n<img class=\"size-medium wp-image-107 aligncenter\" src=\"http://localhost/wordpress/wp-content/uploads/2017/11/chip-300x252.png\" alt=\"\" width=\"300\" height=\"252\" />\n<h3>1. CPU</h3>\nCPU stands for Central Processing Unit. The Snapdragon uses Qualcomm\'s Kryo CPU released in 2015. Earlier it used Krait CPU and Scorpion CPU. Kryo is based on ARM-architecture. It handles the fetching and execution of the Instructions to perform various processes of a smartphone.\n<h3>2. GPU</h3>\nGPU stands for Graphics Processing Unit. Snapdragon used Qualcomm\'s Adreno GPU which is responsible graphics rendering to support real-life-quality visuals for exciting immersive experiences.\n<h3>3. Cellular Modem for Connectivity</h3>\nThis unit is responsible for high speed wireless telecommunication and internet connectivity through wifi. It consists of LTE modem and wifi hardware to connect the smartphone to mobile towers and internet points.\n<h3>4. Camera, Display and Multimedia Unit</h3>\nThe camera processor facilitates the functioning of camera by processing the image signal, the function of video recorder and the display unit is responsible for screen display according to its resolution. The multimedia unit handles the playback of audio, video, and recognition of gestures.\n<h3>5. Location</h3>\nThis units supports usage of GPS satellite system including other satellite systems in order to provide the correct location of a smartphone.\n<h3>6. Hexagon DSP</h3>\nHexagon is the brand for a family of 32-bit multi-threaded micro architectures implementing the same instruction set for a digital signal processor (DSP) developed by Qualcomm. It is designed to deliver efficiency in performance with low power over variety of applications.\n<h3>7. Sensor Core</h3>\nSnapdragon integrated sensor engine is designed to manage many different sensor types with highly efficient, custom-designed hardware and algorithms working seamlessly together, even when the mobile device is in standby.\n<h3>8. Security</h3>\nThis unit comprises of comprehensive user and device authentication with the Qualcomm Haven™ security suite, which includes a full biometric suite for fingerprint scanning, voice, iris and facial recognition.\n\n&nbsp;\n\n&nbsp;', 'The Processor inside your Smartphone', '', 'inherit', 'closed', 'closed', '', '103-autosave-v1', '', '', '2017-11-29 10:13:06', '2017-11-29 15:43:06', '', 103, 'http://localhost/wordpress/103-autosave-v1/', 0, 'revision', '', 0),
(110, 1, '2017-11-29 10:13:35', '2017-11-29 15:43:35', 'Have you ever wondered which part of the your smartphone handles all the processes?. Almost all the android smartphones available today in the market uses the chip named \'<strong>Qualcomm\'s Snapdragon</strong>\' that forms the central part of the phone and handles all the processes and working of other hardware be it working of applications, sensors, cameras, processing multimedia, graphics, connectivity, display, etc of a smartphone.\r\n\r\nQualcomm\'s Snapdragon provides a premium processor chip which has been used by leading smartphones brands be it Google\'s Pixel, Samsung, OnePlus, LG, Motorola, Sony, Lenovo, HTC, Asus, HP, Xaomi, LeEco, etc to power their smartphones.\r\n\r\nHere is a brief description of parts of Snapdragon Chip that powers the android smartphones.\r\n\r\n<img class=\"size-medium wp-image-107 aligncenter\" src=\"http://localhost/wordpress/wp-content/uploads/2017/11/chip-300x252.png\" alt=\"\" width=\"300\" height=\"252\" />\r\n<h3>1. CPU</h3>\r\nCPU stands for Central Processing Unit. The Snapdragon uses Qualcomm\'s Kryo CPU released in 2015. Earlier it used Krait CPU and Scorpion CPU. Kryo is based on ARM-architecture. It handles the fetching and execution of the Instructions to perform various processes of a smartphone.\r\n<h3>2. GPU</h3>\r\nGPU stands for Graphics Processing Unit. Snapdragon used Qualcomm\'s Adreno GPU which is responsible graphics rendering to support real-life-quality visuals for exciting immersive experiences.\r\n<h3>3. Cellular Modem for Connectivity</h3>\r\nThis unit is responsible for high speed wireless telecommunication and internet connectivity through wifi. It consists of LTE modem and wifi hardware to connect the smartphone to mobile towers and internet points.\r\n<h3>4. Camera, Display and Multimedia Unit</h3>\r\nThe camera processor facilitates the functioning of camera by processing the image signal, the function of video recorder and the display unit is responsible for screen display according to its resolution. The multimedia unit handles the playback of audio, video, and recognition of gestures.\r\n<h3>5. Location</h3>\r\nThis units supports usage of GPS satellite system including other satellite systems in order to provide the correct location of a smartphone.\r\n<h3>6. Hexagon DSP</h3>\r\nHexagon is the brand for a family of 32-bit multi-threaded micro architectures implementing the same instruction set for a digital signal processor (DSP) developed by Qualcomm. It is designed to deliver efficiency in performance with low power over variety of applications.\r\n<h3>7. Sensor Core</h3>\r\nSnapdragon integrated sensor engine is designed to manage many different sensor types with highly efficient, custom-designed hardware and algorithms working seamlessly together, even when the mobile device is in standby.\r\n<h3>8. Security</h3>\r\nThis unit comprises of comprehensive user and device authentication with the Qualcomm Haven™ security suite, which includes a full biometric suite for fingerprint scanning, voice, iris and facial recognition.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'The Processor inside your Smartphone', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2017-11-29 10:13:35', '2017-11-29 15:43:35', '', 103, 'http://localhost/wordpress/103-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2017-11-29 10:32:53', '2017-11-29 16:02:53', 'Linux is an Open-Source Operating System just like other operating systems such as Windows 7, Windows 8, Windows 10 or Mac OS X. An Operating System is basically a system software that manages the hardware resources associated with your computer. All the other application software is dependent on the operating system.\r\n<blockquote>When you order printer to take print outs, just by giving few clicks, it is operating system of your computer which interacts with you and your printer.</blockquote>\r\nThe main and basic component on which an operating system is built is called Kernal.\r\n\r\nThe kernel is the part of the Operating System that interacts directly with the hardware of computer ,through device drivers that are built into the kernel. It provides set of services that can be used by softwares insulating it from the underlying hardware. When user-end applications are added along with kernal the whole package becomes an Operating System.\r\n<blockquote>All the popular Windows OS, say Windows XP, Vista, 7, 8 or 10 were built using Windows NT Kernal.\r\n\r\nAll the popular versions of Apple\'s Mac OS and iOS are built on XNU Kernal.\r\n\r\nAll the distros of Linux and their versions, say Ubuntu, Mint, Fedora and also Android OS be it Jelly Bean, Kitkat, Lollipop, Marshmallow or Nougat are built on Linux Kernal.</blockquote>\r\nThe operating systems which are build on Linux Kernal are Linux Operating Systems, and since Linux is open source, the Kernel is used by various expert or non-expert groups to make OS and thus wide variety of Linux distributions are available in the market.\r\n<blockquote>Linux kernal was used by Canonical ltd. to publish Ubuntu.\r\n\r\nGoogle also used Linux Kernal to produce Android.\r\n\r\nSimilarly various communities uses Linux Kernal to publish thousands of Linux distributions are are available today.</blockquote>\r\n<h3>The Features of Linux</h3>\r\nThe users might be wondering that although using Windows OS or Mac OS isn\'t giving any problems, why should they use Linux. Then here are major points needed to be considered:-\r\n<ul>\r\n 	<li>Since those operating systems are not open source, you pay for them. User\'s don\'t realize when they paid for it because while purchasing a Desktop or Laptop, the price of these OS are already included which rises the price of your computer by 85$ (Rs 5500) on an average. Since, some countries do not have strong laws against piracy, users often uses cracked version but in some countries piracy laws are strict and they have to pay to use these OS. <em>You can install </em><em>Linux on as many computers as you like without paying a cent for software or server licensing.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li>Linux are nearly immune to viruses so you dont need to purchase anti-virus, since most of the malwares, viruses or ransomewares are meant to be run on windows they won\'t work on Linux. Also Linux users community find solutions and post them on official pages so that if any issues occurs it can be solved. <em>If you are constantly battling with the viruses you must prefer switching to Linux.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li>A large part of users experience slow downs or crashes with OS and are paying for costly repairs every now and then. If you are a Linux user you may not face such problems.<em> Linux offers high security and is less vulnerable to slow downs or crashes.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li>Capabilities of Linux are much wider than other OS. If you are from technical backround, <em>you must perfer linux as it offers high customizability.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li>Linux is much better and faster in terms of speed and performance.</li>\r\n</ul>\r\n<ul>\r\n 	<li>You have access to wide variety of free premium softwares and you can also run windows applications on Linux by using WINE or Virtual Machines.</li>\r\n</ul>\r\nAs a user you will have a complete new and delightful experience with Linux OS. For new users, Ubuntu is recommended.', 'The Linux', '', 'publish', 'open', 'open', '', 'the-linux', '', '', '2017-11-29 10:32:53', '2017-11-29 16:02:53', '', 0, 'http://localhost/wordpress/?p=111', 0, 'post', '', 0),
(112, 1, '2017-11-29 10:32:40', '2017-11-29 16:02:40', '', 'linux', '', 'inherit', 'open', 'closed', '', 'linux', '', '', '2017-11-29 10:32:40', '2017-11-29 16:02:40', '', 111, 'http://localhost/wordpress/wp-content/uploads/2017/11/linux.png', 0, 'attachment', 'image/png', 0),
(113, 1, '2017-11-29 10:32:53', '2017-11-29 16:02:53', 'Linux is an Open-Source Operating System just like other operating systems such as Windows 7, Windows 8, Windows 10 or Mac OS X. An Operating System is basically a system software that manages the hardware resources associated with your computer. All the other application software is dependent on the operating system.\r\n<blockquote>When you order printer to take print outs, just by giving few clicks, it is operating system of your computer which interacts with you and your printer.</blockquote>\r\nThe main and basic component on which an operating system is built is called Kernal.\r\n\r\nThe kernel is the part of the Operating System that interacts directly with the hardware of computer ,through device drivers that are built into the kernel. It provides set of services that can be used by softwares insulating it from the underlying hardware. When user-end applications are added along with kernal the whole package becomes an Operating System.\r\n<blockquote>All the popular Windows OS, say Windows XP, Vista, 7, 8 or 10 were built using Windows NT Kernal.\r\n\r\nAll the popular versions of Apple\'s Mac OS and iOS are built on XNU Kernal.\r\n\r\nAll the distros of Linux and their versions, say Ubuntu, Mint, Fedora and also Android OS be it Jelly Bean, Kitkat, Lollipop, Marshmallow or Nougat are built on Linux Kernal.</blockquote>\r\nThe operating systems which are build on Linux Kernal are Linux Operating Systems, and since Linux is open source, the Kernel is used by various expert or non-expert groups to make OS and thus wide variety of Linux distributions are available in the market.\r\n<blockquote>Linux kernal was used by Canonical ltd. to publish Ubuntu.\r\n\r\nGoogle also used Linux Kernal to produce Android.\r\n\r\nSimilarly various communities uses Linux Kernal to publish thousands of Linux distributions are are available today.</blockquote>\r\n<h3>The Features of Linux</h3>\r\nThe users might be wondering that although using Windows OS or Mac OS isn\'t giving any problems, why should they use Linux. Then here are major points needed to be considered:-\r\n<ul>\r\n 	<li>Since those operating systems are not open source, you pay for them. User\'s don\'t realize when they paid for it because while purchasing a Desktop or Laptop, the price of these OS are already included which rises the price of your computer by 85$ (Rs 5500) on an average. Since, some countries do not have strong laws against piracy, users often uses cracked version but in some countries piracy laws are strict and they have to pay to use these OS. <em>You can install </em><em>Linux on as many computers as you like without paying a cent for software or server licensing.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li>Linux are nearly immune to viruses so you dont need to purchase anti-virus, since most of the malwares, viruses or ransomewares are meant to be run on windows they won\'t work on Linux. Also Linux users community find solutions and post them on official pages so that if any issues occurs it can be solved. <em>If you are constantly battling with the viruses you must prefer switching to Linux.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li>A large part of users experience slow downs or crashes with OS and are paying for costly repairs every now and then. If you are a Linux user you may not face such problems.<em> Linux offers high security and is less vulnerable to slow downs or crashes.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li>Capabilities of Linux are much wider than other OS. If you are from technical backround, <em>you must perfer linux as it offers high customizability.</em></li>\r\n</ul>\r\n<ul>\r\n 	<li>Linux is much better and faster in terms of speed and performance.</li>\r\n</ul>\r\n<ul>\r\n 	<li>You have access to wide variety of free premium softwares and you can also run windows applications on Linux by using WINE or Virtual Machines.</li>\r\n</ul>\r\nAs a user you will have a complete new and delightful experience with Linux OS. For new users, Ubuntu is recommended.', 'The Linux', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2017-11-29 10:32:53', '2017-11-29 16:02:53', '', 111, 'http://localhost/wordpress/111-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2017-11-29 21:46:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 21:46:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=114', 0, 'post', '', 0),
(115, 1, '2017-11-29 22:41:04', '2017-11-30 04:11:04', 'Ever wondered how actually you are connected to the Internet? Basically you pay to your Internet service providers (Jio, Airtel, Bsnl, etc) to get the data in GBs or MBs but are they the owner of Internet? Such questions are answered in this blog.\r\n\r\nSo, when you type google.com in your browser, the webpage is fetched from google server. But there must be a connection between your browser and server so that you can fetch the data. This is achieved by connection at various levels, which are distributed in 3-tiers.\r\n<h3>The Tier-3 (Local Compaies)</h3>\r\nHere at tier 3, there are local service providers which forms their networks through underground fibre-optic cables and wireless internet towers. The have their span throughout the local area or city. They are reliable on the tier-2 network providers to give you Internet access. So when you pay to local companies, such as spectranet, tikona, or mtnl, they may have borrowed services from tier-2 companies to provide you the access to Internet. They need to pay to tier-2 companies to use their network to access internet and provide data to the end users.\r\n<h3>The Tier-2 (National Companies)</h3>\r\n<h4>Companies at this tier have formed their network throughout the country by laying fiber optic cables and wireless towers all over the nation. They usually ties up with local internet providers to increase their reach and widen their network. In India, companies such as Reliance Jio, Airtel, Idea etc are tier-2 companies. The network of India is divided into 22 circles. These companies operate throughout those 22 circles to give connectivity within country. They may also provide service directly to end users thus eliminating tier-1. They pay to tier-1 companies to use their services to fetch data from international boundaries.</h4>\r\n<h3>The Tier-1 (Global Companies)</h3>\r\nHere is a figure of Internet cables laid out underwater.\r\n\r\n<img class=\"wp-image-116 size-full aligncenter\" src=\"http://localhost/wordpress/wp-content/uploads/2017/11/underwater.png\" alt=\"\" width=\"700\" height=\"450\" />\r\n\r\nThese are the global companies who have laid out physical fiber optic cables under the oceans and seas. They connect the world to the internet. India is connected to the world at Mumbai, Cochin, Chennai and Tuticorine. All of our international internet traffic goes through these port cities. The place where the international cables connect to the land is called landing stations. More than 90% of our country\'s Internet traffic comes form Tata Communications\' BKC submarine cable landing station in Mumbai. The building is highly secured.\r\n\r\nThe tier-1 companies forms the backbone of Internet and connects the world. These are AT&amp;T, Comcast, PCCW etc. They do not pay anyone and are the one who maintains the underwater cables. If these cables are cut, then a country may lose its connectivity to the Internet. Such incident have also happened in past with some countries such as Bangladesh, where cables were cut by unknown sources for unknown reasons and country suffered loss of internet connectivity for about a month.', 'The Underwater Cables of Internet', '', 'publish', 'open', 'open', '', 'the-underwater-cables-of-internet', '', '', '2017-11-29 22:41:04', '2017-11-30 04:11:04', '', 0, 'http://localhost/wordpress/?p=115', 0, 'post', '', 0),
(116, 1, '2017-11-29 22:39:30', '2017-11-30 04:09:30', '', 'underwater', '', 'inherit', 'open', 'closed', '', 'underwater', '', '', '2017-11-29 22:39:30', '2017-11-30 04:09:30', '', 115, 'http://localhost/wordpress/wp-content/uploads/2017/11/underwater.png', 0, 'attachment', 'image/png', 0),
(117, 1, '2017-11-29 22:41:04', '2017-11-30 04:11:04', 'Ever wondered how actually you are connected to the Internet? Basically you pay to your Internet service providers (Jio, Airtel, Bsnl, etc) to get the data in GBs or MBs but are they the owner of Internet? Such questions are answered in this blog.\r\n\r\nSo, when you type google.com in your browser, the webpage is fetched from google server. But there must be a connection between your browser and server so that you can fetch the data. This is achieved by connection at various levels, which are distributed in 3-tiers.\r\n<h3>The Tier-3 (Local Compaies)</h3>\r\nHere at tier 3, there are local service providers which forms their networks through underground fibre-optic cables and wireless internet towers. The have their span throughout the local area or city. They are reliable on the tier-2 network providers to give you Internet access. So when you pay to local companies, such as spectranet, tikona, or mtnl, they may have borrowed services from tier-2 companies to provide you the access to Internet. They need to pay to tier-2 companies to use their network to access internet and provide data to the end users.\r\n<h3>The Tier-2 (National Companies)</h3>\r\n<h4>Companies at this tier have formed their network throughout the country by laying fiber optic cables and wireless towers all over the nation. They usually ties up with local internet providers to increase their reach and widen their network. In India, companies such as Reliance Jio, Airtel, Idea etc are tier-2 companies. The network of India is divided into 22 circles. These companies operate throughout those 22 circles to give connectivity within country. They may also provide service directly to end users thus eliminating tier-1. They pay to tier-1 companies to use their services to fetch data from international boundaries.</h4>\r\n<h3>The Tier-1 (Global Companies)</h3>\r\nHere is a figure of Internet cables laid out underwater.\r\n\r\n<img class=\"wp-image-116 size-full aligncenter\" src=\"http://localhost/wordpress/wp-content/uploads/2017/11/underwater.png\" alt=\"\" width=\"700\" height=\"450\" />\r\n\r\nThese are the global companies who have laid out physical fiber optic cables under the oceans and seas. They connect the world to the internet. India is connected to the world at Mumbai, Cochin, Chennai and Tuticorine. All of our international internet traffic goes through these port cities. The place where the international cables connect to the land is called landing stations. More than 90% of our country\'s Internet traffic comes form Tata Communications\' BKC submarine cable landing station in Mumbai. The building is highly secured.\r\n\r\nThe tier-1 companies forms the backbone of Internet and connects the world. These are AT&amp;T, Comcast, PCCW etc. They do not pay anyone and are the one who maintains the underwater cables. If these cables are cut, then a country may lose its connectivity to the Internet. Such incident have also happened in past with some countries such as Bangladesh, where cables were cut by unknown sources for unknown reasons and country suffered loss of internet connectivity for about a month.', 'The Underwater Cables of Internet', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2017-11-29 22:41:04', '2017-11-30 04:11:04', '', 115, 'http://localhost/wordpress/115-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2017-11-30 03:48:55', '2017-11-30 09:18:55', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"archives-2\",\n                \"meta-2\",\n                \"search-2\",\n                \"text-2\",\n                \"text-3\",\n                \"text-4\",\n                \"text-5\",\n                \"categories-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\"\n            ],\n            \"sidebar-1\": [\n                \"search-7\"\n            ],\n            \"footer-one-widgets\": [],\n            \"footer-two-widgets\": [],\n            \"footer-three-widgets\": [],\n            \"sidebar-woocommerce\": [],\n            \"sidebar-top-bar\": [\n                \"nav_menu-1\"\n            ],\n            \"header-sidebar\": [],\n            \"sidebar-2\": [\n                \"text-8\"\n            ],\n            \"sidebar-3\": [\n                \"text-9\",\n                \"search-4\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 09:18:55\"\n    },\n    \"hestia::nav_menu_locations[top-bar-menu]\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 09:18:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8615e469-0e37-4a7f-9bce-fdfc7589c11f', '', '', '2017-11-30 03:48:55', '2017-11-30 09:18:55', '', 0, 'http://localhost/wordpress/8615e469-0e37-4a7f-9bce-fdfc7589c11f/', 0, 'customize_changeset', '', 0),
(119, 1, '2017-11-30 03:49:10', '2017-11-30 09:19:10', '', 'Front Page', '', 'publish', 'closed', 'closed', '', 'hestia-front', '', '', '2017-11-30 03:49:10', '2017-11-30 09:19:10', '', 0, 'http://localhost/wordpress/hestia-front/', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(120, 1, '2017-11-30 03:51:18', '2017-11-30 09:21:18', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"archives-2\",\n                \"meta-2\",\n                \"search-2\",\n                \"text-2\",\n                \"text-3\",\n                \"text-4\",\n                \"text-5\",\n                \"categories-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\"\n            ],\n            \"sidebar-1\": [\n                \"search-7\"\n            ],\n            \"footer-one-widgets\": [],\n            \"footer-two-widgets\": [],\n            \"footer-three-widgets\": [],\n            \"sidebar-woocommerce\": [],\n            \"sidebar-top-bar\": [\n                \"nav_menu-1\"\n            ],\n            \"header-sidebar\": [],\n            \"sidebar-2\": [\n                \"text-8\"\n            ],\n            \"sidebar-3\": [\n                \"text-9\",\n                \"search-4\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 09:21:18\"\n    },\n    \"tiny-hestia::nav_menu_locations[top-bar-menu]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 09:21:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3d950317-92c6-4106-bf9e-7e8cf8759c29', '', '', '2017-11-30 03:51:18', '2017-11-30 09:21:18', '', 0, 'http://localhost/wordpress/3d950317-92c6-4106-bf9e-7e8cf8759c29/', 0, 'customize_changeset', '', 0),
(121, 1, '2017-11-30 03:57:18', '2017-11-30 09:27:18', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"archives-2\",\n                \"meta-2\",\n                \"search-2\",\n                \"text-2\",\n                \"text-3\",\n                \"text-4\",\n                \"text-5\",\n                \"categories-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\"\n            ],\n            \"sidebar-1\": [\n                \"search-7\"\n            ],\n            \"footer-one-widgets\": [],\n            \"footer-two-widgets\": [],\n            \"footer-three-widgets\": [],\n            \"sidebar-woocommerce\": [],\n            \"sidebar-top-bar\": [\n                \"nav_menu-1\"\n            ],\n            \"header-sidebar\": [],\n            \"sidebar-2\": [\n                \"text-8\"\n            ],\n            \"sidebar-3\": [\n                \"text-9\",\n                \"search-4\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 09:25:59\"\n    },\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 09:27:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b5d3eab1-3101-4159-b072-2992c13da2b5', '', '', '2017-11-30 03:57:18', '2017-11-30 09:27:18', '', 0, 'http://localhost/wordpress/?p=121', 0, 'customize_changeset', '', 0),
(122, 1, '2017-11-30 04:59:39', '2017-11-30 10:29:39', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 10:27:02\"\n    },\n    \"custom_css[tiny-hestia]\": {\n        \"value\": \".main {\\n  margin-top:70px;\\n}\\n\\n.page-header {\\n\\tdisplay:none\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 10:29:02\"\n    },\n    \"nav_menu[2]\": {\n        \"value\": {\n            \"name\": \"Top Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 10:29:39\"\n    },\n    \"nav_menu_item[65]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 53,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/about/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 10:29:39\"\n    },\n    \"nav_menu_item[66]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 55,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/blog/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 10:29:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '98d9e07e-f7c4-46bf-a499-ae0939c733e8', '', '', '2017-11-30 04:59:39', '2017-11-30 10:29:39', '', 0, 'http://localhost/wordpress/?p=122', 0, 'customize_changeset', '', 0),
(124, 1, '2017-11-30 05:04:42', '2017-11-30 10:34:42', '{\n    \"tiny-hestia::hestia_page_sidebar_layout\": {\n        \"value\": \"full-width\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 10:34:42\"\n    },\n    \"tiny-hestia::hestia_blog_sidebar_layout\": {\n        \"value\": \"sidebar-right\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 10:34:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4be3f830-c7b0-46c4-82ea-fd79be1a9251', '', '', '2017-11-30 05:04:42', '2017-11-30 10:34:42', '', 0, 'http://localhost/wordpress/?p=124', 0, 'customize_changeset', '', 0),
(125, 1, '2017-11-30 05:07:43', '2017-11-30 10:37:43', '{\n    \"tiny-hestia::hestia_general_layout\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 10:35:06\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-7\",\n            \"tag_cloud-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 10:36:05\"\n    },\n    \"widget_tag_cloud[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJjb3VudCI7aTowO3M6ODoidGF4b25vbXkiO3M6ODoicG9zdF90YWciO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"707dbdb7c788af8abebf3febd14d6a54\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 10:37:06\"\n    },\n    \"tiny-hestia::nav_menu_locations[footer]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-11-30 10:37:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '96595b6b-c3a1-4cea-a3ef-f72025fe6a99', '', '', '2017-11-30 05:07:43', '2017-11-30 10:37:43', '', 0, 'http://localhost/wordpress/?p=125', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Menu', 'top-menu', 0),
(3, 'Social Links Menu', 'social-links-menu', 0),
(5, 'Socials Top Menu', 'socials-top-menu', 0),
(6, 'Qualcomm', 'qualcomm', 0),
(7, 'Snapdragon', 'snapdragon', 0),
(8, 'Processor', 'processor', 0),
(9, 'Smartphone Processor', 'smartphone-processor', 0),
(10, 'Processor', 'processor', 0),
(11, 'Linux', 'linux', 0),
(12, 'Linux', 'linux', 0),
(13, 'Kernal', 'kernal', 0),
(14, 'Operating System', 'operating-system', 0),
(15, 'Internet', 'internet', 0),
(16, 'Internet', 'internet', 0),
(17, 'Underwater Cables', 'underwater-cables', 0),
(18, 'Network', 'network', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(64, 2, 0),
(65, 2, 0),
(66, 2, 0),
(67, 2, 0),
(68, 3, 0),
(69, 3, 0),
(70, 3, 0),
(71, 3, 0),
(72, 3, 0),
(74, 5, 0),
(111, 12, 0),
(103, 6, 0),
(103, 7, 0),
(103, 8, 0),
(103, 10, 0),
(111, 11, 0),
(111, 13, 0),
(111, 14, 0),
(115, 16, 0),
(115, 15, 0),
(115, 17, 0),
(115, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 5),
(5, 5, 'nav_menu', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'category', '', 0, 0),
(10, 10, 'category', '', 0, 1),
(11, 11, 'category', '', 0, 1),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'post_tag', '', 0, 1),
(14, 14, 'post_tag', '', 0, 1),
(15, 15, 'category', '', 0, 1),
(16, 16, 'post_tag', '', 0, 1),
(17, 17, 'post_tag', '', 0, 1),
(18, 18, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"fbcf9150dae7fa18e0cf7fb38fb9c6eb15022fb9d3936c43ed71d0d1eaf88999\";a:4:{s:10:\"expiration\";i:1512031275;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1511858475;}s:64:\"a9ce9bd4a5395be2ca76a323d0b70afdc30e427ac0ad1d98e29a57664c191692\";a:4:{s:10:\"expiration\";i:1512184584;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512011784;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&post_dfw=off'),
(20, 1, 'wp_user-settings-time', '1511859794'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Hardik', '$P$BO3wdPaxRsaV6gZx7FwSTtVTkFuzyy/', 'hardik', 'hardikpanchal551@gmail.com', '', '2017-11-26 08:24:00', '', 0, 'Admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
