-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 11, 2022 at 01:06 PM
-- Server version: 10.5.11-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `post_v8`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `ads_id` int(11) NOT NULL,
  `ads_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `unique_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ads_size` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ads_type` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ads_url` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ads_image_url` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ads_code` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `enable` int(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `country_code` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `coordinates` char(15) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `timezone` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comments` varchar(85) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `utc_offset` char(8) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `utc_dst_offset` char(8) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `notes` varchar(79) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('j2t2u6gbif3f7evikrafnma0sgfv19ba', '162.158.107.112', 1649678273, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383237333b),
('ejosi2igu3qesg5vul875ie32ud3ilt4', '162.158.191.191', 1649678312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383331323b),
('b1dhbhof2m4gv8v01j8n7vhfn3ga4tn2', '162.158.191.171', 1649678805, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383830353b6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6e616d657c733a31313a224469676974616c506f7374223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b61646d696e5f69735f6c6f67696e7c733a313a2231223b6c6f67696e5f747970657c733a353a2261646d696e223b6163746976655f6d656e757c733a333a22333730223b),
('samfhhe72kdim3opievgrd3r8i3ple3b', '162.158.191.197', 1649678353, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383335333b),
('66t3ac58k4ahutalrnlh12c51pa6pobo', '162.158.191.197', 1649678353, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383335333b),
('jtpdruf19ubtolfhu1a3a6oo4okdc6mb', '162.158.191.209', 1649678353, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383335333b),
('hf07h04ssduipbicp4606ndpoen9k8q6', '162.158.191.209', 1649678358, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383335383b),
('94tqtril6f1ti78nr050pg2limp6e8ea', '162.158.191.197', 1649678358, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383335383b),
('bh2ms9a2jgseouesni8tracc905eh5vr', '162.158.191.209', 1649678360, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383336303b),
('cpfcop2v04l0mc61gfjd5um7jlrq7vos', '162.158.191.197', 1649678363, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383336333b),
('l17ngii4q7na38lhc4sgpglh5db84c6s', '162.158.191.209', 1649678363, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383336333b),
('sa1gh1u7p0tvog06c0raob2pf0fk9cjd', '162.158.191.209', 1649678385, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383338353b),
('g9s0ds363ari8lnvv4a7g3qbi46jobvj', '162.158.191.209', 1649678394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383339343b),
('tmavtg77rsr4ae7b7tij0eaofv9hvk9s', '162.158.191.197', 1649678424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383432343b),
('vhp35cpnqlrkrhvccdoa4rhslosh59t7', '162.158.191.209', 1649678425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383432343b),
('008kdqnqhhh3fdqdmvg5jj2544qj9d5m', '162.158.191.171', 1649678794, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383739343b),
('qlmdd2q96gibrlcu6i9b60vrd1gale23', '162.158.191.171', 1649678794, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383739343b),
('s6d42aojo1qnq9c18g9vupnj40u9iigh', '162.158.191.209', 1649678795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383739353b),
('98h1lgulecq77a30oi4kq278crue18p8', '162.158.191.209', 1649680021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638303032313b6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6e616d657c733a31313a224469676974616c506f7374223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b61646d696e5f69735f6c6f67696e7c733a313a2231223b6c6f67696e5f747970657c733a353a2261646d696e223b6163746976655f6d656e757c733a323a223330223b),
('c51fupqj5egbv9laeo4q678umb73akbm', '162.158.191.209', 1649678842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383834323b),
('eik045cv659cl1nk0fsja5jvgt96eb9l', '162.158.191.209', 1649678857, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383835373b),
('ol6sp6ulv9iph4otovcrpvoo3i820qtv', '162.158.191.209', 1649678857, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383835373b),
('j05vfbn2cnocc34rojdgspb4a3ulhl92', '162.158.191.209', 1649678858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383835383b),
('jggc5um36u2gh3moan0620uhg89spm8g', '162.158.191.171', 1649678858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383835383b),
('54o4nnb9qs6g59dirhmf49te2ved35ee', '162.158.191.171', 1649678872, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383837323b),
('67ivkhovkuk338q8eg6qlqstg2i29cct', '162.158.191.209', 1649678872, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383837323b),
('vvpv4as6othammmplrcfip2g6cgb3v7t', '162.158.191.209', 1649678890, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383839303b),
('nhtp74dk0t888temi08f83fkf4e28pqv', '162.158.191.171', 1649678892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383839323b),
('183l1ss19ft6l34n81kdmktbl4is9qs6', '162.158.191.209', 1649678892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383839323b),
('2lb82vfetsi0cc1neq45v52a12lf8og9', '162.158.191.209', 1649678947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383934373b),
('nd3u4703qmfeaikp1k0a9i9nke0khk98', '162.158.191.197', 1649678959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383935393b),
('r3m47l14adbppm5oqal210c1tn3vvi1u', '162.158.191.171', 1649678977, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383937373b),
('hcfvn26etud9uk312e7lt1cv5v401bbb', '162.158.191.209', 1649678977, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637383937373b),
('21lcqhe05b6smdune5p1rvthqhpsf4uo', '162.158.191.171', 1649680749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638303734393b6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6e616d657c733a31313a224469676974616c506f7374223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b61646d696e5f69735f6c6f67696e7c733a313a2231223b6c6f67696e5f747970657c733a353a2261646d696e223b6163746976655f6d656e757c733a323a223330223b),
('292enbpm9cqfnac55rcqsj86dg42ktft', '162.158.191.209', 1649680159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638303135393b),
('cfhrs67l794dpf4gq07vtgnrv8l8dlsm', '162.158.191.197', 1649681085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313038353b6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6e616d657c733a31313a224469676974616c506f7374223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b61646d696e5f69735f6c6f67696e7c733a313a2231223b6c6f67696e5f747970657c733a353a2261646d696e223b6163746976655f6d656e757c733a333a22333731223b),
('qip9f01uvaeugo0k7bpg2v22er28215n', '162.158.191.171', 1649680760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638303736303b),
('prln0nnsrsqgmns4kh7s7u0ij91rt600', '162.158.191.209', 1649680760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638303736303b),
('ov4cbdh96k8bpc7a99g6qhg6bot6fhvl', '162.158.191.191', 1649681402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313430323b6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6e616d657c733a31313a224469676974616c506f7374223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b61646d696e5f69735f6c6f67696e7c733a313a2231223b6c6f67696e5f747970657c733a353a2261646d696e223b6163746976655f6d656e757c733a333a22333731223b),
('890358naakg2tlliclmm80ahuavhqvja', '162.158.191.191', 1649681366, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313336323b),
('ie36rv3ggg0bs19tkma5kikdv2vbgffm', '162.158.191.197', 1649681486, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313438363b),
('gjhip0232acchj8oje1q0ahvo1djq3rk', '162.158.191.171', 1649681647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313634373b),
('2v5vs8r6htu9ij739m6nakpq2e0sqpcf', '162.158.191.191', 1649681868, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313836383b),
('3i2pl55e9p8st842gm2hl8du8bcvm1au', '162.158.191.171', 1649682016, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313836383b6c6f67696e5f7374617475737c733a313a2231223b757365725f69647c733a313a2231223b6e616d657c733a31393a22466573746976616c4272616e64696e67417070223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b61646d696e5f69735f6c6f67696e7c733a313a2231223b6c6f67696e5f747970657c733a353a2261646d696e223b6163746976655f6d656e757c733a313a2231223b),
('43jhk4av3akpl3a46jud1k7p78bo8kie', '162.158.191.191', 1649681897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313839373b),
('s8t7ts5b8bmppun9587rjhqb849qccba', '162.158.191.209', 1649681897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313839373b),
('5r3ouva8avjtp6k84nmb0vb982f03kvp', '162.158.191.171', 1649681955, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313935353b),
('b2sv0fm6ka3qp6u2jn349tfom9m68nd3', '162.158.191.197', 1649681960, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313936303b),
('8thr7rdjrcaj5s720aiu47l4kopf96t4', '162.158.191.197', 1649681960, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313936303b),
('v9u9legprj3tsoiko2us8sb36k1sfhgb', '162.158.191.171', 1649681964, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313936343b),
('t3b9tbnojef5oesa6c6ciatrtin0flh1', '162.158.191.197', 1649681971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313937313b),
('e1sagjf14gb7mhd2sdc2vdb33rtpmpbb', '162.158.191.171', 1649681973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313937333b),
('g8f675bit0ifckjp9t4imj4ij6p46b2q', '162.158.191.197', 1649681978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313937383b),
('g97bu5h8gfns12d68nul08vgufbs56lr', '162.158.191.209', 1649681980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313938303b),
('1vltfjht82bvl444c6ahn2dpdt5jk9ag', '162.158.191.197', 1649681982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313938323b),
('05k8t7r1ll3rlnch171anrd0ccrlcp98', '162.158.191.197', 1649681982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313938323b),
('4haos39mfukjnuktmans30m9m6bberec', '162.158.191.171', 1649681982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313938323b),
('vm4ngkrj37f2n0q33ilji2o0d67k907r', '162.158.191.171', 1649681985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313938353b),
('0ibt6m2ffhe7fcd5ml09fsqdcl2h9bsi', '162.158.191.209', 1649681986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313938363b),
('7k41bk117pres8ses66lh001taf3e2f4', '162.158.191.171', 1649681991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313939313b),
('f17vbe9nj6la053pvme34ugehvu87123', '162.158.191.209', 1649681993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313939333b),
('lau3chno46n4ia4ocu7agg55jkc24a4a', '162.158.191.197', 1649681995, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313939353b),
('fpa5flob2df358klpa64sj248d66n3bu', '162.158.191.197', 1649681995, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313939353b),
('h6gkro0a0na9ipt085m4sq4laulfhujm', '162.158.191.171', 1649681995, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638313939353b);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comments_id` int(20) NOT NULL,
  `user_id` int(10) NOT NULL,
  `video_id` int(20) NOT NULL,
  `comment_type` int(5) NOT NULL DEFAULT 1,
  `replay_for` int(10) DEFAULT 0,
  `comment` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `comment_at` datetime DEFAULT NULL,
  `publication` int(5) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`config_id`, `title`, `value`) VALUES
(194, 'system_name', 'DigitalPost'),
(195, 'site_name', 'DigitalPost'),
(196, 'business_address', 'https://codecanyon.net/user/infiapp'),
(197, 'business_phone', ''),
(198, 'contact_email', ''),
(199, 'system_email', ''),
(200, 'system_short_name', 'INFIMOVIES'),
(201, 'slider_type', 'image'),
(202, 'slide_per_page', 'true'),
(203, 'protocol', 'mail'),
(204, 'mailpath', '/usr/bin/sendmail'),
(205, 'smtp_host', 'smtp.gmail.com'),
(206, 'smtp_user', 'email@gmail.com'),
(207, 'smtp_pass', ''),
(208, 'smtp_port', '465'),
(209, 'smtp_crypto', 'ssl'),
(210, 'comments_approval', '1'),
(211, 'movie_per_page', '72'),
(212, 'purchase_code', 'item_purchase_code'),
(213, 'push_notification_enable', ''),
(214, 'onesignal_appid', '4de1d035-8ff4-44d8-8e15-910c010e5856'),
(215, 'onesignal_api_keys', 'MzE3ZmM0NjItMWQ1Mi00ZjgzLThjY2EtZWMwNjczNWFjZmY1'),
(216, 'mobile_apps_api_secret_key', 'obnssaewl1ynsbkwtw1e78hp'),
(217, 'cron_key', 'owoail0wgdnggg7muj4w5kic'),
(218, 'db_backup', '1'),
(219, 'backup_schedule', '30'),
(220, 'version', '1.0.0'),
(221, 'terms', '<p></p>\r\n    \r\n    \r\n      <meta charset=\"utf-8\">\r\n      <meta name=\"viewport\" content=\"width=device-width\">\r\n      <title>Privacy Policy</title>\r\n      <style> body { font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; padding:1em; } </style>\r\n    \r\n    \r\n    <strong>Privacy Policy</strong> <p>\r\n                  Infimovies built the Infimovies app as\r\n                  an Ad Supported app. This SERVICE is provided by\r\n                  Infimovies  at no cost and is intended for use as\r\n                  is.\r\n                </p> <p>\r\n                  This page is used to inform visitors regarding our\r\n                  policies with the collection, use, and disclosure of Personal\r\n                  Information if anyone decided to use our Service.\r\n                </p> <p>\r\n                  If you choose to use our Service, then you agree to\r\n                  the collection and use of information in relation to this\r\n                  policy. The Personal Information that we collect is\r\n                  used for providing and improving the Service. We will not use or share your information with\r\n                  anyone except as described in this Privacy Policy.\r\n                </p> <p>\r\n                  The terms used in this Privacy Policy have the same meanings\r\n                  as in our Terms and Conditions, which is accessible at\r\n                  Infimovies unless otherwise defined in this Privacy Policy.\r\n                </p> <p><strong>Information Collection and Use</strong></p> <p>\r\n                  For a better experience, while using our Service, we\r\n                  may require you to provide us with certain personally\r\n                  identifiable information. The information that\r\n                  we request will be retained by us and used as described in this privacy policy.\r\n                </p> <div><p>\r\n                    The app does use third party services that may collect\r\n                    information used to identify you.\r\n                  </p> <p>\r\n                    Link to privacy policy of third party service providers used\r\n                    by the app\r\n                  </p> <ul><li><a href=\"https://www.google.com/policies/privacy/\" target=\"_blank\" rel=\"noopener noreferrer\">Google Play Services</a></li><li><a href=\"https://support.google.com/admob/answer/6128543?hl=en\" target=\"_blank\" rel=\"noopener noreferrer\">AdMob</a></li><li><a href=\"https://firebase.google.com/policies/analytics\" target=\"_blank\" rel=\"noopener noreferrer\">Google Analytics for Firebase</a></li><li><a href=\"https://firebase.google.com/support/privacy/\" target=\"_blank\" rel=\"noopener noreferrer\">Firebase Crashlytics</a></li><li><a href=\"https://www.facebook.com/about/privacy/update/printable\" target=\"_blank\" rel=\"noopener noreferrer\">Facebook</a></li><li><a href=\"https://policies.google.com/privacy\" target=\"_blank\" rel=\"noopener noreferrer\">Fabric</a></li><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----></ul></div> <p><strong>Log Data</strong></p> <p>\r\n                  We want to inform you that whenever you\r\n                  use our Service, in a case of an error in the app\r\n                  we collect data and information (through third party\r\n                  products) on your phone called Log Data. This Log Data may\r\n                  include information such as your device Internet Protocol\r\n                  (“IP”) address, device name, operating system version, the\r\n                  configuration of the app when utilizing our Service,\r\n                  the time and date of your use of the Service, and other\r\n                  statistics.\r\n                </p> <p><strong>Cookies</strong></p> <p>\r\n                  Cookies are files with a small amount of data that are\r\n                  commonly used as anonymous unique identifiers. These are sent\r\n                  to your browser from the websites that you visit and are\r\n                  stored on your device\'s internal memory.\r\n                </p>  <p> This Service does not use these “cookies” explicitly. However,\r\n                  the app may use third party code and libraries that use\r\n                  “cookies” to collect information and improve their services.\r\n                  You have the option to either accept or refuse these cookies\r\n                  and know when a cookie is being sent to your device. If you\r\n                  choose to refuse our cookies, you may not be able to use some\r\n                  portions of this Service.\r\n                </p> <p><strong>Service Providers</strong></p> <p>\r\n                  We may employ third-party companies and\r\n                  individuals due to the following reasons:\r\n                </p> <ul><li>To facilitate our Service;</li> <li>To provide the Service on our behalf;</li> <li>To perform Service-related services; or</li> <li>To assist us in analyzing how our Service is used.</li></ul> <p>\r\n                  We want to inform users of this Service\r\n                  that these third parties have access to your Personal\r\n                  Information. The reason is to perform the tasks assigned to\r\n                  them on our behalf. However, they are obligated not to\r\n                  disclose or use the information for any other purpose.\r\n                </p> <p><strong>Security</strong></p> <p>\r\n                  We value your trust in providing us your\r\n                  Personal Information, thus we are striving to use commercially\r\n                  acceptable means of protecting it. But remember that no method\r\n                  of transmission over the internet, or method of electronic\r\n                  storage is 100% secure and reliable, and we cannot\r\n                  guarantee its absolute security.\r\n                </p> <p><strong>Links to Other Sites</strong></p> <p>\r\n                  This Service may contain links to other sites. If you click on\r\n                  a third-party link, you will be directed to that site. Note\r\n                  that these external sites are not operated by us.\r\n                  Therefore, we strongly advise you to review the\r\n                  Privacy Policy of these websites. We have\r\n                  no control over and assume no responsibility for the content,\r\n                  privacy policies, or practices of any third-party sites or\r\n                  services.\r\n                </p> <p><strong>Children’s Privacy</strong></p> <p>\r\n                  These Services do not address anyone under the age of 13.\r\n                  We do not knowingly collect personally\r\n                  identifiable information from children under 13. In the case\r\n                  we discover that a child under 13 has provided\r\n                  us with personal information, we immediately\r\n                  delete this from our servers. If you are a parent or guardian\r\n                  and you are aware that your child has provided us with\r\n                  personal information, please contact us so that\r\n                  we will be able to do necessary actions.\r\n                </p> <p><strong>Changes to This Privacy Policy</strong></p> <p>\r\n                  We may update our Privacy Policy from\r\n                  time to time. Thus, you are advised to review this page\r\n                  periodically for any changes. We will\r\n                  notify you of any changes by posting the new Privacy Policy on\r\n                  this page.\r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                </p> <p></p> <p><strong>Disclaimer </strong></p> <p>\r\n                  All the content (Music &amp; Images) in this &amp; All the copyright material credit goes to their Respected Owner ,We have Just Provided a platform to you. If you have any issue regarding this app or Content(Music &amp; Images) than you can contact at infiappsolution@gmail.com.\r\n                </p> <p>\r\n                 \r\n                  <a href=\"http://infimovies.flickapp9.com/\" target=\"_blank\" rel=\"noopener noreferrer\">privacypolicytemplate.net</a>\r\n                  and modified/generated by</p>\r\n\r\n<a href=\"http://infimovies.flickapp9.com/\" target=\"_blank\" rel=\"noopener noreferrer\">App Privacy Policy Generator</a><p></p>   \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                <p></p> <p>This policy is effective as of 2020-10-28</p> <p><strong>Contact Us</strong></p> <p>\r\n                  If you have any questions or suggestions about our\r\n                  Privacy Policy, do not hesitate to contact us at infiappsolution@gmail.com</p> <p>\r\n                  This privacy policy page was created at\r\n                  <a href=\"http://infimovies.flickapp9.com/\" target=\"_blank\" rel=\"noopener noreferrer\">privacypolicytemplate.net</a>\r\n                  and modified/generated by\r\n                  <a href=\"http://infimovies.flickapp9.com/\" target=\"_blank\" rel=\"noopener noreferrer\">App Privacy Policy Generator</a></p>\r\n    \r\n    <style> body { font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; padding:1em; } </style>'),
(222, 'total_movie_in_slider', '13'),
(223, 'preroll_ads_enable', '0'),
(224, 'preroll_ads_video', ''),
(225, 'admob_ads_enable', '1'),
(226, 'admob_publisher_id', ''),
(227, 'admob_app_id', 'ca-app-pub-3940256099942544/3419835294'),
(228, 'admob_banner_ads_id', 'ca-app-pub-3940256099942544/6300978111'),
(229, 'admob_interstitial_ads_id', 'ca-app-pub-3940256099942544/1033173712'),
(230, 'app_menu', 'vertical'),
(231, 'app_program_guide_enable', 'false'),
(232, 'app_mandatory_login', 'false'),
(233, 'genre_visible', 'true'),
(234, 'country_visible', 'false'),
(235, 'trial_enable', '1'),
(236, 'trial_period', '7'),
(237, 'paypal_email', 'ajitvaghasiya2665@gmail.com'),
(238, 'currency_symbol', 'Rs'),
(239, 'stripe_publishable_key', 'pk_live_51HmapiHgEaO5IREdiuAUH3FK4OloewWPcSpGseaAxKkkrsXolKYlWZ6LwhSuiNWo00nSNrDsH93JBmKHkLddk4Av00oewL1Ni3'),
(240, 'stripe_secret_key', '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'),
(241, 'currency', 'INR'),
(256, 'program_guide_enable', '1'),
(242, 'mobile_ads_enable', '0'),
(243, 'mobile_ads_network', 'admob'),
(244, 'fan_native_ads_placement_id', 'ca-app-pub-3940256099942544/2247696110'),
(245, 'fan_banner_ads_placement_id', '1'),
(246, 'fan_Interstitial_ads_placement_id', ''),
(247, 'startapp_app_id', ''),
(248, 'paypal_client_id', 'EJ9REDlyc1xLZ0T3huUnIG3M82Afy6r0UNR_rrLeUHZoIzvfICZZeYsAZW0oEZNA9MkhMIZcbhkuJ1m_'),
(249, 'exchange_rate_update_by_cron', '1'),
(250, 'enable_ribbon', '1'),
(251, 'apk_version_code', '1'),
(252, 'apk_version_name', 'v1.1'),
(253, 'apk_whats_new', 'New Release\r\nNote : If conflict with package name than please uninstall existing apk and download and install from this site  \r\nhttp://flickapp9.com/'),
(254, 'latest_apk_url', '1'),
(257, 'apk_update_is_skipable', '1'),
(258, 'season_order', 'DESC'),
(259, 'episode_order', 'ASC'),
(260, 'video_file_order', 'ASC'),
(261, 'video_source', 'video_source'),
(262, 'razorpay_key_id', 'rzp_live_ZTHmPOLaOb0iex'),
(263, 'razorpay_key_secret', 'E7AoHBB35Kb6evFojTNF8u22'),
(264, 'paypal_enable', 'false'),
(265, 'stripe_enable', 'false'),
(266, 'razorpay_enable', 'true'),
(267, 'razorpay_inr_exchange_rate', '1'),
(268, 'timezone', 'timezone'),
(269, 'meta_description', 'meta_description'),
(270, 'focus_keyword', 'focus_keyword'),
(271, 'author', 'author'),
(272, 'front_end_theme', 'front_end_theme'),
(273, 'dark_theme', 'dark_theme'),
(274, 'google_analytics_id', 'google_analytics_id'),
(275, 'footer_templete', 'footer_templete'),
(276, 'social_share_enable', 'social_share_enable'),
(277, 'recaptcha_enable', 'recaptcha_enable'),
(278, 'favicon', 'favicon'),
(279, 'active_language_id', 'active_language_id'),
(280, 'header_templete', 'header_templete'),
(281, 'registration_enable', 'registration_enable'),
(282, 'frontend_login_enable', 'frontend_login_enable'),
(283, 'country_to_primary_menu', 'country_to_primary_menu'),
(284, 'genre_to_primary_menu', 'genre_to_primary_menu'),
(285, 'release_to_primary_menu', 'release_to_primary_menu'),
(286, 'contact_to_primary_menu', 'contact_to_primary_menu'),
(287, 'privacy_policy_to_primary_menu', 'privacy_policy_to_primary_menu'),
(288, 'dmca_to_primary_menu', 'dmca_to_primary_menu'),
(289, 'az_to_primary_menu', 'az_to_primary_menu'),
(290, 'az_to_footer_menu', 'az_to_footer_menu'),
(291, 'movie_request_enable', 'movie_request_enable'),
(292, 'facebook_url', 'facebook_url'),
(293, 'twitter_url', 'twitter_url'),
(294, 'vimeo_url', 'vimeo_url'),
(295, 'linkedin_url', 'linkedin_url'),
(296, 'youtube_url', 'youtube_url'),
(297, 'slider_fullwide', 'slider_fullwide'),
(298, 'slider_height', 'slider_height'),
(299, 'slider_border_radius', 'slider_border_radius'),
(300, 'slider_arrow', 'slider_arrow'),
(301, 'slider_bullet', 'slider_bullet'),
(302, 'dialer_code', '4589'),
(303, 'original_code', '4589'),
(304, 'comparable_code', '4589');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `publication` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cron`
--

