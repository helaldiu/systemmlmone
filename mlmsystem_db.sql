-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 10:15 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mlmsystem_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `netw_baseplan`
--

CREATE TABLE `netw_baseplan` (
  `bpid` int(12) NOT NULL,
  `maxwidth` int(9) DEFAULT 0,
  `maxdepth` int(9) DEFAULT 2,
  `currencysym` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT 'JmRvbGxhcjs=',
  `currencycode` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT 'USD',
  `pay_emailname` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pay_emailaddr` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `bptoken` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `netw_baseplan`
--

INSERT INTO `netw_baseplan` (`bpid`, `maxwidth`, `maxdepth`, `currencysym`, `currencycode`, `pay_emailname`, `pay_emailaddr`, `bptoken`) VALUES
(1, 2, 20, 'MTYwMA==', 'BD', 'helaldiu1040', 'helaldiu1040@yahoo.com', '|remindreg:1w|, |isgenview:|');

-- --------------------------------------------------------

--
-- Table structure for table `netw_configs`
--

CREATE TABLE `netw_configs` (
  `cfgid` tinyint(1) NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `site_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `site_descr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_keywrd` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '../assets/image/logo_defaultimage.png',
  `site_emailname` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `site_emailaddr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `site_phone` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `site_sosmed` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmpny_name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `cmpny_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmpny_footnote` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sitehits` int(12) DEFAULT 0,
  `join_status` tinyint(1) DEFAULT 1,
  `site_status` tinyint(1) DEFAULT 1,
  `site_status_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `langiso` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `admin_user` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `admin_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `admimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '../assets/image/adm_defaultimage.jpg',
  `envacc` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lickey` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowfreembr` tinyint(1) DEFAULT 0,
  `delete_freeafter` int(5) DEFAULT 0,
  `delete_expafter` int(5) DEFAULT 0,
  `multiemail2reg` tinyint(1) DEFAULT 1,
  `ismanualspr` tinyint(1) DEFAULT 0,
  `mbr_defaultimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '../assets/image/mbr_defaultimage.jpg',
  `mbrmax_image_width` int(4) DEFAULT 100,
  `mbrmax_image_height` int(4) DEFAULT 100,
  `mbrmax_title_char` int(4) DEFAULT 64,
  `mbrmax_descr_char` int(4) DEFAULT 144,
  `getstart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min2payout` float DEFAULT 0,
  `validref` tinyint(1) DEFAULT 0,
  `randref` tinyint(1) DEFAULT 0,
  `defaultref` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `norefredirurl` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mbroptref` tinyint(1) DEFAULT 0,
  `wdrawfee` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `cpnywlet` decimal(16,2) DEFAULT 0.00,
  `poolwlet` decimal(16,2) DEFAULT 0.00,
  `time_offset` int(2) DEFAULT 0,
  `dldir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `maxpage` tinyint(3) DEFAULT 15,
  `sodatef` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT 'j M Y',
  `lodatef` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT 'D, j M Y H:i:s',
  `maxcookie_days` int(4) DEFAULT 180,
  `treestatus` tinyint(1) DEFAULT 1,
  `treemaxwidth` smallint(9) DEFAULT 0,
  `treemaxdeep` int(12) DEFAULT 0,
  `iscrontask` tinyint(1) DEFAULT 0,
  `badunlist` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `badiplist` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bademail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vhitpoint` float DEFAULT 0,
  `fbakpoint` float DEFAULT 0,
  `lginpoint` float DEFAULT 0,
  `emailer` enum('mail','sendmail','smtp') COLLATE utf8mb4_unicode_ci DEFAULT 'mail',
  `smtphost` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpuser` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `smtppass` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `smtpencr` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `emailer1` enum('emailer','smtp') COLLATE utf8mb4_unicode_ci DEFAULT 'emailer',
  `smtp1host` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp1user` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `smtp1pass` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `smtp1encr` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `emailer2` enum('emailer','smtp') COLLATE utf8mb4_unicode_ci DEFAULT 'emailer',
  `smtp2host` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp2user` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `smtp2pass` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `smtp2encr` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `returnmail` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email_admin_on_join` tinyint(1) DEFAULT 0,
  `email_admin_copy_msgs` tinyint(1) DEFAULT 0,
  `isrecaptcha` tinyint(1) DEFAULT 0,
  `rc_securekey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rc_sitekey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `wcodes1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wcodes1opt` tinyint(1) DEFAULT 0,
  `wcodes2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wcodes2opt` tinyint(1) DEFAULT 0,
  `goanalytics` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `autobackup_days` smallint(5) DEFAULT 0,
  `autobackup_email` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `autobackup_date` date DEFAULT '2000-01-01',
  `cfgtoken` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `softversion` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT 'Release',
  `installdate` date DEFAULT '2000-01-01',
  `installhash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `licdate` datetime DEFAULT '2000-01-01 00:00:01',
  `licstatus` tinyint(1) DEFAULT 0,
  `lichash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `cronts` datetime DEFAULT '2000-01-01 00:00:01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `netw_configs`
--

INSERT INTO `netw_configs` (`cfgid`, `site_name`, `site_url`, `site_descr`, `site_keywrd`, `site_logo`, `site_emailname`, `site_emailaddr`, `site_phone`, `site_sosmed`, `cmpny_name`, `cmpny_address`, `cmpny_footnote`, `sitehits`, `join_status`, `site_status`, `site_status_note`, `langiso`, `admin_user`, `admin_password`, `admimage`, `envacc`, `lickey`, `allowfreembr`, `delete_freeafter`, `delete_expafter`, `multiemail2reg`, `ismanualspr`, `mbr_defaultimage`, `mbrmax_image_width`, `mbrmax_image_height`, `mbrmax_title_char`, `mbrmax_descr_char`, `getstart`, `min2payout`, `validref`, `randref`, `defaultref`, `norefredirurl`, `mbroptref`, `wdrawfee`, `cpnywlet`, `poolwlet`, `time_offset`, `dldir`, `maxpage`, `sodatef`, `lodatef`, `maxcookie_days`, `treestatus`, `treemaxwidth`, `treemaxdeep`, `iscrontask`, `badunlist`, `badiplist`, `bademail`, `vhitpoint`, `fbakpoint`, `lginpoint`, `emailer`, `smtphost`, `smtpuser`, `smtppass`, `smtpencr`, `emailer1`, `smtp1host`, `smtp1user`, `smtp1pass`, `smtp1encr`, `emailer2`, `smtp2host`, `smtp2user`, `smtp2pass`, `smtp2encr`, `returnmail`, `email_admin_on_join`, `email_admin_copy_msgs`, `isrecaptcha`, `rc_securekey`, `rc_sitekey`, `wcodes1`, `wcodes1opt`, `wcodes2`, `wcodes2opt`, `goanalytics`, `autobackup_days`, `autobackup_email`, `autobackup_date`, `cfgtoken`, `softversion`, `installdate`, `installhash`, `licdate`, `licstatus`, `lichash`, `cronts`) VALUES
(1, 'MLM System', 'http://localhost/M/upload', '', '', '../assets/image/logo_defaultimage.png', '', 'helaluddin009@gmail.com', '', NULL, '', NULL, NULL, 0, 1, 1, '', 'en', 'admin', '$2y$10$sdMaz1HJydgwCl9jRD6LxeJW0EkPj1UvR5oLt2mSg58SOCA1s5iNu', '../assets/imagextra/admimage.jpg', '', 'OTBiMGY2ZDItZWZmYy00YWY5LWFiOTktNGNiYzFlMDJiYjVm', 0, 0, 0, 1, 0, '../assets/image/mbr_defaultimage.jpg', 100, 100, 64, 144, 'PHA+VGhpcyBpcyBwYWdlIGNvbnRlbnQgYXJlYSBPbmU8L3A+', 0, 1, 1, 'helal', NULL, 0, '10|15', '0.00', '0.00', 0, 'C:\\xampp\\htdocs\\M\\upload/downloads', 15, 'j M Y', 'D, j M Y H:i:s', 180, 1, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 'mail', '', '', '', '', 'emailer', NULL, '', '', '', 'emailer', NULL, '', '', '', '', 0, 0, 0, '', '', NULL, 0, NULL, 0, '', 0, '', '2000-01-01', '|ccid:25882083|, |licstr:UmVndWxhciBMaWNlbnNl|, |lictype:2083|, |licpk:|, |site_subname:MLM System|, |isautoregplan:1|, |mbrdelopt:1|, |reflinklp:reg|, |disreflink:|, |diswithdraw:|, |isadvrenew:1|, |isregbymbr:1|, |isdupemail:|, |iscookieconsent:1|, |minwalletwdr:10|, |maxwalletwdr:20|, |langlist:eyJlbiI6IkVuZ2xpc2gifQ==|, |isgetstart:1|', '2.0.0', '2021-08-04', '99013d96bbd26efa39d78e238a40392af5bb20e1cbc4', '2021-08-04 02:16:56', 0, '58b250dfedc94fc510ca7b3f2f7d8e0f', '2021-08-17 09:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `netw_files`
--

CREATE TABLE `netw_files` (
  `flid` int(12) NOT NULL,
  `fldate` date DEFAULT '2000-01-01',
  `flupdate` date DEFAULT '2000-01-01',
  `flpath` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flname` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `fldescr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flsize` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT '0 Bytes',
  `fldlcount` int(12) DEFAULT 0,
  `flimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '../assets/image/file_defaultimage.jpg',
  `flsticky` tinyint(1) DEFAULT 0,
  `flavalto` tinyint(1) DEFAULT 1,
  `flppids` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `flstatus` tinyint(1) DEFAULT 1,
  `fltoken` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `netw_files`
--

INSERT INTO `netw_files` (`flid`, `fldate`, `flupdate`, `flpath`, `flname`, `fldescr`, `flsize`, `fldlcount`, `flimage`, `flsticky`, `flavalto`, `flppids`, `flstatus`, `fltoken`) VALUES
(1, '2021-08-04', '2000-01-01', NULL, 'p3', '', '0 Bytes', 1, '', 0, 1, '', 1, NULL),
(2, '2021-08-05', '2021-08-05', 'C:\\xampp\\htdocs\\M\\upload/downloads/2021_07_29_12-55-16_pm.pdf', 'product item one', 'This is Item One', '253.28 KB', 1, '../assets/imagextra/flimage_816651e412669ee419e405bab81e4281.jpg', 0, 1, '', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `netw_groups`
--

CREATE TABLE `netw_groups` (
  `grid` int(11) NOT NULL,
  `grtype` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `grtitle` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `groptions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grorder` int(11) DEFAULT 0,
  `grtoken` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gradminfo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `netw_invoices`
--

CREATE TABLE `netw_invoices` (
  `invid` int(11) NOT NULL,
  `invdate` datetime DEFAULT '2000-01-01 00:00:01',
  `invoiceid` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `invtoken` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invstatus` tinyint(1) DEFAULT 0,
  `invusein` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `invlast` datetime DEFAULT '2000-01-01 00:00:01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `netw_mbrplans`
--

CREATE TABLE `netw_mbrplans` (
  `mpid` int(12) NOT NULL,
  `idhostmbr` int(12) DEFAULT 0 COMMENT 'based on member main mpid',
  `idmbr` int(12) DEFAULT 0,
  `mppid` int(11) DEFAULT 1 COMMENT 'based on payplan ppid',
  `isdefault` tinyint(1) DEFAULT 1,
  `reg_date` date DEFAULT '2000-01-01',
  `reg_expd` date DEFAULT '2000-01-01',
  `reg_utctime` timestamp NOT NULL DEFAULT '1999-12-31 18:00:01',
  `reg_ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `reg_fee` decimal(16,2) DEFAULT 0.00,
  `mpstatus` tinyint(1) DEFAULT 1 COMMENT '0:inactive, 1:active, 2:expired, 3:pending',
  `hostspr` int(12) DEFAULT 0 COMMENT 'based on sponsor mpid',
  `idref` int(12) DEFAULT 0,
  `idspr` int(12) DEFAULT 0,
  `sprlist` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'based on sponsor mpid',
  `mpwidth` int(12) DEFAULT 0,
  `mpdepth` int(12) DEFAULT 0,
  `mprankid` int(11) DEFAULT 0,
  `renewtimes` int(6) DEFAULT 0,
  `recyclingit` smallint(5) DEFAULT 0,
  `cyclingbyid` int(12) DEFAULT 0,
  `rmdexp` tinyint(1) DEFAULT 0,
  `mptoken` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mpadminfo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `netw_mbrplans`
--

INSERT INTO `netw_mbrplans` (`mpid`, `idhostmbr`, `idmbr`, `mppid`, `isdefault`, `reg_date`, `reg_expd`, `reg_utctime`, `reg_ip`, `reg_fee`, `mpstatus`, `hostspr`, `idref`, `idspr`, `sprlist`, `mpwidth`, `mpdepth`, `mprankid`, `renewtimes`, `recyclingit`, `cyclingbyid`, `rmdexp`, `mptoken`, `mpadminfo`) VALUES
(62, 0, 71, 1, 1, '2021-08-16', '2021-08-16', '2021-08-16 02:50:31', '::1', '200.00', 1, 0, 0, 0, '|1:0|, |2:0|', 2, 20, 0, 0, 0, 0, 0, '|isinitpay:1|', NULL),
(63, 0, 72, 1, 1, '2021-08-16', '2021-08-16', '2021-08-16 02:51:37', '::1', '200.00', 1, 0, 71, 71, '|1:62|, |2:0|, |3:0|', 2, 20, 0, 0, 0, 0, 0, '|isinitpay:1|', NULL),
(64, 0, 73, 1, 1, '2021-08-16', '2021-08-16', '2021-08-16 02:53:57', '::1', '200.00', 1, 0, 71, 71, '|1:62|, |2:0|, |3:0|', 2, 20, 0, 0, 0, 0, 0, '|isinitpay:1|', NULL),
(65, 0, 74, 1, 1, '2021-08-16', '2021-08-16', '2021-08-16 06:47:46', '::1', '200.00', 1, 0, 71, 0, '|1:0|, |2:0|', 2, 20, 0, 0, 0, 0, 0, '|isinitpay:1|', NULL),
(66, 0, 75, 1, 1, '2021-08-16', '2021-08-16', '2021-08-16 06:52:49', '::1', '200.00', 1, 0, 74, 74, '|1:65|, |2:0|, |3:0|', 2, 20, 0, 0, 0, 0, 0, '|isinitpay:1|', NULL),
(67, 0, 76, 1, 1, '2021-08-16', '2021-08-16', '2021-08-16 07:59:56', '::1', '200.00', 1, 0, 75, 75, '|1:66|, |2:65|, |3:0|, |4:0|', 2, 20, 0, 0, 0, 0, 0, '|isinitpay:1|', NULL),
(68, 0, 77, 1, 1, '2021-08-16', '2021-08-16', '2021-08-16 08:05:28', '::1', '200.00', 1, 0, 76, 76, '|1:67|, |2:66|, |3:65|, |4:0|, |5:0|', 2, 20, 0, 0, 0, 0, 0, '|isinitpay:1|', NULL),
(69, 0, 78, 1, 1, '2021-08-16', '2021-08-16', '2021-08-16 08:11:54', '::1', '200.00', 1, 0, 77, 77, '|1:68|, |2:67|, |3:66|, |4:65|, |5:0|, |6:0|', 2, 20, 0, 0, 0, 0, 0, '|isinitpay:1|', NULL),
(70, 0, 81, 1, 1, '2021-08-16', '2021-08-16', '2021-08-16 13:14:37', '::1', '200.00', 1, 0, 72, 72, '|1:63|, |2:62|, |3:0|, |4:0|', 2, 20, 0, 0, 0, 0, 0, '|isinitpay:1|', NULL),
(71, 0, 82, 1, 1, '2021-08-16', '2021-08-16', '2021-08-16 13:15:55', '::1', '200.00', 1, 0, 72, 72, '|1:63|, |2:62|, |3:0|, |4:0|', 2, 20, 0, 0, 0, 0, 0, '|isinitpay:1|', NULL),
(72, 0, 83, 1, 1, '2021-08-16', '2021-08-16', '2021-08-16 13:42:27', '::1', '200.00', 1, 0, 73, 73, '|1:64|, |2:62|, |3:0|, |4:0|', 2, 20, 0, 0, 0, 0, 0, '|isinitpay:1|', NULL),
(73, 0, 84, 1, 1, '2021-08-16', '2021-08-16', '2021-08-16 13:44:02', '::1', '200.00', 1, 0, 73, 73, '|1:64|, |2:62|, |3:0|, |4:0|', 2, 20, 0, 0, 0, 0, 0, '|isinitpay:1|', NULL),
(74, 0, 85, 1, 1, '2021-08-17', '2021-08-17', '2021-08-17 02:10:23', '::1', '200.00', 1, 0, 82, 82, '|1:71|, |2:63|, |3:62|, |4:0|, |5:0|', 2, 20, 0, 0, 0, 0, 0, '|isinitpay:1|', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `netw_mbrs`
--

CREATE TABLE `netw_mbrs` (
  `id` int(12) NOT NULL,
  `in_date` timestamp NOT NULL DEFAULT '1999-12-31 18:00:01',
  `firstname` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lastname` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `byname` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `password` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mbrsite_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mbrsite_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mbrsite_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mbrsite_cat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mbrsite_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '../assets/image/site_defaultimage.jpg',
  `mbrsite_hit` int(12) DEFAULT 0,
  `showsite` tinyint(1) DEFAULT 1,
  `mbr_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '../assets/image/mbr_defaultimage.jpg',
  `mbr_intro` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mbr_sosmed` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `country` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mylang` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `optinme` tinyint(1) DEFAULT 1,
  `hits` int(12) DEFAULT 0,
  `log_date` timestamp NOT NULL DEFAULT '1999-12-31 18:00:01',
  `log_ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `taglabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mbrstatus` tinyint(1) DEFAULT 1 COMMENT '0:inactive, 1:active, 2:limited, 3:pending',
  `isconfirm` tinyint(1) DEFAULT 1,
  `ewallet` decimal(16,2) DEFAULT 0.00,
  `epoint` float DEFAULT 0,
  `mbrtoken` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminfo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deviceid` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `member position` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `netw_mbrs`
--

INSERT INTO `netw_mbrs` (`id`, `in_date`, `firstname`, `lastname`, `username`, `byname`, `email`, `password`, `mbrsite_url`, `mbrsite_title`, `mbrsite_desc`, `mbrsite_cat`, `mbrsite_img`, `mbrsite_hit`, `showsite`, `mbr_image`, `mbr_intro`, `mbr_sosmed`, `phone`, `address`, `state`, `country`, `mylang`, `optinme`, `hits`, `log_date`, `log_ip`, `taglabel`, `mbrstatus`, `isconfirm`, `ewallet`, `epoint`, `mbrtoken`, `adminfo`, `deviceid`, `member position`) VALUES
(71, '2021-08-16 02:50:29', 'helaldiu', 'uddin', 'helaldiu', '', 'helaldiu1040@yahoo.com', '$2y$10$c4ftLhWCr/VXYew9VxXWZu9qipajHTCJnMhoEBDd8LD6ehWF8pM.y', '', '', NULL, '', '../assets/image/site_defaultimage.jpg', 0, 1, '../assets/image/mbr_defaultimage.jpg', NULL, NULL, '', NULL, '', '', 'en', 1, 0, '1999-12-31 18:00:01', '::1', '', 1, 1, '60.00', 0, NULL, NULL, '', NULL),
(72, '2021-08-16 02:51:35', 'imraj', 'Alli', 'imraj', '', 'imraj@gmail.com', '$2y$10$KVJS8F9LX.U/A02/c1HAuOZBdS9sdrCwskVD7fZZJVv5bdaxTM.M6', '', '', NULL, '', '../assets/image/site_defaultimage.jpg', 0, 1, '../assets/image/mbr_defaultimage.jpg', NULL, NULL, '', NULL, '', '', 'en', 1, 1, '1999-12-31 18:00:01', '::1', '', 1, 1, '50.00', 0, NULL, NULL, '', NULL),
(73, '2021-08-16 02:53:56', 'sojun', 'alli', 'sojun', '', 'sojun@gmail.com', '$2y$10$mjdU1cneJDsuX5pVz1kH/eejQw0L7L6/yVihPx5M8ai23nrh9zpyu', '', '', NULL, '', '../assets/image/site_defaultimage.jpg', 0, 1, '../assets/image/mbr_defaultimage.jpg', NULL, NULL, '', NULL, '', '', 'en', 1, 0, '1999-12-31 18:00:01', '::1', '', 1, 1, '50.00', 0, NULL, NULL, '', NULL),
(74, '2021-08-16 06:42:32', 'mimbabu', 'Babu', 'mimbabu', '', 'mimbabu@gmail.com', '$2y$10$mO90.1AyXwO2VWtwG5ia5uIWxfghsFlHXYvZJhL8iqLQzH3hh7Mmy', '', '', NULL, '', '../assets/image/site_defaultimage.jpg', 0, 1, '../assets/image/mbr_defaultimage.jpg', NULL, NULL, '', NULL, '', '', 'en', 1, 0, '1999-12-31 18:00:01', '::1', '', 1, 1, '10.00', 0, NULL, NULL, '', NULL),
(75, '2021-08-16 06:52:47', 'rohim', 'islam', 'rohim', '', 'rohim@gmail.com', '$2y$10$dPebUEC4WWw5a.YnKmRV2ugra1lKYK95sq225V4iGD.oXLbwYGEpe', '', '', NULL, '', '../assets/image/site_defaultimage.jpg', 0, 1, '../assets/image/mbr_defaultimage.jpg', NULL, NULL, '', NULL, '', '', 'en', 1, 0, '1999-12-31 18:00:01', '::1', '', 1, 1, '10.00', 0, NULL, NULL, '', NULL),
(76, '2021-08-16 07:59:54', 'belal', 'islam', 'belal', '', 'belal@gmail.com', '$2y$10$bPk9NtOyZ3dSmpnSxekq7ORl0Eom1QTbA0okSpF/c8o.q21Lfpm76', '', '', NULL, '', '../assets/image/site_defaultimage.jpg', 0, 1, '../assets/image/mbr_defaultimage.jpg', NULL, NULL, '', NULL, '', '', 'en', 1, 0, '1999-12-31 18:00:01', '::1', '', 1, 1, '10.00', 0, NULL, NULL, '', NULL),
(77, '2021-08-16 08:05:27', 'dolal', 'islam', 'dolal', '', 'dolal@gmail.com', '$2y$10$gsTiUJcq6OcK3QenjZ2HWuAxYdoCYSm6.ncUWRX2BXdITIluS3lSO', '', '', '', 'Business General', '../assets/image/site_defaultimage.jpg', 0, 1, NULL, '', '|mbr_twitter:|, |mbr_facebook:|', '', '', '', '', 'en', 1, 0, '1999-12-31 18:00:01', '::1', '', 1, 1, '10.00', 0, NULL, '', '', NULL),
(78, '2021-08-16 08:11:52', 'sohel', 'islam', 'sohel', '', 'sohel@gmail.com', '$2y$10$vHSbDQXYiToLzKUJ1Uq8tuv09OBfYElZhRQOvE33olMSW0zHruncy', '', '', NULL, '', '../assets/image/site_defaultimage.jpg', 0, 1, '../assets/image/mbr_defaultimage.jpg', NULL, NULL, '', NULL, '', '', 'en', 1, 0, '1999-12-31 18:00:01', '::1', '', 1, 1, '0.00', 0, NULL, NULL, '', NULL),
(79, '2021-08-16 08:23:42', 'korim', 'islam', 'korim', '', 'korim@gmail.com', '$2y$10$/pDcmAl34WP2yQdbdgaVq.P.QiHwDUuP4jzPW9JpGt7A33D/yPYsO', '', '', NULL, '', '../assets/image/site_defaultimage.jpg', 0, 1, '../assets/image/mbr_defaultimage.jpg', NULL, NULL, '', NULL, '', '', 'en', 1, 0, '1999-12-31 18:00:01', '::1', '', 1, 1, '0.00', 0, NULL, NULL, '', NULL),
(80, '2021-08-16 13:13:28', 'name1', 'islam', 'name1', '', 'name1@gmail.com', '$2y$10$19SwMJBee2lXzaJ/C2exsOKloJkI8SSU./sUGvB0fu5FJNxAkP5FW', '', '', NULL, '', '../assets/image/site_defaultimage.jpg', 0, 1, '../assets/image/mbr_defaultimage.jpg', NULL, NULL, '', NULL, '', '', 'en', 1, 0, '1999-12-31 18:00:01', '::1', '', 1, 1, '0.00', 0, NULL, NULL, '', NULL),
(81, '2021-08-16 13:14:34', 'pavel', 'islam', 'pavel', '', 'pavel@gmaill.com', '$2y$10$xD3B2q.azUDpNQ.5abjIze7Xcv7SYcwZNiNgCQYmivO0NenMsJJvG', '', '', NULL, '', '../assets/image/site_defaultimage.jpg', 0, 1, '../assets/image/mbr_defaultimage.jpg', NULL, NULL, '', NULL, '', '', 'en', 1, 0, '1999-12-31 18:00:01', '::1', '', 1, 1, '0.00', 0, NULL, NULL, '', NULL),
(82, '2021-08-16 13:15:53', 'masud', 'hassan', 'masud', '', 'masud@gmail.com', '$2y$10$inDns2u4BqYqAzot9XKdnOF0jd/UWH..KTShY.pPxioyPXkECAS8K', '', '', NULL, '', '../assets/image/site_defaultimage.jpg', 0, 1, '../assets/image/mbr_defaultimage.jpg', NULL, NULL, '', NULL, '', '', 'en', 1, 0, '1999-12-31 18:00:01', '::1', '', 1, 1, '10.00', 0, NULL, NULL, '', NULL),
(83, '2021-08-16 13:42:26', 'shamim', 'islam', 'shamim', '', 'shamim@gmail.com', '$2y$10$/BzhjYiNglkz5enc0tZ2HO8M4Lu90DKNjYRm2cN42jx6WshcR5X.G', '', '', NULL, '', '../assets/image/site_defaultimage.jpg', 0, 1, '../assets/image/mbr_defaultimage.jpg', NULL, NULL, '', NULL, '', '', 'en', 1, 0, '1999-12-31 18:00:01', '::1', '', 1, 1, '0.00', 0, NULL, NULL, '', NULL),
(84, '2021-08-16 13:44:00', 'tania', 'islam', 'taina', '', 'taina@gmail.com', '$2y$10$tLPMxiMq9KRhRBI.QegPlecGZgMMu5Ok.yyUdrdPKaTxeBqqeKhEq', '', '', NULL, '', '../assets/image/site_defaultimage.jpg', 0, 1, '../assets/image/mbr_defaultimage.jpg', NULL, NULL, '', NULL, '', '', 'en', 1, 0, '1999-12-31 18:00:01', '::1', '', 1, 1, '0.00', 0, NULL, NULL, '', NULL),
(85, '2021-08-17 02:10:21', 'ontik', 'alli', 'ontik', '', 'ontik@gmail.com', '$2y$10$8vDVrCHPOOpT/BRkG8EqNO.o9kCuDzTRuT6CHfHbF11jgUhPC2h9q', '', '', NULL, '', '../assets/image/site_defaultimage.jpg', 0, 1, '../assets/image/mbr_defaultimage.jpg', NULL, NULL, '', NULL, '', '', 'en', 1, 0, '1999-12-31 18:00:01', '::1', '', 1, 1, '0.00', 0, NULL, NULL, '', NULL),
(86, '2021-08-17 03:16:00', 'salam', 'islam', 'salam', '', 'salam@gmail.com', '$2y$10$8.8LEqYYNob.U2n9/Xjm6OuJAv8KqJwHYmNmgS.I5mkbiv8pDNpBe', '', '', NULL, '', '../assets/image/site_defaultimage.jpg', 0, 1, '../assets/image/mbr_defaultimage.jpg', NULL, NULL, '', NULL, '', '', 'en', 1, 0, '1999-12-31 18:00:01', '::1', '', 1, 1, '0.00', 0, NULL, NULL, '', NULL),
(87, '2021-08-17 03:21:10', 'tarek', 'islam', 'tarek', '', 'tarek@gmail.com', '$2y$10$zLE9dGmWvcTV5CqAwO/Sbe.NZj15X8f9zv5CPsFN9Jrm14saEJ.Qu', '', '', NULL, '', '../assets/image/site_defaultimage.jpg', 0, 1, '../assets/image/mbr_defaultimage.jpg', NULL, NULL, '', NULL, '', '', 'en', 1, 0, '1999-12-31 18:00:01', '::1', '', 1, 1, '0.00', 0, NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `netw_notifytpl`
--

CREATE TABLE `netw_notifytpl` (
  `ntid` int(11) NOT NULL,
  `ntcode` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `ntname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `ntdesc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ntpid` int(11) DEFAULT 0,
  `ntsubject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nttext` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nthtml` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ntsms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ntpush` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ntoptions` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '|email:0|, |sms:0|, |pushmsg:0|',
  `nttoken` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `netw_notifytpl`
--

INSERT INTO `netw_notifytpl` (`ntid`, `ntcode`, `ntname`, `ntdesc`, `ntpid`, `ntsubject`, `nttext`, `nthtml`, `ntsms`, `ntpush`, `ntoptions`, `nttoken`) VALUES
(1, 'mbr_reg', 'Welcome Message', 'Notification send after member registration success', 0, '[[firstname]], thank you for register!', 'Hello [[firstname]],\r\n\r\nWelcome and thank you for registering!\r\n\r\nYour Account Details:\r\nName: [[fullname]]\r\nEmail: [[email]]\r\nUsername: [[username]]\r\nPassword: [[rawpassword]]\r\n\r\nPlease login to your member area at [[login_url]]\r\n\r\n\r\nBest Regards,\r\n[[site_name]]\r\n', '<p>Hello [[firstname]],</p>\r\n\r\n<p><b>Welcome and thank you for registering!</b></p>\r\n\r\n<p>Your Account Details:<br>\r\nName: [[fullname]]<br>\r\nEmail: [[email]]<br>\r\nUsername: [[username]]<br>\r\nPassword: [[rawpassword]]</p>\r\n\r\n<p>Please login to your member area at [[login_url]]</p>\r\n\r\n<p><br>\r\nBest Regards,<br>\r\n[[site_name]]<br>\r\n&nbsp;</p>\r\n', 'Welcome [[username]], thank you for registering!', 'Welcome [[username]], thank you for registering!', '|email:1|, |sms:0|, |pushmsg:0|', NULL),
(2, 'mbr_newdl', 'New Referral Signup', 'Notification send to member each time their new referral signup', 0, '[[firstname]], New Referral Signup!', 'Hi [[firstname]],\r\n\r\nCongratulations, new referral signup:\r\nName: [[dln_fullname]]\r\nUsername: [[dln_username]]\r\n\r\nKeep up the good work.\r\nBest Regards,\r\n\r\n[[site_name]]\r\n\r\n---\r\nYour email address is [[email]]', '<p>Hi [[firstname]],</p>\r\n\r\n<p><strong>Congratulations</strong>, new referral signup:</p>\r\n\r\n<p>Name: [[dln_fullname]]<br>\r\nUsername: [[dln_username]]</p>\r\n\r\n<p><br>\r\nKeep up the good work.<br>\r\nBest Regards,</p><p>[[site_name]]<br></p>\r\n\r\n<p>---<br>\r\n<em>Your email address is [[email]]</em><br>\r\n</p>\r\n', 'Congratulations, new referral signup: [[dln_username]]', 'Congratulations, new referral signup: [[dln_username]]', '|email:1|, |sms:0|, |pushmsg:0|', NULL),
(3, 'mbr_resetpass', 'Reset Password Request', 'Notification message send after member request reset password', 0, 'Password Reset Request', 'Hi,\r\n\r\nPlease use the following link to generate new password for your account:\r\n\r\n[[passwordreset_url]]\r\n\r\nBest Regards,\r\n\r\n---\r\nIf you didn\'t make any request for a password reset recently, please contact us!', '<p>Hi,</p><p>Please use the following link to generate new password for your account:</p>\r\n\r\n<p>[[passwordreset_url]]</p>\r\n\r\n<p><br>\r\nBest Regards,</p>\r\n\r\n<p>---</p>\r\n\r\n<p><em>If you did not make any request for a password reset recently, please contact us!</em></p>\r\n', '', '', '|email:1|, |sms:0|, |pushmsg:0|', NULL),
(4, 'mbr_newcm', 'New Commission Generated', 'Notification send to member each time they get new commission', 0, '[[firstname]], New Commission: [[ncm_memo]]', 'Hi [[firstname]],\r\n\r\nCongratulations, you got paid!\r\nTransaction: [[ncm_memo]]\r\nAmount: [[ncm_amount]]\r\nReferral: [[dln_username]]\r\n\r\nKeep up the good work.\r\nBest Regards,\r\n\r\n[[site_name]]\r\n\r\n---\r\nYour email address is [[email]]', '<p>Hi [[firstname]],</p>\r\n\r\n<p><strong>Congratulations</strong>, you got paid!</p>\r\n\r\n<p>Transaction: [[ncm_memo]]<br>\r\nAmount: [[ncm_amount]]<br>\r\nReferral: [[dln_username]]</p>\r\n\r\n<p><br>\r\nKeep up the good work.<br>\r\nBest Regards,</p><p>[[site_name]]<br></p>\r\n\r\n<p>---<br>\r\n<em>Your email address is [[email]]</em><br>\r\n</p>\r\n', 'Congratulations, new commission: [[ncm_memo]]', 'Congratulations, new commission: [[ncm_memo]]', '|email:1|, |sms:0|, |pushmsg:0|', NULL),
(5, 'mbr_rereg', 'Renewal Reminder', 'Notification send before member account expired', 0, '[[firstname]], renewal notification!', 'Hello [[firstname]],\r\n\r\nYour account will expire soon!\r\n\r\nAccount Details:\r\nName: [[fullname]]\r\nEmail: [[email]]\r\nUsername: [[username]]\r\n\r\nPlease login to your member area at [[login_url]]\r\n\r\n\r\nBest Regards,\r\n[[site_name]]\r\n', '<p>Hello [[firstname]],</p>\r\n\r\n<p><b>Your account will expire soon!</b></p>\r\n\r\n<p>Your Account Details:<br>\r\nName: [[fullname]]<br>\r\nEmail: [[email]]<br>\r\nUsername: [[username]]</p>\r\n\r\n<p>Please login to your member area at [[login_url]]</p>\r\n\r\n<p><br>\r\nBest Regards,<br>\r\n[[site_name]]<br>\r\n&nbsp;</p>\r\n', 'Renewal [[username]], account will expire soon!', 'Renewal [[username]], account will expire soon!', '|email:1|, |sms:0|, |pushmsg:0|', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `netw_pages`
--

CREATE TABLE `netw_pages` (
  `pgid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pgtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pgsubtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pgcontent` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pgavalon` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pgppids` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pgstatus` tinyint(1) DEFAULT NULL,
  `pgmenu` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pgorder` int(10) DEFAULT NULL,
  `pglang` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `pgtoken` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `netw_pages`
--

INSERT INTO `netw_pages` (`pgid`, `pgtitle`, `pgsubtitle`, `pgcontent`, `pgavalon`, `pgppids`, `pgstatus`, `pgmenu`, `pgorder`, `pglang`, `pgtoken`) VALUES
('ADD1', 'ADD TESTING', 'YWRkIHRlc3Rpbmc=', 'PHA+VGhpcyBpcyBhZGQgc2VjdGlvbiZuYnNwOzwvcD4=', '|mbr:1|, |mbpp0:0|, |mbpp1:1|', NULL, 1, 'ADD1', 0, 'en', NULL),
('Pakage1', 'Menu1', 'bTE=', 'PHA+VGhpcyBpcyB0ZXN0aW5nIG1lbnUgSXRlbSBPbmU8L3A+', '|mbr:1|, |mbpp0:0|, |mbpp1:1|', NULL, 1, 'Menu1', 0, 'en', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `netw_paygates`
--

CREATE TABLE `netw_paygates` (
  `paygid` int(12) NOT NULL,
  `pgidmbr` int(12) DEFAULT 0,
  `pgdatatoken` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypalon` tinyint(1) DEFAULT 0,
  `paypalsubs` tinyint(1) DEFAULT 0,
  `paypalfee` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `paypalacc` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `paypaltest` char(3) COLLATE utf8mb4_unicode_ci DEFAULT 'on',
  `paypal4usr` tinyint(1) DEFAULT 0,
  `coinpaymentson` tinyint(1) DEFAULT 0,
  `coinpaymentsfee` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `coinpaymentsmercid` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `coinpaymentsipnkey` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `coinpaymentsconfirm` tinyint(1) DEFAULT 1,
  `coinpayments4usr` tinyint(1) DEFAULT 0,
  `paystackon` tinyint(1) DEFAULT 0,
  `paystackfee` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `paystackpub` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `paystackpin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `paystack4usr` tinyint(1) DEFAULT 0,
  `epinon` tinyint(1) DEFAULT 0,
  `epinsyntax` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `epin4usr` tinyint(1) DEFAULT 0,
  `ewalleton` tinyint(1) DEFAULT 0,
  `ewalletfee` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `ewallet4usr` tinyint(1) DEFAULT 0,
  `manualpayon` tinyint(1) DEFAULT 0,
  `manualpaybtn` tinyint(1) DEFAULT 0,
  `manualpayfee` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `manualpayname` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manualpayipn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manualpay4usr` tinyint(1) DEFAULT 0,
  `testpayon` tinyint(1) DEFAULT 0,
  `testpayfee` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `testpaylabel` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testpay4usr` tinyint(1) DEFAULT 0,
  `paytoken` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `netw_paygates`
--

INSERT INTO `netw_paygates` (`paygid`, `pgidmbr`, `pgdatatoken`, `paypalon`, `paypalsubs`, `paypalfee`, `paypalacc`, `paypaltest`, `paypal4usr`, `coinpaymentson`, `coinpaymentsfee`, `coinpaymentsmercid`, `coinpaymentsipnkey`, `coinpaymentsconfirm`, `coinpayments4usr`, `paystackon`, `paystackfee`, `paystackpub`, `paystackpin`, `paystack4usr`, `epinon`, `epinsyntax`, `epin4usr`, `ewalleton`, `ewalletfee`, `ewallet4usr`, `manualpayon`, `manualpaybtn`, `manualpayfee`, `manualpayname`, `manualpayipn`, `manualpay4usr`, `testpayon`, `testpayfee`, `testpaylabel`, `testpay4usr`, `paytoken`) VALUES
(1, 0, '|perfectmoneyon:0|, |perfectmoney4usr:0|, |perfectmoneycfg:fHBlcmZlY3Rtb25leWFjYzp8LCB8cGVyZmVjdG1vbmV5bmFtZTp8LCB8cGVyZmVjdG1vbmV5cGFzczp8LCB8cGVyZmVjdG1vbmV5ZmVlOjB8|, |payfaston:0|, |payfast4usr:0|, |payfastcfg:fHBheWZhc3RtZXJjaWQ6fCwgfHBheWZhc3RrZXk6fCwgfHBheWZhc3RmZWU6MHwsIHxwYXlmYXN0c2JveDowfA==|, |paystackon:0|, |paystack4usr:0|, |paystackcfg:fHBheXN0YWNrcHViOnwsIHxwYXlzdGFja3Bpbjp8LCB8cGF5c3RhY2tmZWU6MHw=|, |stripeon:0|, |stripe4usr:0|, |stripecfg:fHN0cmlwZW5hbWU6fCwgfHN0cmlwZXBhc3M6fCwgfHN0cmlwZWFjYzp8LCB8c3RyaXBlZmVlOjB8LCB8c3RyaXBlb3B0Y286MXw=|', 0, 0, '0', '', 'on', 0, 0, '0', '', '', 1, 0, 0, '0', '', '', 0, 0, '', 0, 0, '0', 0, 1, NULL, '0', 'Cash or Bank', 'PHA+UGxlYXNlIHNlbmQgdGhlIHBheW1lbnQgb2YgPGI+W1tjdXJyZW5jeXN5bV1dW1thbW91bnRdXTwvYj4gKyBbW2ZlZWFtb3VudF1dID0gPGI+W1tjdXJyZW5jeXN5bV1dW1t0b3RhbW91bnRdXSBbW2N1cnJlbmN5Y29kZV1dIDwvYj5mb3IgPGI+W1twYXlwbGFuXV08L2I+IHJlZ2lzdHJhdGlvbiB0byB0aGUgZm9sbG93aW5nOjwvcD48cD5BY2NvdW50OiA8Yj4wMTIzNDU2Nzg5PC9iPjxicj5OYW1lOiA8Yj5UaGUgQm9zczwvYj48L3A+PHA+QWZ0ZXIgcGF5bWVudCBjb21wbGV0ZSwgY29uZmlybSB5b3VyIHBheW1lbnQuPC9wPg==', 1, 1, '0', 'Test Payment Sandbox', 0, '|paypalsbox:0|'),
(2, 5, '|perfectmoneycfg:fHBlcmZlY3Rtb25leWFjYzp8|, |payfastcfg:fHBheWZhc3RtZXJjaWQ6fA==|, |stripecfg:fHN0cmlwZWFjYzp8|, |paystackcfg:fHBheXN0YWNrcHViOnw=|', 0, 0, '0', '', 'on', 0, 0, '0', '', '', 1, 0, 0, '0', '', '', 0, 0, '', 0, 0, '0', 0, 0, 0, '0', NULL, '', 0, 0, '0', NULL, 0, NULL),
(3, 3, '|perfectmoneycfg:fHBlcmZlY3Rtb25leWFjYzp8|, |payfastcfg:fHBheWZhc3RtZXJjaWQ6fA==|, |stripecfg:fHN0cmlwZWFjYzp8|, |paystackcfg:fHBheXN0YWNrcHViOnw=|', 0, 0, '0', '', 'on', 0, 0, '0', '', '', 1, 0, 0, '0', '', '', 0, 0, '', 0, 0, '0', 0, 0, 0, '0', NULL, '', 0, 0, '0', NULL, 0, NULL),
(4, 37, '|perfectmoneycfg:fHBlcmZlY3Rtb25leWFjYzp8|, |payfastcfg:fHBheWZhc3RtZXJjaWQ6fA==|, |stripecfg:fHN0cmlwZWFjYzp8|, |paystackcfg:fHBheXN0YWNrcHViOnw=|', 0, 0, '0', '', 'on', 0, 0, '0', '', '', 1, 0, 0, '0', '', '', 0, 0, '', 0, 0, '0', 0, 0, 0, '0', NULL, 'Q2l0eSBCYW5r', 0, 0, '0', NULL, 0, NULL),
(5, 46, '|perfectmoneycfg:fHBlcmZlY3Rtb25leWFjYzp8|, |payfastcfg:fHBheWZhc3RtZXJjaWQ6fA==|, |stripecfg:fHN0cmlwZWFjYzp8|, |paystackcfg:fHBheXN0YWNrcHViOnw=|', 0, 0, '0', '', 'on', 0, 0, '0', '', '', 1, 0, 0, '0', '', '', 0, 0, '', 0, 0, '0', 0, 0, 0, '0', NULL, 'RUJMIEJhbms=', 0, 0, '0', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `netw_payplans`
--

CREATE TABLE `netw_payplans` (
  `ppid` int(12) NOT NULL,
  `ppbpid` int(12) DEFAULT 1,
  `ppname` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `planinfo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `planlogo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '../assets/image/plan_defaultimage.jpg',
  `planimg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '../assets/image/plan_defaultbg.jpg',
  `dlgroupid` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regfee` decimal(16,2) DEFAULT 150.00,
  `renewfee` decimal(16,2) DEFAULT 0.00,
  `expday` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `graceday` tinyint(3) DEFAULT 1,
  `expmbrmovetoid` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `limitref` mediumint(8) DEFAULT 0,
  `ifrollupto` tinyint(1) DEFAULT 1,
  `minref2getcm` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `cmdayhold` int(4) DEFAULT 0,
  `spillover` tinyint(1) DEFAULT 1,
  `minref4splovr` smallint(5) DEFAULT 0,
  `spill4ver` tinyint(1) DEFAULT 0,
  `matrixfillopt` tinyint(1) DEFAULT 0,
  `matrixcompression` tinyint(1) DEFAULT 1,
  `isrecycling` tinyint(1) DEFAULT 0,
  `recyclingto` tinyint(1) DEFAULT 0,
  `recyclingcm` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmdrlist` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmatchdrlist` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmlist` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmatchlist` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmrelist` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmatchrelist` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rwlist` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mbrpoint` float DEFAULT 0,
  `sprpointlist` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `planstatus` tinyint(1) DEFAULT 1,
  `plantorder` int(12) DEFAULT 0,
  `avalpaygates` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customplan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plantoken` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymupdate` datetime DEFAULT '2000-01-01 00:00:01',
  `clube_bonus` int(100) DEFAULT NULL,
  `pro_commission` int(100) DEFAULT NULL,
  `dipo_commission` int(100) DEFAULT NULL,
  `dilar_commission` int(100) DEFAULT NULL,
  `office_rent` int(100) DEFAULT NULL,
  `staf_fee` int(100) DEFAULT NULL,
  `entertainment_fee` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `netw_payplans`
--

INSERT INTO `netw_payplans` (`ppid`, `ppbpid`, `ppname`, `planinfo`, `planlogo`, `planimg`, `dlgroupid`, `regfee`, `renewfee`, `expday`, `graceday`, `expmbrmovetoid`, `limitref`, `ifrollupto`, `minref2getcm`, `cmdayhold`, `spillover`, `minref4splovr`, `spill4ver`, `matrixfillopt`, `matrixcompression`, `isrecycling`, `recyclingto`, `recyclingcm`, `cmdrlist`, `cmatchdrlist`, `cmlist`, `cmatchlist`, `cmrelist`, `cmatchrelist`, `rwlist`, `mbrpoint`, `sprpointlist`, `planstatus`, `plantorder`, `avalpaygates`, `customplan`, `plantoken`, `paymupdate`, `clube_bonus`, `pro_commission`, `dipo_commission`, `dilar_commission`, `office_rent`, `staf_fee`, `entertainment_fee`) VALUES
(1, 1, 'package Name', 'package Name testing', '../assets/imagextra/planlogo.png', '../assets/image/plan_defaultbg.jpg', NULL, '200.00', '0.00', '', 3, '', 55, 0, '0', 0, 0, 2, 0, 0, 1, 1, 0, NULL, '10', NULL, '', NULL, NULL, NULL, '30', 10, NULL, 1, 0, NULL, NULL, '|doreactive:1|, |isrenewbywallet:1|', '2021-08-13 17:58:40', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `netw_points`
--

CREATE TABLE `netw_points` (
  `poid` int(12) NOT NULL,
  `podatetm` datetime DEFAULT '2000-01-01 00:00:01',
  `popoint` float DEFAULT 0,
  `pomemo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pofromid` int(12) DEFAULT 0,
  `potoid` int(12) DEFAULT 0,
  `postatus` tinyint(1) DEFAULT 0,
  `potype` tinyint(1) DEFAULT 0,
  `poppid` int(12) DEFAULT 0,
  `potoken` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poadminfo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `netw_sessions`
--

CREATE TABLE `netw_sessions` (
  `sesid` int(11) NOT NULL,
  `sestype` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sesidmbr` int(12) DEFAULT 0,
  `seskey` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sestime` int(10) UNSIGNED DEFAULT 0,
  `sesdata` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sestoken` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `netw_sessions`
--

INSERT INTO `netw_sessions` (`sesid`, `sestype`, `sesidmbr`, `seskey`, `sestime`, `sesdata`, `sestoken`) VALUES
(180, 'admin', 0, '$2y$10$4sdH9d54D6kHKZGs6EnBVuDuqsXzoZjXPGZlBu23EZx2TwTk8BCqS', 1629179889, '|un:admin|, |ip:::1|', NULL),
(185, 'member', 78, '$2y$10$/5rGadiz.YQeI8ySGDfNgeX4zgDXfxBJtSVk7z8BhUI8QoA/WaFc.', 1629182951, '|un:sohel|, |ip:::1|', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `netw_transactions`
--

CREATE TABLE `netw_transactions` (
  `txid` int(12) NOT NULL,
  `txdatetm` datetime DEFAULT '2000-01-01 00:00:01',
  `txpaytype` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `txfromid` int(12) DEFAULT 0,
  `txtoid` int(12) DEFAULT 0,
  `txamount` decimal(16,2) DEFAULT 0.00,
  `txmemo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txbatch` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `txtmstamp` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `txinvid` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `txppid` int(12) DEFAULT 0,
  `txstatus` tinyint(1) DEFAULT 0,
  `txtoken` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txadminfo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `netw_transactions`
--

INSERT INTO `netw_transactions` (`txid`, `txdatetm`, `txpaytype`, `txfromid`, `txtoid`, `txamount`, `txmemo`, `txbatch`, `txtmstamp`, `txinvid`, `txppid`, `txstatus`, `txtoken`, `txadminfo`) VALUES
(155, '2021-08-16 08:50:31', 'Admin Approval', 71, 0, '200.00', 'Registration fee', 'MON081608-503562155', '2021-08-16 08:50:38', '', 1, 1, '|REG:62|, |isapproved:1|', NULL),
(156, '2021-08-16 08:51:37', 'Admin Approval', 72, 0, '200.00', 'Registration fee', 'MON081608-514363156', '2021-08-16 08:51:46', '', 1, 1, '|REG:63|, |isapproved:1|', NULL),
(157, '2021-08-16 08:51:46', 'system', 0, 71, '10.00', 'Referrer Commission', 'WLN081608-5248157', '2021-08-16 08:52:48', '', 1, 1, '|SRCTXID:156|, |SRCIDMBR:72|, |SRCLVPOS:1|, |LCM:PREF|, |WALT:IN|', NULL),
(158, '2021-08-16 08:53:57', 'Admin Approval', 73, 0, '200.00', 'Registration fee', 'MON081608-540364158', '2021-08-16 08:54:06', '', 1, 1, '|REG:64|, |isapproved:1|', NULL),
(159, '2021-08-16 08:54:06', 'system', 0, 71, '10.00', 'Referrer Commission', 'WLN081608-5457159', '2021-08-16 08:54:57', '', 1, 1, '|SRCTXID:158|, |SRCIDMBR:73|, |SRCLVPOS:1|, |LCM:PREF|, |WALT:IN|', NULL),
(160, '2021-08-16 08:54:07', 'system', 0, 71, '30.00', 'Level Reward', 'WLN081608-5457160', '2021-08-16 08:54:57', '', 1, 1, '|SRCTXID:158|, |SRCIDMBR:73|, |SRCLVPOS:1|, |LCM:FRWD1|, |WALT:IN|', NULL),
(161, '2021-08-16 12:47:46', 'Test Payment Sandbox', 74, 0, '200.00', 'Registration fee', 'MON081612-474765161', '2021-08-16 12:47:51', '', 1, 1, '|REG:65|, |isapproved:1|', NULL),
(162, '2021-08-16 12:47:52', 'system', 0, 71, '10.00', 'Referrer Commission', 'WLN081612-4802162', '2021-08-16 12:48:02', '', 1, 1, '|SRCTXID:161|, |SRCIDMBR:74|, |SRCLVPOS:1|, |LCM:PREF|, |WALT:IN|', NULL),
(163, '2021-08-16 12:52:49', 'Admin Approval', 75, 0, '200.00', 'Registration fee', 'MON081612-525366163', '2021-08-16 12:53:01', '', 1, 1, '|REG:66|, |isapproved:1|', NULL),
(164, '2021-08-16 12:53:01', 'system', 0, 74, '10.00', 'Referrer Commission', 'WLN081613-1438164', '2021-08-16 13:14:38', '', 1, 1, '|SRCTXID:163|, |SRCIDMBR:75|, |SRCLVPOS:1|, |LCM:PREF|, |WALT:IN|', NULL),
(165, '2021-08-16 13:59:56', 'Admin Approval', 76, 0, '200.00', 'Registration fee', 'MON081614-000367165', '2021-08-16 14:00:10', '', 1, 1, '|REG:67|, |isapproved:1|', NULL),
(166, '2021-08-16 14:00:10', 'system', 0, 75, '10.00', 'Referrer Commission', 'WLN081614-0407166', '2021-08-16 14:04:07', '', 1, 1, '|SRCTXID:165|, |SRCIDMBR:76|, |SRCLVPOS:1|, |LCM:PREF|, |WALT:IN|', NULL),
(167, '2021-08-16 14:05:28', 'Admin Approval', 77, 0, '200.00', 'Registration fee', 'MON081614-054068167', '2021-08-16 14:05:47', '', 1, 1, '|REG:68|, |isapproved:1|', NULL),
(168, '2021-08-16 14:05:47', 'system', 0, 76, '10.00', 'Referrer Commission', 'WLN081614-0807168', '2021-08-16 14:08:07', '', 1, 1, '|SRCTXID:167|, |SRCIDMBR:77|, |SRCLVPOS:1|, |LCM:PREF|, |WALT:IN|', NULL),
(169, '2021-08-16 14:11:54', 'Admin Approval', 78, 0, '200.00', 'Registration fee', 'TUE081708-485069169', '2021-08-17 08:48:55', '', 1, 1, '|REG:69|, |isapproved:1|', NULL),
(170, '2021-08-16 19:14:37', 'Admin Approval', 81, 0, '200.00', 'Registration fee', 'MON081619-144270170', '2021-08-16 19:14:45', '', 1, 1, '|REG:70|, |isapproved:1|', NULL),
(171, '2021-08-16 19:14:46', 'system', 0, 72, '10.00', 'Referrer Commission', 'WLN081619-1451171', '2021-08-16 19:14:51', '', 1, 1, '|SRCTXID:170|, |SRCIDMBR:81|, |SRCLVPOS:1|, |LCM:PREF|, |WALT:IN|', NULL),
(172, '2021-08-16 19:15:55', 'Admin Approval', 82, 0, '200.00', 'Registration fee', 'MON081619-160071172', '2021-08-16 19:16:05', '', 1, 1, '|REG:71|, |isapproved:1|', NULL),
(173, '2021-08-16 19:16:05', 'system', 0, 72, '10.00', 'Referrer Commission', 'WLN081619-1658173', '2021-08-16 19:16:58', '', 1, 1, '|SRCTXID:172|, |SRCIDMBR:82|, |SRCLVPOS:1|, |LCM:PREF|, |WALT:IN|', NULL),
(174, '2021-08-16 19:16:06', 'system', 0, 72, '30.00', 'Level Reward', 'WLN081619-1658174', '2021-08-16 19:16:58', '', 1, 1, '|SRCTXID:172|, |SRCIDMBR:82|, |SRCLVPOS:1|, |LCM:FRWD1|, |WALT:IN|', NULL),
(175, '2021-08-16 19:42:27', 'Admin Approval', 83, 0, '200.00', 'Registration fee', 'MON081619-423272175', '2021-08-16 19:42:37', '', 1, 1, '|REG:72|, |isapproved:1|', NULL),
(176, '2021-08-16 19:42:38', 'system', 0, 73, '10.00', 'Referrer Commission', 'WLN081619-4400176', '2021-08-16 19:44:00', '', 1, 1, '|SRCTXID:175|, |SRCIDMBR:83|, |SRCLVPOS:1|, |LCM:PREF|, |WALT:IN|', NULL),
(177, '2021-08-16 19:44:02', 'Admin Approval', 84, 0, '200.00', 'Registration fee', 'MON081619-440773177', '2021-08-16 19:44:11', '', 1, 1, '|REG:73|, |isapproved:1|', NULL),
(178, '2021-08-16 19:44:11', 'system', 0, 73, '10.00', 'Referrer Commission', 'WLN081619-4636178', '2021-08-16 19:46:36', '', 1, 1, '|SRCTXID:177|, |SRCIDMBR:84|, |SRCLVPOS:1|, |LCM:PREF|, |WALT:IN|', NULL),
(179, '2021-08-16 19:44:12', 'system', 0, 73, '30.00', 'Level Reward', 'WLN081619-4636179', '2021-08-16 19:46:36', '', 1, 1, '|SRCTXID:177|, |SRCIDMBR:84|, |SRCLVPOS:1|, |LCM:FRWD1|, |WALT:IN|', NULL),
(180, '2021-08-17 08:10:23', 'Admin Approval', 85, 0, '200.00', 'Registration fee', 'TUE081708-102874180', '2021-08-17 08:10:32', '', 1, 1, '|REG:74|, |isapproved:1|', NULL),
(181, '2021-08-17 08:10:32', 'system', 0, 82, '10.00', 'Referrer Commission', 'WLN081708-1123181', '2021-08-17 08:11:23', '', 1, 1, '|SRCTXID:180|, |SRCIDMBR:85|, |SRCLVPOS:1|, |LCM:PREF|, |WALT:IN|', NULL),
(182, '2021-08-17 08:48:55', 'system', 0, 77, '10.00', 'Referrer Commission', 'WLN081709-1519182', '2021-08-17 09:15:19', '', 1, 1, '|SRCTXID:169|, |SRCIDMBR:78|, |SRCLVPOS:1|, |LCM:PREF|, |WALT:IN|', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `netw_baseplan`
--
ALTER TABLE `netw_baseplan`
  ADD PRIMARY KEY (`bpid`);

--
-- Indexes for table `netw_configs`
--
ALTER TABLE `netw_configs`
  ADD PRIMARY KEY (`cfgid`);

--
-- Indexes for table `netw_files`
--
ALTER TABLE `netw_files`
  ADD PRIMARY KEY (`flid`);

--
-- Indexes for table `netw_groups`
--
ALTER TABLE `netw_groups`
  ADD PRIMARY KEY (`grid`);

--
-- Indexes for table `netw_invoices`
--
ALTER TABLE `netw_invoices`
  ADD PRIMARY KEY (`invid`);

--
-- Indexes for table `netw_mbrplans`
--
ALTER TABLE `netw_mbrplans`
  ADD PRIMARY KEY (`mpid`),
  ADD KEY `idmbr` (`idmbr`,`mppid`,`reg_date`,`idref`);

--
-- Indexes for table `netw_mbrs`
--
ALTER TABLE `netw_mbrs`
  ADD PRIMARY KEY (`id`,`username`);

--
-- Indexes for table `netw_notifytpl`
--
ALTER TABLE `netw_notifytpl`
  ADD PRIMARY KEY (`ntid`);

--
-- Indexes for table `netw_pages`
--
ALTER TABLE `netw_pages`
  ADD PRIMARY KEY (`pgid`);

--
-- Indexes for table `netw_paygates`
--
ALTER TABLE `netw_paygates`
  ADD PRIMARY KEY (`paygid`),
  ADD KEY `pgidmbr` (`pgidmbr`);

--
-- Indexes for table `netw_payplans`
--
ALTER TABLE `netw_payplans`
  ADD PRIMARY KEY (`ppid`);

--
-- Indexes for table `netw_points`
--
ALTER TABLE `netw_points`
  ADD PRIMARY KEY (`poid`);

--
-- Indexes for table `netw_sessions`
--
ALTER TABLE `netw_sessions`
  ADD PRIMARY KEY (`sesid`),
  ADD KEY `sestype` (`sestype`,`seskey`);

--
-- Indexes for table `netw_transactions`
--
ALTER TABLE `netw_transactions`
  ADD PRIMARY KEY (`txid`),
  ADD KEY `txdatetm` (`txdatetm`,`txfromid`,`txtoid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `netw_baseplan`
--
ALTER TABLE `netw_baseplan`
  MODIFY `bpid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `netw_configs`
--
ALTER TABLE `netw_configs`
  MODIFY `cfgid` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `netw_files`
--
ALTER TABLE `netw_files`
  MODIFY `flid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `netw_groups`
--
ALTER TABLE `netw_groups`
  MODIFY `grid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `netw_invoices`
--
ALTER TABLE `netw_invoices`
  MODIFY `invid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `netw_mbrplans`
--
ALTER TABLE `netw_mbrplans`
  MODIFY `mpid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `netw_mbrs`
--
ALTER TABLE `netw_mbrs`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `netw_notifytpl`
--
ALTER TABLE `netw_notifytpl`
  MODIFY `ntid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `netw_paygates`
--
ALTER TABLE `netw_paygates`
  MODIFY `paygid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `netw_payplans`
--
ALTER TABLE `netw_payplans`
  MODIFY `ppid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `netw_points`
--
ALTER TABLE `netw_points`
  MODIFY `poid` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `netw_sessions`
--
ALTER TABLE `netw_sessions`
  MODIFY `sesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `netw_transactions`
--
ALTER TABLE `netw_transactions`
  MODIFY `txid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
