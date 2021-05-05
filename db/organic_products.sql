-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2021 at 05:25 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `organic_products`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_users`
--

CREATE TABLE `tbl_admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(80) NOT NULL,
  `status` enum('A','I') NOT NULL DEFAULT 'A',
  `added_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin_users`
--

INSERT INTO `tbl_admin_users` (`id`, `username`, `mobile`, `email`, `password`, `status`, `added_date`, `updated_date`) VALUES
(1, 'Admin Users', '9876543210', 'test@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'A', '2021-03-14 17:07:44', '2021-03-25 08:15:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_approved_uesrs`
--

CREATE TABLE `tbl_approved_uesrs` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `amount_credited` varchar(50) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `join_date` datetime NOT NULL DEFAULT current_timestamp(),
  `existing_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_approved_uesrs`
--

INSERT INTO `tbl_approved_uesrs` (`id`, `userid`, `name`, `amount_credited`, `parent_id`, `status`, `join_date`, `existing_date`) VALUES
(1, 'USID9177', 'My Click Pays', '6000', 0, 'Y', '2021-05-02 14:16:23', '2021-05-02 14:54:00'),
(2, 'USID5557', 'My Click Pays', '4300', 1, 'Y', '2021-05-02 14:16:26', '2021-05-05 08:32:07'),
(3, 'USID0877', 'My Click Pays', '3000', 1, 'Y', '2021-05-02 14:16:30', '2021-05-02 15:09:29'),
(4, 'USID5395', 'My Click Pays', '2700', 2, 'Y', '2021-05-02 14:16:41', '2021-05-05 08:32:07'),
(5, 'USID8637', 'My Click Pays', '1400', 2, 'Y', '2021-05-02 14:16:44', '2021-05-02 14:50:18'),
(6, 'USID5842', 'wryate', '1400', 3, 'Y', '2021-05-02 14:16:47', '2021-05-02 14:52:35'),
(7, 'USID4129', 'wryate', '1400', 3, 'Y', '2021-05-02 14:16:50', '2021-05-02 15:09:29'),
(8, 'USID6725', 'mnudj', '1400', 4, 'Y', '2021-05-02 14:17:13', '2021-05-05 08:27:56'),
(9, 'USID6078', 'mnudj', '1100', 4, 'Y', '2021-05-02 14:17:16', '2021-05-05 08:32:07'),
(10, 'USID6394', 'My Click Pays', '600', 5, 'Y', '2021-05-02 14:17:21', '2021-05-02 14:49:22'),
(11, 'USID5842', 'wryate', '600', 5, 'Y', '2021-05-02 14:17:24', '2021-05-02 14:50:18'),
(12, 'USID6394', 'My Click Pays', '600', 6, 'Y', '2021-05-02 14:18:14', '2021-05-02 14:51:38'),
(13, 'USID6078', 'mnudj', '600', 6, 'Y', '2021-05-02 14:18:16', '2021-05-02 14:52:35'),
(14, 'USID8637', 'My Click Pays', '600', 7, 'Y', '2021-05-02 14:18:20', '2021-05-02 14:53:25'),
(15, 'USID5395', 'My Click Pays', '600', 7, 'Y', '2021-05-02 14:18:24', '2021-05-02 15:09:29'),
(16, 'USID0877', 'My Click Pays', '600', 8, 'Y', '2021-05-02 14:19:10', '2021-05-05 08:22:36'),
(17, 'USID5842', 'wryate', '600', 8, 'Y', '2021-05-02 14:30:47', '2021-05-05 08:27:55'),
(18, 'USID6394', 'My Click Pays', '600', 9, 'Y', '2021-05-02 14:31:02', '2021-05-05 08:31:47'),
(19, 'USID6078', 'mnudj', '300', 9, 'Y', '2021-05-02 14:31:16', '2021-05-05 08:32:07'),
(20, 'USID4129', 'wryate', '200', 10, 'Y', '2021-05-02 14:31:56', '2021-05-02 14:48:54'),
(21, 'USID6394', 'My Click Pays', '200', 10, 'Y', '2021-05-02 14:32:09', '2021-05-02 14:49:22'),
(22, 'USID4129', 'wryate', '200', 11, 'Y', '2021-05-02 14:32:27', '2021-05-02 14:49:50'),
(23, 'USID5842', 'wryate', '200', 11, 'Y', '2021-05-02 14:32:54', '2021-05-02 14:50:17'),
(24, 'USID4129', 'wryate', '200', 12, 'Y', '2021-05-02 14:34:05', '2021-05-02 14:51:07'),
(25, 'USID5842', 'wryate', '200', 12, 'Y', '2021-05-02 14:34:19', '2021-05-02 14:51:38'),
(26, 'USID6394', 'My Click Pays', '200', 13, 'Y', '2021-05-02 14:35:07', '2021-05-02 14:52:06'),
(27, 'USID8637', 'My Click Pays', '200', 13, 'Y', '2021-05-02 14:35:25', '2021-05-02 14:52:35'),
(28, 'USID4129', 'wryate', '200', 14, 'Y', '2021-05-02 14:35:55', '2021-05-02 14:52:59'),
(29, 'USID5842', 'wryate', '200', 14, 'Y', '2021-05-02 14:36:20', '2021-05-02 14:53:25'),
(30, 'USID0877', 'My Click Pays', '200', 15, 'Y', '2021-05-02 14:36:38', '2021-05-02 14:54:00'),
(31, 'USID5395', 'My Click Pays', '200', 15, 'Y', '2021-05-02 14:36:52', '2021-05-02 15:09:29'),
(32, 'USID9177', 'My Click Pays', '200', 16, 'Y', '2021-05-02 14:45:57', '2021-05-02 15:10:59'),
(33, 'USID5557', 'My Click Pays', '200', 16, 'Y', '2021-05-02 14:46:07', '2021-05-05 08:22:36'),
(34, 'USID0877', 'My Click Pays', '200', 17, 'Y', '2021-05-02 14:46:20', '2021-05-05 08:26:09'),
(35, 'USID5395', 'My Click Pays', '200', 17, 'Y', '2021-05-02 14:46:32', '2021-05-05 08:27:55'),
(36, 'USID8637', 'My Click Pays', '200', 18, 'Y', '2021-05-02 14:46:47', '2021-05-05 08:30:36'),
(37, 'USID4129', 'wryate', '200', 18, 'Y', '2021-05-02 14:47:49', '2021-05-05 08:31:47'),
(38, 'USID5842', 'wryate', '100', 19, 'Y', '2021-05-02 14:48:08', '2021-05-05 08:32:07'),
(39, 'USID6394', 'My Click Pays', '', 19, 'Y', '2021-05-02 14:48:20', '2021-05-02 14:48:20'),
(40, 'USID5395', 'My Click Pays', '', 20, 'Y', '2021-05-02 14:48:31', '2021-05-02 14:48:31'),
(41, 'USID4129', 'wryate', '', 20, 'Y', '2021-05-02 14:48:53', '2021-05-02 14:48:54'),
(42, 'USID5395', 'My Click Pays', '', 21, 'Y', '2021-05-02 14:49:10', '2021-05-02 14:49:10'),
(43, 'USID8637', 'My Click Pays', '', 21, 'Y', '2021-05-02 14:49:22', '2021-05-02 14:49:22'),
(44, 'USID4129', 'wryate', '', 22, 'Y', '2021-05-02 14:49:33', '2021-05-02 14:49:34'),
(45, 'USID5842', 'wryate', '', 22, 'Y', '2021-05-02 14:49:50', '2021-05-02 14:49:50'),
(46, 'USID5395', 'My Click Pays', '', 23, 'Y', '2021-05-02 14:50:06', '2021-05-02 14:50:07'),
(47, 'USID0877', 'My Click Pays', '', 23, 'Y', '2021-05-02 14:50:17', '2021-05-02 14:50:17'),
(48, 'USID8637', 'My Click Pays', '', 24, 'Y', '2021-05-02 14:50:32', '2021-05-02 14:50:32'),
(49, 'USID9177', 'My Click Pays', '', 24, 'Y', '2021-05-02 14:51:07', '2021-05-02 14:51:07'),
(50, 'USID5557', 'My Click Pays', '', 25, 'Y', '2021-05-02 14:51:24', '2021-05-02 14:51:25'),
(51, 'USID5395', 'My Click Pays', '', 25, 'Y', '2021-05-02 14:51:38', '2021-05-02 14:51:38'),
(52, 'USID5842', 'wryate', '', 26, 'Y', '2021-05-02 14:51:53', '2021-05-02 14:51:53'),
(53, 'USID4129', 'wryate', '', 26, 'Y', '2021-05-02 14:52:06', '2021-05-02 14:52:06'),
(54, 'USID5395', 'My Click Pays', '', 27, 'Y', '2021-05-02 14:52:23', '2021-05-02 14:52:24'),
(55, 'USID8637', 'My Click Pays', '', 27, 'Y', '2021-05-02 14:52:34', '2021-05-02 14:52:35'),
(56, 'USID4129', 'wryate', '', 28, 'Y', '2021-05-02 14:52:46', '2021-05-02 14:52:47'),
(57, 'USID5842', 'wryate', '', 28, 'Y', '2021-05-02 14:52:59', '2021-05-02 14:52:59'),
(58, 'USID6394', 'My Click Pays', '', 29, 'Y', '2021-05-02 14:53:12', '2021-05-02 14:53:12'),
(59, 'USID0877', 'My Click Pays', '', 29, 'Y', '2021-05-02 14:53:24', '2021-05-02 14:53:25'),
(60, 'USID4129', 'wryate', '', 30, 'Y', '2021-05-02 14:53:40', '2021-05-02 14:53:41'),
(61, 'USID0877', 'My Click Pays', '', 30, 'Y', '2021-05-02 14:53:59', '2021-05-02 14:53:59'),
(62, 'USID9177', 'My Click Pays', '', 31, 'Y', '2021-05-02 15:09:15', '2021-05-02 15:09:15'),
(63, 'USID5557', 'My Click Pays', '', 31, 'Y', '2021-05-02 15:09:28', '2021-05-02 15:09:29'),
(64, 'USID0877', 'My Click Pays', '', 32, 'Y', '2021-05-02 15:10:41', '2021-05-02 15:10:41'),
(65, 'USID5557', 'My Click Pays', '', 32, 'Y', '2021-05-02 15:10:58', '2021-05-02 15:10:58'),
(66, 'USID9177', 'My Click Pays', '', 33, 'Y', '2021-05-02 15:11:39', '2021-05-02 15:11:39'),
(67, 'USID5557', 'My Click Pays', '', 33, 'Y', '2021-05-05 08:22:34', '2021-05-05 08:22:35'),
(68, 'USID0877', 'My Click Pays', '', 34, 'Y', '2021-05-05 08:23:37', '2021-05-05 08:23:41'),
(69, 'USID0877', 'My Click Pays', '', 34, 'Y', '2021-05-05 08:26:09', '2021-05-05 08:26:09'),
(70, 'USID0877', 'My Click Pays', '', 35, 'Y', '2021-05-05 08:26:40', '2021-05-05 08:26:41'),
(71, 'USID0877', 'My Click Pays', '', 35, 'Y', '2021-05-05 08:27:55', '2021-05-05 08:27:55'),
(72, 'USID0877', 'My Click Pays', '', 36, 'Y', '2021-05-05 08:28:07', '2021-05-05 08:28:07'),
(73, 'USID5395', 'My Click Pays', '', 36, 'Y', '2021-05-05 08:30:35', '2021-05-05 08:30:36'),
(74, 'USID8637', 'My Click Pays', '', 37, 'Y', '2021-05-05 08:31:33', '2021-05-05 08:31:34'),
(75, 'USID4129', 'wryate', '', 37, 'Y', '2021-05-05 08:31:46', '2021-05-05 08:31:47'),
(76, 'USID5842', 'wryate', '', 38, 'Y', '2021-05-05 08:32:05', '2021-05-05 08:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_no` varchar(100) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `ifsc_code` varchar(50) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `if_deposited` enum('Y','N') DEFAULT 'N',
  `deposit_amt` varchar(100) NOT NULL,
  `deposit_date` varchar(100) NOT NULL,
  `order_by` int(11) NOT NULL,
  `credited_total_amt` varchar(100) NOT NULL,
  `credited_amt` varchar(50) NOT NULL,
  `if_credited` enum('Y','N') NOT NULL DEFAULT 'N',
  `credited_date` varchar(50) NOT NULL,
  `status` enum('A','N','I') NOT NULL DEFAULT 'I',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `userid`, `name`, `mobile`, `email`, `account_name`, `account_no`, `bank_name`, `ifsc_code`, `branch_name`, `password`, `if_deposited`, `deposit_amt`, `deposit_date`, `order_by`, `credited_total_amt`, `credited_amt`, `if_credited`, `credited_date`, `status`, `created_date`, `updated_date`) VALUES
