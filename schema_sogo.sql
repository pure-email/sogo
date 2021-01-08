-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 29, 2020 at 11:45 AM
-- Server version: 10.1.47-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Table structure for table `sogo_acl`
--

CREATE TABLE `sogo_acl` (
  `c_folder_id` int(11) NOT NULL,
  `c_object` varchar(255) NOT NULL,
  `c_uid` varchar(255) NOT NULL,
  `c_role` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sogo_alarms_folder`
--

CREATE TABLE `sogo_alarms_folder` (
  `c_path` varchar(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_uid` varchar(255) NOT NULL,
  `c_recurrence_id` int(11) DEFAULT NULL,
  `c_alarm_number` int(11) NOT NULL,
  `c_alarm_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sogo_cache_folder`
--

CREATE TABLE `sogo_cache_folder` (
  `c_uid` varchar(255) NOT NULL,
  `c_path` varchar(255) NOT NULL,
  `c_parent_path` varchar(255) DEFAULT NULL,
  `c_type` tinyint(3) UNSIGNED NOT NULL,
  `c_creationdate` int(11) NOT NULL,
  `c_lastmodified` int(11) NOT NULL,
  `c_version` int(11) NOT NULL DEFAULT '0',
  `c_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `c_content` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sogo_folder_info`
--

CREATE TABLE `sogo_folder_info` (
  `c_folder_id` bigint(20) UNSIGNED NOT NULL,
  `c_path` varchar(255) NOT NULL,
  `c_path1` varchar(255) NOT NULL,
  `c_path2` varchar(255) DEFAULT NULL,
  `c_path3` varchar(255) DEFAULT NULL,
  `c_path4` varchar(255) DEFAULT NULL,
  `c_foldername` varchar(255) NOT NULL,
  `c_location` varchar(2048) DEFAULT NULL,
  `c_quick_location` varchar(2048) DEFAULT NULL,
  `c_acl_location` varchar(2048) DEFAULT NULL,
  `c_folder_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sogo_quick_appointment`
--

CREATE TABLE `sogo_quick_appointment` (
  `c_folder_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_uid` varchar(255) NOT NULL,
  `c_startdate` int(11) DEFAULT NULL,
  `c_enddate` int(11) DEFAULT NULL,
  `c_cycleenddate` int(11) DEFAULT NULL,
  `c_title` varchar(1000) NOT NULL,
  `c_participants` text,
  `c_isallday` int(11) DEFAULT NULL,
  `c_iscycle` int(11) DEFAULT NULL,
  `c_cycleinfo` text,
  `c_classification` int(11) NOT NULL,
  `c_isopaque` int(11) NOT NULL,
  `c_status` int(11) NOT NULL,
  `c_priority` int(11) DEFAULT NULL,
  `c_location` varchar(255) DEFAULT NULL,
  `c_orgmail` varchar(255) DEFAULT NULL,
  `c_partmails` text,
  `c_partstates` text,
  `c_category` varchar(255) DEFAULT NULL,
  `c_sequence` int(11) DEFAULT NULL,
  `c_component` varchar(10) NOT NULL,
  `c_nextalarm` int(11) DEFAULT NULL,
  `c_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sogo_quick_contact`
--

CREATE TABLE `sogo_quick_contact` (
  `c_folder_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_givenname` varchar(255) DEFAULT NULL,
  `c_cn` varchar(255) DEFAULT NULL,
  `c_sn` varchar(255) DEFAULT NULL,
  `c_screenname` varchar(255) DEFAULT NULL,
  `c_l` varchar(255) DEFAULT NULL,
  `c_mail` text,
  `c_o` varchar(255) DEFAULT NULL,
  `c_ou` varchar(255) DEFAULT NULL,
  `c_telephonenumber` varchar(255) DEFAULT NULL,
  `c_categories` varchar(255) DEFAULT NULL,
  `c_component` varchar(10) NOT NULL,
  `c_hascertificate` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sogo_sessions_folder`
--

CREATE TABLE `sogo_sessions_folder` (
  `c_id` varchar(255) NOT NULL,
  `c_value` varchar(255) NOT NULL,
  `c_creationdate` int(11) NOT NULL,
  `c_lastseen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sogo_store`
--

CREATE TABLE `sogo_store` (
  `c_folder_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL DEFAULT '',
  `c_content` mediumtext NOT NULL,
  `c_creationdate` int(11) NOT NULL,
  `c_lastmodified` int(11) NOT NULL,
  `c_version` int(11) NOT NULL,
  `c_deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sogo_user_profile`
--

CREATE TABLE `sogo_user_profile` (
  `c_uid` varchar(255) NOT NULL,
  `c_defaults` longtext,
  `c_settings` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sogo_view`
--

CREATE TABLE `sogo_view` (
  `c_uid` varchar(255) NOT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `c_password` varchar(128) DEFAULT NULL,
  `c_cn` varchar(128) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sogo_acl`
--
ALTER TABLE `sogo_acl`
  ADD KEY `sogo_acl_c_folder_id_idx` (`c_folder_id`),
  ADD KEY `sogo_acl_c_uid_idx` (`c_uid`);

--
-- Indexes for table `sogo_cache_folder`
--
ALTER TABLE `sogo_cache_folder`
  ADD PRIMARY KEY (`c_uid`,`c_path`);

--
-- Indexes for table `sogo_folder_info`
--
ALTER TABLE `sogo_folder_info`
  ADD PRIMARY KEY (`c_path`),
  ADD UNIQUE KEY `c_folder_id` (`c_folder_id`);

--
-- Indexes for table `sogo_quick_appointment`
--
ALTER TABLE `sogo_quick_appointment`
  ADD PRIMARY KEY (`c_folder_id`,`c_name`);

--
-- Indexes for table `sogo_quick_contact`
--
ALTER TABLE `sogo_quick_contact`
  ADD PRIMARY KEY (`c_folder_id`,`c_name`);

--
-- Indexes for table `sogo_sessions_folder`
--
ALTER TABLE `sogo_sessions_folder`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `sogo_store`
--
ALTER TABLE `sogo_store`
  ADD PRIMARY KEY (`c_folder_id`,`c_name`);

--
-- Indexes for table `sogo_user_profile`
--
ALTER TABLE `sogo_user_profile`
  ADD PRIMARY KEY (`c_uid`);

--
-- Indexes for table `sogo_view`
--
ALTER TABLE `sogo_view`
  ADD PRIMARY KEY (`c_uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sogo_folder_info`
--
ALTER TABLE `sogo_folder_info`
  MODIFY `c_folder_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
