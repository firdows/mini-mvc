-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2016 at 10:30 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `app_id` varchar(8) NOT NULL,
  `p_id` varchar(8) NOT NULL,
  `app_date` varchar(15) NOT NULL,
  `app_time` varchar(15) NOT NULL,
  `app_reason` varchar(200) NOT NULL,
  `app_status` varchar(2) NOT NULL,
  `s_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gecal_drugs`
--

CREATE TABLE `gecal_drugs` (
  `gc_id` int(6) NOT NULL,
  `m_id` varchar(255) NOT NULL,
  `gc_amount` varchar(255) NOT NULL,
  `gc_date` varchar(15) NOT NULL,
  `gc_because` varchar(255) NOT NULL,
  `s_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `m_id` int(8) NOT NULL,
  `m_name` varchar(150) NOT NULL,
  `m_volome` varchar(4) NOT NULL,
  `m_type` varchar(50) NOT NULL,
  `m_unit` varchar(50) NOT NULL,
  `m_per_unit` varchar(5) NOT NULL,
  `m_amount` varchar(10) NOT NULL,
  `m_price` varchar(8) NOT NULL,
  `m_stock` varchar(5) NOT NULL,
  `m_detail` varchar(255) NOT NULL,
  `m_exp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_no` int(8) NOT NULL,
  `order_date` varchar(15) NOT NULL,
  `m_id` varchar(255) NOT NULL,
  `order_amount` varchar(255) NOT NULL,
  `s_id` varchar(5) NOT NULL,
  `agent` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `p_id` varchar(8) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_surname` varchar(50) NOT NULL,
  `p_nid` varchar(13) NOT NULL,
  `p_birthday` varchar(15) NOT NULL,
  `p_age` int(3) NOT NULL,
  `p_national` varchar(30) NOT NULL,
  `p_sex` varchar(2) NOT NULL,
  `p_status` varchar(10) NOT NULL,
  `p_address` varchar(255) NOT NULL,
  `p_tel` varchar(10) NOT NULL,
  `p_wieght` float NOT NULL,
  `p_hight` float NOT NULL,
  `disease` varchar(100) NOT NULL,
  `blood` varchar(5) NOT NULL,
  `allergic` varchar(100) NOT NULL,
  `delegate` varchar(100) NOT NULL,
  `delegate_tel` varchar(10) NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `pv_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`p_id`, `p_name`, `p_surname`, `p_nid`, `p_birthday`, `p_age`, `p_national`, `p_sex`, `p_status`, `p_address`, `p_tel`, `p_wieght`, `p_hight`, `disease`, `blood`, `allergic`, `delegate`, `delegate_tel`, `relationship`, `pv_id`) VALUES
('p0000001', 'หมัด11', 'ศูนย์22', '', '', 0, '', '', '', '', '', 0, 0, '', '', '', '', '', '', 0),
('p0002', 'กรกมล', 'มณีนวล', '', '', 0, '', '', '', '', '', 0, 0, '', '', '', '', '', '', 0),
('p0003', 'lldldl', 'lddldl', '', '', 0, '', '', '', '', '', 0, 0, '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `paymedicine`
--

CREATE TABLE `paymedicine` (
  `pay_id` int(10) NOT NULL,
  `t_no` varchar(10) NOT NULL,
  `p_id` varchar(8) NOT NULL,
  `pay_date` varchar(15) NOT NULL,
  `m_id` varchar(255) NOT NULL,
  `pay_amount` varchar(255) NOT NULL,
  `pm_price` varchar(255) NOT NULL,
  `s_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `privilege`
--

CREATE TABLE `privilege` (
  `pv_id` int(3) NOT NULL,
  `pv_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `pv_detail` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qqq`
--

CREATE TABLE `qqq` (
  `qid` int(10) NOT NULL,
  `qname` varchar(100) NOT NULL,
  `qstatus` varchar(1) NOT NULL,
  `qdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `receive`
--

CREATE TABLE `receive` (
  `receive_no` int(8) NOT NULL,
  `order_no` varchar(8) NOT NULL,
  `receive_date` varchar(15) NOT NULL,
  `m_id` varchar(255) NOT NULL,
  `receive_amount` varchar(255) NOT NULL,
  `rec_not` varchar(255) NOT NULL,
  `rec_status` varchar(1) NOT NULL,
  `s_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `send`
--

CREATE TABLE `send` (
  `su_no` int(8) NOT NULL,
  `t_no` varchar(10) NOT NULL,
  `p_id` varchar(8) NOT NULL,
  `s_id` varchar(5) NOT NULL,
  `su_date` varchar(15) NOT NULL,
  `su_reason` varchar(255) NOT NULL,
  `su_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `s_id` int(5) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `s_surname` varchar(50) NOT NULL,
  `s_nid` varchar(13) NOT NULL,
  `s_sex` varchar(6) NOT NULL,
  `s_position` varchar(50) NOT NULL,
  `s_address` varchar(200) NOT NULL,
  `s_education` varchar(255) NOT NULL,
  `s_experience` varchar(255) NOT NULL,
  `s_tel` varchar(10) NOT NULL,
  `s_pic` varchar(20) NOT NULL,
  `s_per` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`) VALUES
(1, '222221'),
(2, 'ระบบ'),
(5, 'ทดสอบ'),
(6, '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `treat`
--

CREATE TABLE `treat` (
  `t_no` int(10) NOT NULL,
  `p_id` varchar(8) NOT NULL,
  `t_date` varchar(15) NOT NULL,
  `symptom` varchar(255) NOT NULL,
  `pressure` varchar(10) NOT NULL,
  `temp` varchar(5) NOT NULL,
  `pulse` varchar(5) NOT NULL,
  `breathe` varchar(5) NOT NULL,
  `resultjude` varchar(255) NOT NULL,
  `m_id` varchar(255) NOT NULL,
  `s_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `displayname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `displayname`) VALUES
(1, 'admin', 'admin', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`app_id`),
  ADD UNIQUE KEY `p_id` (`p_id`);

--
-- Indexes for table `gecal_drugs`
--
ALTER TABLE `gecal_drugs`
  ADD PRIMARY KEY (`gc_id`),
  ADD UNIQUE KEY `m_id` (`m_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_no`),
  ADD UNIQUE KEY `m_id` (`m_id`,`s_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `paymedicine`
--
ALTER TABLE `paymedicine`
  ADD PRIMARY KEY (`pay_id`),
  ADD UNIQUE KEY `t_no` (`t_no`,`p_id`,`m_id`,`s_id`);

--
-- Indexes for table `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`pv_id`);

--
-- Indexes for table `qqq`
--
ALTER TABLE `qqq`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `receive`
--
ALTER TABLE `receive`
  ADD PRIMARY KEY (`receive_no`),
  ADD UNIQUE KEY `order_no` (`order_no`,`s_id`);

--
-- Indexes for table `send`
--
ALTER TABLE `send`
  ADD PRIMARY KEY (`su_no`),
  ADD UNIQUE KEY `t_no` (`t_no`,`p_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treat`
--
ALTER TABLE `treat`
  ADD PRIMARY KEY (`t_no`),
  ADD UNIQUE KEY `p_id` (`p_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gecal_drugs`
--
ALTER TABLE `gecal_drugs`
  MODIFY `gc_id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `m_id` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_no` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `paymedicine`
--
ALTER TABLE `paymedicine`
  MODIFY `pay_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `privilege`
--
ALTER TABLE `privilege`
  MODIFY `pv_id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qqq`
--
ALTER TABLE `qqq`
  MODIFY `qid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `receive`
--
ALTER TABLE `receive`
  MODIFY `receive_no` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `send`
--
ALTER TABLE `send`
  MODIFY `su_no` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `s_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `treat`
--
ALTER TABLE `treat`
  MODIFY `t_no` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