(1, 'USID9177', 'My Click Pays', '4343343535', 'man@dd.ddi', 'maniya', '4544656', 'mfmgfh', 'twt5454', 'gfshsh', 'f5d2fac3dfc04cdc4f2f444767d0f1ae', 'Y', '', '', 0, '', '', 'N', '', 'I', '2021-04-01 10:58:43', '2021-05-02 15:11:39'),
(2, 'USID5557', 'My Click Pays', '4343343535', 'man@dd.ddi', 'maniya', '4544656', 'mfmgfh', 'twt5454', 'gfshsh', 'f5d2fac3dfc04cdc4f2f444767d0f1ae', 'Y', '', '', 0, '', '', 'N', '', 'I', '2021-04-01 11:00:22', '2021-05-05 08:22:33'),
(3, 'USID0877', 'My Click Pays', '4343343535', 'man@dd.ddi', 'maniya', '4544656', 'mfmgfh', 'twt5454', 'gfshsh', 'f5d2fac3dfc04cdc4f2f444767d0f1ae', 'Y', '', '', 0, '', '', 'N', '', 'I', '2021-04-01 11:01:30', '2021-05-05 08:23:36'),
(4, 'USID5395', 'My Click Pays', '4343343535', 'man@dd.ddi', 'maniya', '4544656', 'mfmgfh', 'twt5454', 'gfshsh', 'f5d2fac3dfc04cdc4f2f444767d0f1ae', 'Y', '', '', 0, '', '', 'N', '', 'I', '2021-04-01 11:02:04', '2021-05-05 08:30:35'),
(5, 'USID8637', 'My Click Pays', '4343343535', 'mfdf@g.hghh', '', '4544656', 'mfmgfh', 'twt5454', 'gfshsh', 'f5d2fac3dfc04cdc4f2f444767d0f1ae', 'Y', '', '', 0, '', '', 'N', '', 'I', '2021-04-01 11:05:27', '2021-05-05 08:31:32'),
(6, 'USID4129', 'wryate', '64636', 'eyty@daa.hf', 'maniya', '536566', 'ryyetyay', 'rtryteu53', 'etyyt', 'f5d2fac3dfc04cdc4f2f444767d0f1ae', 'Y', '', '', 0, '', '', 'N', '', 'I', '2021-04-01 11:06:13', '2021-05-05 08:31:45'),
(7, 'USID5842', 'wryate', '64636', 'eyty@daa.hf', 'maniya', '536566', 'ryyetyay', 'rtryteu53', 'etyyt', 'f5d2fac3dfc04cdc4f2f444767d0f1ae', 'Y', '', '', 0, '', '', 'N', '', 'I', '2021-04-01 11:09:55', '2021-05-05 08:32:04'),
(8, 'USID6394', 'My Click Pays', '23445555', 'fsfhshdh@dgh.dddddgh', 'maniya', 'retht', '6356576', '45754', 'tyytu', 'f5d2fac3dfc04cdc4f2f444767d0f1ae', 'N', '', '', 0, '', '', 'N', '', 'I', '2021-04-02 08:21:36', '2021-04-09 11:29:02'),
(9, 'USID6078', 'mnudj', '7667', 'hgds@df.dfd', 'fdf', '786dsff6dg', 'hshfdjh', 'tyd', 'd', '202cb962ac59075b964b07152d234b70', 'N', '', '', 0, '', '', 'N', '', 'I', '2021-04-03 22:51:18', '2021-04-09 11:07:30'),
(10, 'USID6725', 'mnudj', '7667', '', '', '786dsff6dg', 'hshfdjh', 'tyd', 'd', 'd41d8cd98f00b204e9800998ecf8427e', 'N', '', '', 0, '', '', 'N', '', 'I', '2021-04-03 22:51:26', '2021-04-09 11:29:30'),
(11, 'USID4262', 'mnudj', '7667', '', '', '786dsff6dg', 'hshfdjh', 'tyd', 'd', 'd41d8cd98f00b204e9800998ecf8427e', 'N', '', '', 0, '', '', 'N', '', 'I', '2021-04-03 22:51:31', '2021-04-03 22:51:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin_users`
--
ALTER TABLE `tbl_admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_approved_uesrs`
--
ALTER TABLE `tbl_approved_uesrs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin_users`
--
ALTER TABLE `tbl_admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_approved_uesrs`
--
ALTER TABLE `tbl_approved_uesrs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