CREATE TABLE `cron` (
  `cron_id` int(11) NOT NULL,
  `type` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `save_to` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `videos_id` int(250) DEFAULT NULL,
  `admin_email_from` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `admin_email` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email_to` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email_sub` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `currency` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `iso_code` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `symbol` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `default` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES
(1, 'Albania', 'Leke', 'ALL', 'Lek', 1, 0, 1),
(2, 'America', 'Dollars', 'USD', '$', 1, 0, 1),
(3, 'Afghanistan', 'Afghanis', 'AFN', '؋', 1, 0, 1),
(4, 'Argentina', 'Pesos', 'ARS', '$', 61.399228, 0, 1),
(5, 'Aruba', 'Guilders', 'AWG', 'ƒ', 1, 0, 1),
(6, 'Australia', 'Dollars', 'AUD', '$', 1.4882, 0, 1),
(7, 'Azerbaijan', 'New Manats', 'AZN', 'ман', 1, 0, 1),
(8, 'Bahamas', 'Dollars', 'BSD', '$', 1, 0, 1),
(9, 'Barbados', 'Dollars', 'BBD', '$', 1, 0, 1),
(10, 'Belarus', 'Rubles', 'BYR', 'p.', 1, 0, 1),
(11, 'Belgium', 'Euro', 'EUR', '€', 73, 0, 1),
(12, 'Beliz', 'Dollars', 'BZD', 'BZ$', 1, 0, 1),
(13, 'Bermuda', 'Dollars', 'BMD', '$', 1, 0, 1),
(14, 'Bolivia', 'Bolivianos', 'BOB', '$b', 1, 0, 1),
(15, 'Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM', 1, 0, 1),
(16, 'Botswana', 'Pula', 'BWP', 'P', 1, 0, 1),
(17, 'Bulgaria', 'Leva', 'BGN', 'лв', 1.803753, 0, 1),
(18, 'Brazil', 'Reais', 'BRL', 'R$', 4.330496, 0, 1),
(19, 'Britain (United Kingdom)', 'Pounds', 'GBP', '£', 83, 0, 1),
(20, 'Brunei Darussalam', 'Dollars', 'BND', '$', 1, 0, 1),
(21, 'Cambodia', 'Riels', 'KHR', '៛', 1, 0, 1),
(22, 'Canada', 'Dollars', 'CAD', '$', 1.325097, 0, 1),
(23, 'Cayman Islands', 'Dollars', 'KYD', '$', 1, 0, 1),
(24, 'Chile', 'Pesos', 'CLP', '$', 794.622928, 0, 1),
(25, 'China', 'Yuan Renminbi', 'CNY', '¥', 6.984162, 0, 1),
(26, 'Colombia', 'Pesos', 'COP', '$', 3313, 0, 1),
(27, 'Costa Rica', 'Colón', 'CRC', '₡', 1, 0, 1),
(28, 'Croatia', 'Kuna', 'HRK', 'kn', 6.869981, 0, 1),
(29, 'Cuba', 'Pesos', 'CUP', '₱', 1, 0, 1),
(30, 'Cyprus', 'Euro', 'EUR', '€', 73, 0, 1),
(31, 'Czech Republic', 'Koruny', 'CZK', 'Kč', 22.911451, 0, 1),
(32, 'Denmark', 'Kroner', 'DKK', 'kr', 6.890187, 0, 1),
(33, 'Dominican Republic', 'Pesos', 'DOP ', 'RD$', 53.507402, 0, 1),
(34, 'East Caribbean', 'Dollars', 'XCD', '$', 1, 0, 1),
(35, 'Egypt', 'Pounds', 'EGP', '£', 15.61815, 0, 1),
(36, 'El Salvador', 'Colones', 'SVC', '$', 1, 0, 1),
(37, 'England (United Kingdom)', 'Pounds', 'GBP', '£', 83, 0, 1),
(38, 'Euro', 'Euro', 'EUR', '€', 73, 0, 1),
(39, 'Falkland Islands', 'Pounds', 'FKP', '£', 1, 0, 1),
(40, 'Fiji', 'Dollars', 'FJD', '$', 2.195918, 0, 1),
(41, 'France', 'Euro', 'EUR', '€', 73, 0, 1),
(42, 'Ghana', 'Cedis', 'GHC', '¢', 1, 0, 1),
(43, 'Gibraltar', 'Pounds', 'GIP', '£', 1, 0, 1),
(44, 'Greece', 'Euro', 'EUR', '€', 73, 0, 1),
(45, 'Guatemala', 'Quetzales', 'GTQ', 'Q', 7.63804, 0, 1),
(46, 'Guernsey', 'Pounds', 'GGP', '£', 1, 0, 1),
(47, 'Guyana', 'Dollars', 'GYD', '$', 1, 0, 1),
(48, 'Holland (Netherlands)', 'Euro', 'EUR', '€', 73, 0, 1),
(49, 'Honduras', 'Lempiras', 'HNL', 'L', 1, 0, 1),
(50, 'Hong Kong', 'Dollars', 'HKD', '$', 7.767071, 0, 1),
(51, 'Hungary', 'Forint', 'HUF', 'Ft', 310.231043, 0, 1),
(52, 'Iceland', 'Kronur', 'ISK', 'kr', 126.858376, 0, 1),
(53, 'India', 'Rupees', 'INR', 'Rp', 73, 0, 1),
(54, 'Indonesia', 'Rupiahs', 'IDR', 'Rp', 13612.651679, 0, 1),
(55, 'Iran', 'Rials', 'IRR', '﷼', 1, 0, 1),
(56, 'Ireland', 'Euro', 'EUR', '€', 73, 0, 1),
(57, 'Isle of Man', 'Pounds', 'IMP', '£', 1, 0, 1),
(58, 'Israel', 'New Shekels', 'ILS', '₪', 3.427408, 0, 1),
(59, 'Italy', 'Euro', 'EUR', '€', 73, 0, 1),
(60, 'Jamaica', 'Dollars', 'JMD', 'J$', 1, 0, 1),
(61, 'Japan', 'Yen', 'JPY', '¥', 109.814254, 0, 1),
(62, 'Jersey', 'Pounds', 'JEP', '£', 1, 0, 1),
(63, 'Kazakhstan', 'Tenge', 'KZT', 'лв', 376.834123, 0, 1),
(64, 'Korea (North)', 'Won', 'KPW', '₩', 1, 0, 1),
(65, 'Korea (South)', 'Won', 'KRW', '₩', 1183.94149, 0, 1),
(66, 'Kyrgyzstan', 'Soms', 'KGS', 'лв', 1, 0, 1),
(67, 'Laos', 'Kips', 'LAK', '₭', 1, 0, 1),
(68, 'Latvia', 'Lati', 'LVL', 'Ls', 1, 0, 1),
(69, 'Lebanon', 'Pounds', 'LBP', '£', 1, 0, 1),
(70, 'Liberia', 'Dollars', 'LRD', '$', 1, 0, 1),
(71, 'Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF', 0.980752, 0, 1),
(72, 'Lithuania', 'Litai', 'LTL', 'Lt', 1, 0, 1),
(73, 'Luxembourg', 'Euro', 'EUR', '€', 73, 0, 1),
(74, 'Macedonia', 'Denars', 'MKD', 'ден', 1, 0, 1),
(75, 'Malaysia', 'Ringgits', 'MYR', 'RM', 4.139749, 0, 1),
(76, 'Malta', 'Euro', 'EUR', '€', 73, 0, 1),
(77, 'Mauritius', 'Rupees', 'MUR', '₨', 1, 0, 1),
(78, 'Mexico', 'Pesos', 'MXN', '$', 18.585695, 0, 1),
(79, 'Mongolia', 'Tugriks', 'MNT', '₮', 1, 0, 1),
(80, 'Mozambique', 'Meticais', 'MZN', 'MT', 1, 0, 1),
(81, 'Namibia', 'Dollars', 'NAD', '$', 1, 0, 1),
(82, 'Nepal', 'Rupees', 'NPR', '₨', 1, 0, 1),
(83, 'Netherlands Antilles', 'Guilders', 'ANG', 'ƒ', 1, 0, 1),
(84, 'Netherlands', 'Euro', 'EUR', '€', 73, 0, 1),
(85, 'New Zealand', 'Dollars', 'NZD', '$', 1.553574, 0, 1),
(86, 'Nicaragua', 'Cordobas', 'NIO', 'C$', 1, 0, 1),
(87, 'Nigeria', 'Nairas', 'NGN', '₦', 1, 0, 1),
(88, 'North Korea', 'Won', 'KPW', '₩', 1, 0, 1),
(89, 'Norway', 'Krone', 'NOK', 'kr', 9.253793, 0, 1),
(90, 'Oman', 'Rials', 'OMR', '﷼', 1, 0, 1),
(91, 'Pakistan', 'Rupees', 'PKR', '₨', 154.392233, 0, 1),
(92, 'Panama', 'Balboa', 'PAB', 'B/.', 1, 0, 1),
(93, 'Paraguay', 'Guarani', 'PYG', 'Gs', 6626, 0, 1),
(94, 'Peru', 'Nuevos Soles', 'PEN', 'S/.', 3.383275, 0, 1),
(95, 'Philippines', 'Pesos', 'PHP', 'Php', 50.525693, 0, 1),
(96, 'Poland', 'Zlotych', 'PLN', 'zł', 3.917289, 0, 1),
(97, 'Qatar', 'Rials', 'QAR', '﷼', 1, 0, 1),
(98, 'Romania', 'New Lei', 'RON', 'lei', 4.396745, 0, 1),
(99, 'Russia', 'Rubles', 'RUB', 'руб', 63.537178, 0, 1),
(100, 'Saint Helena', 'Pounds', 'SHP', '£', 1, 0, 1),
(101, 'Saudi Arabia', 'Riyals', 'SAR', '﷼', 3.75061, 0, 1),
(102, 'Serbia', 'Dinars', 'RSD', 'Дин.', 1, 0, 1),
(103, 'Seychelles', 'Rupees', 'SCR', '₨', 1, 0, 1),
(104, 'Singapore', 'Dollars', 'SGD', '$', 1.390516, 0, 1),
(105, 'Slovenia', 'Euro', 'EUR', '€', 73, 0, 1),
(106, 'Solomon Islands', 'Dollars', 'SBD', '$', 1, 0, 1),
(107, 'Somalia', 'Shillings', 'SOS', 'S', 1, 0, 1),
(108, 'South Africa', 'Rand', 'ZAR', 'R', 14.88117, 0, 1),
(109, 'South Korea', 'Won', 'KRW', '₩', 1183.94149, 0, 1),
(110, 'Spain', 'Euro', 'EUR', '€', 73, 0, 1),
(111, 'Sri Lanka', 'Rupees', 'LKR', '₨', 1, 0, 1),
(112, 'Sweden', 'Kronor', 'SEK', 'kr', 9.694847, 0, 1),
(113, 'Switzerland', 'Francs', 'CHF', 'CHF', 0.980752, 0, 1),
(114, 'Suriname', 'Dollars', 'SRD', '$', 1, 0, 1),
(115, 'Syria', 'Pounds', 'SYP', '£', 1, 0, 1),
(116, 'Taiwan', 'New Dollars', 'TWD', 'NT$', 30.0056, 0, 1),
(117, 'Thailand', 'Baht', 'THB', '฿', 31.163295, 0, 1),
(118, 'Trinidad and Tobago', 'Dollars', 'TTD', 'TT$', 1, 0, 1),
(119, 'Turkey', 'Lira', 'TRY', 'TL', 6.053817, 0, 1),
(120, 'Turkey', 'Liras', 'TRL', '£', 1, 0, 1),
(121, 'Tuvalu', 'Dollars', 'TVD', '$', 1, 0, 1),
(122, 'Ukraine', 'Hryvnia', 'UAH', '₴', 24.336642, 0, 1),
(123, 'United Kingdom', 'Pounds', 'GBP', '£', 83, 0, 1),
(124, 'United States of America', 'Dollars', 'USD', '$', 1, 0, 1),
(125, 'Uruguay', 'Pesos', 'UYU', '$U', 37.880896, 0, 1),
(126, 'Uzbekistan', 'Sums', 'UZS', 'лв', 1, 0, 1),
(127, 'Vatican City', 'Euro', 'EUR', '€', 73, 0, 1),
(128, 'Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs', 1, 0, 1),
(129, 'Vietnam', 'Dong', 'VND', '₫', 1, 0, 1),
(130, 'Yemen', 'Rials', 'YER', '﷼', 1, 0, 1),
(131, 'Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$', 1, 0, 1),
(132, 'Bangladesh', 'Taka', 'BDT', '৳', 83, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `download_link`
--

CREATE TABLE `download_link` (
  `download_link_id` int(11) NOT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `link_title` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resolution` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '720p',
  `file_size` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '00MB',
  `download_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `in_app_download` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `episodes_id` int(11) NOT NULL,
  `stream_key` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `seasons_id` int(11) DEFAULT NULL,
  `episodes_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `file_source` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `source_type` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `file_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `last_ep_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `episodes_name1` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `episodes_name2` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `episodes_name3` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`episodes_id`, `stream_key`, `videos_id`, `seasons_id`, `episodes_name`, `file_source`, `source_type`, `file_url`, `order`, `last_ep_added`, `date_added`, `episodes_name1`, `episodes_name2`, `episodes_name3`) VALUES
(1, '0j8w5p610y9m', 1, 1, 'Christmas Demo Poster 1', NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '2022-04-09 22:06:44', 'English', 'Paid', 'Poster'),
(2, 'c3irn3aqp0wo', 1, 1, 'Christmas Demo Poster 2', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '2022-04-09 22:07:00', 'Gujarati', 'Free', 'Poster'),
(3, 's8vp4rcw61xl', 1, 1, 'Christmas Demo Poster 3', NULL, NULL, NULL, 3, '0000-00-00 00:00:00', '2022-04-09 22:07:13', 'Hindi', 'Paid', 'Poster'),
(4, 'p6uo076k2ag3', 1, 1, 'Christmas Demo Poster 4', NULL, NULL, NULL, 4, '0000-00-00 00:00:00', '2022-04-09 22:07:23', 'English', 'Paid', 'Poster'),
(5, '0ce60z7szr7g', 2, 2, 'Demo Christmas Poster', NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '2022-04-09 22:20:15', 'English', 'Paid', 'Poster'),
(6, '65y229mq4tue', 2, 2, 'Demo Christmas 2', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '2022-04-09 22:20:25', 'Gujarati', 'Paid', 'Poster'),
(7, '6vj51hvos81q', 3, 3, 'Business Poster Demo1', NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '2022-04-09 22:22:22', 'English', 'Free', 'Poster'),
(8, '198lhkpf6b8w', 3, 3, 'Business Poster Demo2', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '2022-04-09 22:22:36', 'English', 'Paid', 'Poster'),
(9, 'pro11qg70dhp', 3, 3, 'Demo Sub Video', 'mp4', 'upload', 'https://post.clarusinfosolutions.com/uploads/videos/3-3-6251c56779b97.mp4', 3, '0000-00-00 00:00:00', '2022-04-09 23:11:59', 'English', 'Paid', 'Video'),
(10, 'x27nbftyj9oi', 4, 4, 'Diwali', NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '2022-04-10 11:51:25', 'English', 'Paid', 'Poster');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `publication` int(1) NOT NULL,
  `featured` int(2) DEFAULT 1,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`, `order_id`) VALUES
(1, 'Festival Demo', 'festival demo', 'festival-demo', 1, 1, 0),
(2, 'Bsuiness Demo Cat', 'Bsuiness Demo Cat', 'bsuiness-demo-cat', 1, 1, 0),
(3, 'Festival', 'Festival', 'festival', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `label` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT 'System',
  `key` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `label`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 'Admin', '8e90d71140a94bb', 1, 0, 0, NULL, 1584340674);

-- --------------------------------------------------------

--
-- Table structure for table `languages_iso`
--

CREATE TABLE `languages_iso` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` char(49) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `iso` char(2) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language_list`
--

CREATE TABLE `language_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `short_form` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `language_code` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `folder_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `text_direction` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `language_order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `language_list`
--

INSERT INTO `language_list` (`id`, `name`, `short_form`, `language_code`, `folder_name`, `text_direction`, `status`, `language_order`) VALUES
(1, 'English', 'en', 'en_us', 'english', 'ltr', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `live_tv`
--

CREATE TABLE `live_tv` (
  `live_tv_id` int(11) NOT NULL,
  `tv_name` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `seo_title` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `live_tv_category_id` int(50) DEFAULT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT 'en',
  `stream_from` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `stream_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `stream_url` varchar(10000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `poster` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `thumbnail` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `focus_keyword` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `featured` int(2) DEFAULT 1,
  `is_paid` int(5) NOT NULL DEFAULT 1,
  `tags` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `publish` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_tv_category`
--

CREATE TABLE `live_tv_category` (
  `live_tv_category_id` int(11) NOT NULL,
  `live_tv_category` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `live_tv_category_desc` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `slug` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_tv_program_guide`
--

CREATE TABLE `live_tv_program_guide` (
  `live_tv_program_guide_id` int(11) NOT NULL,
  `live_tv_id` int(50) NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `video_url` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `type` enum('onaired','upcoming') COLLATE utf8mb4_unicode_520_ci DEFAULT 'upcoming',
  `status` int(50) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_tv_url`
--

CREATE TABLE `live_tv_url` (
  `live_tv_url_id` int(11) NOT NULL,
  `stream_key` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `live_tv_id` int(11) DEFAULT NULL,
  `url_for` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `quality` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `api_key` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `response_code` smallint(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_title` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `seo_title` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_menu` int(10) DEFAULT 0,
  `footer_menu` int(10) DEFAULT 0,
  `focus_keyword` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `publication` int(11) DEFAULT 1,
  `publish_at` datetime DEFAULT NULL,
  `deletable` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `plan_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `day` int(50) DEFAULT 0,
  `screens` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `price` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`plan_id`, `name`, `day`, `screens`, `price`, `status`) VALUES
(1, 'Free Plan', 365, 'https://post.clarusinfosolutions.com/uploads/pakage/0.jpg', '0', 1),
(2, 'Basic Plan', 90, 'https://post.clarusinfosolutions.com/uploads/pakage/Basic_Plan.jpg', '149', 1),
(3, 'Pro Plan', 180, 'https://post.clarusinfosolutions.com/uploads/pakage/0.jpg', '299', 1),
(4, 'Advance Plan', 365, 'https://post.clarusinfosolutions.com/uploads/pakage/0.jpg', '499', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `posts_id` int(11) NOT NULL,
  `post_title` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `seo_title` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `focus_keyword` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `category_id` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `image_link` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` int(20) DEFAULT 1,
  `post_at` datetime DEFAULT NULL,
  `publication` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `post_category_id` int(11) NOT NULL,
  `category` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `category_desc` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `post_comments_id` int(20) NOT NULL,
  `user_id` int(10) NOT NULL,
  `post_id` int(20) NOT NULL,
  `comment_type` int(5) NOT NULL DEFAULT 1,
  `replay_for` int(10) DEFAULT 0,
  `comment` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `comment_at` datetime DEFAULT NULL,
  `publication` int(5) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quality`
--

CREATE TABLE `quality` (
  `quality_id` int(10) NOT NULL,
  `quality` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int(5) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `quality`
--

INSERT INTO `quality` (`quality_id`, `quality`, `description`, `status`) VALUES
(2, 'SQ', 'Sandard Quality', 1),
(3, 'HQ', 'High Quality', 1),
(7, 'LQ', 'Low Quality', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(50) NOT NULL,
  `video_id` int(11) NOT NULL,
  `ip` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `rating` int(5) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rest_logins`
--

CREATE TABLE `rest_logins` (
  `id` int(11) NOT NULL,
  `username` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_logins`
--

INSERT INTO `rest_logins` (`id`, `username`, `password`, `status`) VALUES
(1, 'admin', '99372b6d1788572', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `seasons_id` int(11) NOT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `seasons_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `publish` int(11) DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`seasons_id`, `videos_id`, `seasons_name`, `publish`, `order`) VALUES
(1, 1, '2022', 1, 1),
(2, 2, '2022', 1, 1),
(3, 3, '2022', 1, 1),
(4, 4, '2022', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `video_link` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_link` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action_type` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `action_btn_text` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `action_id` int(50) DEFAULT NULL,
  `action_url` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order` int(50) NOT NULL DEFAULT 0,
  `publication` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `title`, `description`, `video_link`, `image_link`, `slug`, `action_type`, `action_btn_text`, `action_id`, `action_url`, `order`, `publication`) VALUES
(1, 'Slider Demo', 'demo slider can delete', '', 'https://post.clarusinfosolutions.com/uploads/sliders/slider-1.jpg', 'slider-demo', 'tvseries', 'Play', 1, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `star`
--

CREATE TABLE `star` (
  `star_id` int(10) NOT NULL,
  `star_type` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `star_name` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `star_desc` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `subscription_id` int(50) NOT NULL,
  `plan_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `price_amount` int(50) NOT NULL,
  `paid_amount` float NOT NULL,
  `timestamp_from` int(50) NOT NULL,
  `timestamp_to` int(50) NOT NULL,
  `payment_method` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `payment_info` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `payment_timestamp` int(50) NOT NULL,
  `recurring` int(10) NOT NULL DEFAULT 1,
  `status` int(5) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`subscription_id`, `plan_id`, `user_id`, `price_amount`, `paid_amount`, `timestamp_from`, `timestamp_to`, `payment_method`, `payment_info`, `payment_timestamp`, `recurring`, `status`) VALUES
(2, 1, 5, 0, 1, 1649571477, 1657347477, 'RazorPay', 'pay_JHYEqoEgmNNwcT', 1649571477, 1, 1),
(3, 1, 2, 0, 0, 1649615400, 1681151400, 'Cash', '', 1649649001, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subtitle`
--

CREATE TABLE `subtitle` (
  `subtitle_id` int(11) NOT NULL,
  `videos_id` int(50) NOT NULL,
  `video_file_id` int(50) DEFAULT NULL,
  `language` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `kind` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `src` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `srclang` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `common` int(2) DEFAULT 0,
  `status` int(2) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tvseries_subtitle`
--

CREATE TABLE `tvseries_subtitle` (
  `tvseries_subtitle_id` int(11) NOT NULL,
  `videos_id` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `episodes_id` int(250) DEFAULT NULL,
  `language` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `kind` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `src` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `srclang` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `common` int(2) DEFAULT 0,
  `status` int(2) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `username` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_password_set` int(5) NOT NULL DEFAULT 0 COMMENT '0 = unknown, 1=set, 2 =unset',
  `password` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gender` int(2) DEFAULT 1,
  `role` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `token` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `theme` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT 'default',
  `theme_color` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT '#16163F',
  `join_date` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `deactivate_reason` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `phone` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `dob` date DEFAULT '0000-00-00',
  `firebase_auth_uid` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `company_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `adress` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `business_type` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `website` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `slug`, `username`, `email`, `is_password_set`, `password`, `gender`, `role`, `token`, `theme`, `theme_color`, `join_date`, `last_login`, `deactivate_reason`, `status`, `phone`, `dob`, `firebase_auth_uid`, `company_name`, `adress`, `business_type`, `website`) VALUES
(1, 'FestivalBrandingApp', '', 'admin@gmail.com', 'admin@gmail.com', 0, '138989d39c10debcb0c155dd550a479a', 1, 'admin', 'e50121bb14ec1562257d5e065d2f87ef', 'default', '#16163F', NULL, '2022-04-11 18:29:00', NULL, 1, NULL, '0000-00-00', NULL, '', '', '', ''),
(2, 'Dishang', '', 'ddishang@gmail.com', 'ddishang@gmail.com', 0, 'e10adc3949ba59abbe56e057f20f883e', 1, 'subscriber', NULL, 'default', '#16163F', '2022-04-09 22:10:31', '2022-04-11 17:37:37', NULL, 1, '9427464756', '0000-00-00', NULL, 'Dishang Shah', 'Vadodara, Gujarat-390001', 'Real Estate', 'https://dishang.com'),
(3, 'Become Digital', '', '625272d5b1005', '625272d5b0fe8@mail.com', 0, '56d7e4a7d5d36f83e5b1ce36dafa6a20', 1, 'subscriber', NULL, 'default', '#16163F', '2022-04-10 11:31:57', '2022-04-10 11:39:11', NULL, 1, '00000000000', '0000-00-00', 'I6DycinbOkSKvl0Qa8R6HLSdlvp1', '', '', '', ''),
(4, 'No name set', '', '625273c035986', '625273c035979@mail.com', 0, 'fca7a60faae33a3ab310d9896eb209e0', 1, 'subscriber', NULL, 'default', '#16163F', '2022-04-10 11:35:52', '2022-04-10 11:35:52', NULL, 1, '+918490843056', '0000-00-00', 'C83gAUYaaGT2lEcdasN5NV2TTkn2', '', '', '', ''),
(5, 'No name set', '', '625274c0f1d6a', '625274c0f1d5e@mail.com', 0, '11fe0a0525a16939f6472017084b66e4', 1, 'subscriber', NULL, 'default', '#16163F', '2022-04-10 11:40:08', '2022-04-10 11:40:08', NULL, 1, '+919722527746', '0000-00-00', 'EIXbFroar3c6Owz5CJEWJV2PNaw2', 'demos', 'desghhj', 'Daily & Sweets Store', 'demomail.com');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `videos_id` int(11) NOT NULL,
  `imdbid` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `seo_title` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `stars` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `director` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `writer` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `rating` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `release` date DEFAULT NULL,
  `country` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `genre` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `video_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `runtime` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `video_quality` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT 'HD',
  `is_paid` int(5) NOT NULL DEFAULT 1,
  `publication` int(5) DEFAULT NULL,
  `trailer` int(5) DEFAULT 0,
  `enable_download` int(5) DEFAULT 1,
  `focus_keyword` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `imdb_rating` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_tvseries` int(11) NOT NULL DEFAULT 0,
  `total_rating` int(50) DEFAULT 1,
  `today_view` int(250) DEFAULT 0,
  `weekly_view` int(250) DEFAULT 0,
  `monthly_view` int(250) DEFAULT 0,
  `total_view` int(250) DEFAULT 1,
  `last_ep_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`videos_id`, `imdbid`, `title`, `seo_title`, `slug`, `description`, `stars`, `director`, `writer`, `rating`, `release`, `country`, `genre`, `video_type`, `runtime`, `video_quality`, `is_paid`, `publication`, `trailer`, `enable_download`, `focus_keyword`, `meta_description`, `tags`, `imdb_rating`, `is_tvseries`, `total_rating`, `today_view`, `weekly_view`, `monthly_view`, `total_view`, `last_ep_added`) VALUES
(1, '', 'Christmas Demo', NULL, 'christmas-demo', '<p>christmas-demo<br></p>', '', NULL, NULL, '0', '2022-04-09', NULL, '1', NULL, NULL, 'SQ', 0, 1, 0, 0, NULL, NULL, NULL, NULL, 1, 1, 13, 13, 13, 14, '2022-04-09 22:07:23'),
(2, '', 'Demo Christmas', NULL, 'demo-christmas', '<p>Demo Christmas<br></p>', '', NULL, NULL, '0', '2022-04-11', NULL, '1', NULL, NULL, 'SQ', 0, 1, 0, 0, NULL, NULL, NULL, NULL, 1, 1, 12, 12, 12, 13, '2022-04-09 22:20:25'),
(3, '', 'SubCat Business Demo', NULL, 'subcat-business-demo', '<p><br></p>', '', NULL, NULL, '0', '2022-04-09', NULL, '2', NULL, NULL, 'SQ', 0, 1, 0, 0, NULL, NULL, NULL, NULL, 1, 1, 47, 47, 47, 48, '2022-04-09 23:11:59'),
(4, '', 'Diwali', NULL, 'diwali', '<p><br></p>', '', NULL, NULL, '0', '2022-04-10', NULL, '3', NULL, NULL, 'SQ', 0, 1, 0, 0, NULL, NULL, NULL, NULL, 1, 1, 14, 14, 14, 15, '2022-04-10 11:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `video_file`
--

CREATE TABLE `video_file` (
  `video_file_id` int(11) NOT NULL,
  `stream_key` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `file_source` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `source_type` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `file_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `label` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Server#1',
  `order` int(50) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wish_list`
--

CREATE TABLE `wish_list` (
  `wish_list_id` int(11) NOT NULL,
  `wish_list_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `episodes_id` int(200) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`ads_id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`timezone`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `cron`
--
ALTER TABLE `cron`
  ADD PRIMARY KEY (`cron_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `download_link`
--
ALTER TABLE `download_link`
  ADD PRIMARY KEY (`download_link_id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`episodes_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages_iso`
--
ALTER TABLE `languages_iso`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_list`
--
ALTER TABLE `language_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_tv`
--
ALTER TABLE `live_tv`
  ADD PRIMARY KEY (`live_tv_id`);

--
-- Indexes for table `live_tv_category`
--
ALTER TABLE `live_tv_category`
  ADD PRIMARY KEY (`live_tv_category_id`);

--
-- Indexes for table `live_tv_program_guide`
--
ALTER TABLE `live_tv_program_guide`
  ADD PRIMARY KEY (`live_tv_program_guide_id`);

--
-- Indexes for table `live_tv_url`
--
ALTER TABLE `live_tv_url`
  ADD PRIMARY KEY (`live_tv_url_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`posts_id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`post_category_id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`post_comments_id`);

--
-- Indexes for table `quality`
--
ALTER TABLE `quality`
  ADD PRIMARY KEY (`quality_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `rest_logins`
--
ALTER TABLE `rest_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`seasons_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `star`
--
ALTER TABLE `star`
  ADD PRIMARY KEY (`star_id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`subscription_id`);

--
-- Indexes for table `subtitle`
--
ALTER TABLE `subtitle`
  ADD PRIMARY KEY (`subtitle_id`);

--
-- Indexes for table `tvseries_subtitle`
--
ALTER TABLE `tvseries_subtitle`
  ADD PRIMARY KEY (`tvseries_subtitle_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`videos_id`);

--
-- Indexes for table `video_file`
--
ALTER TABLE `video_file`
  ADD PRIMARY KEY (`video_file_id`);

--
-- Indexes for table `wish_list`
--
ALTER TABLE `wish_list`
  ADD PRIMARY KEY (`wish_list_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `ads_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comments_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cron`
--
ALTER TABLE `cron`
  MODIFY `cron_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `download_link`
--
ALTER TABLE `download_link`
  MODIFY `download_link_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `episodes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages_iso`
--
ALTER TABLE `languages_iso`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language_list`
--
ALTER TABLE `language_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `live_tv`
--
ALTER TABLE `live_tv`
  MODIFY `live_tv_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_tv_category`
--
ALTER TABLE `live_tv_category`
  MODIFY `live_tv_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_tv_program_guide`
--
ALTER TABLE `live_tv_program_guide`
  MODIFY `live_tv_program_guide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `live_tv_url`
--
ALTER TABLE `live_tv_url`
  MODIFY `live_tv_url_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `posts_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `post_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `post_comments_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quality`
--
ALTER TABLE `quality`
  MODIFY `quality_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_logins`
--
ALTER TABLE `rest_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `seasons_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `star`
--
ALTER TABLE `star`
  MODIFY `star_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `subscription_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subtitle`
--
ALTER TABLE `subtitle`
  MODIFY `subtitle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tvseries_subtitle`
--
ALTER TABLE `tvseries_subtitle`
  MODIFY `tvseries_subtitle_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `videos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `video_file`
--
ALTER TABLE `video_file`
  MODIFY `video_file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wish_list`
--
ALTER TABLE `wish_list`
  MODIFY `wish_list_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
