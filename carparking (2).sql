-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2021 at 07:22 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carparking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(40) DEFAULT NULL,
  `userName` varchar(40) NOT NULL,
  `pass` varchar(10) DEFAULT NULL,
  `empid` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `parkedcar`
--

CREATE TABLE `parkedcar` (
  `ticketNumber` varchar(10) NOT NULL,
  `carNumber` varchar(20) NOT NULL,
  `timeofstart` datetime NOT NULL,
  `agentid` int(11) NOT NULL,
  `slotNum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parkedcar`
--

INSERT INTO `parkedcar` (`ticketNumber`, `carNumber`, `timeofstart`, `agentid`, `slotNum`) VALUES
('CPS-1', 'MP 04  CA 5423', '2018-01-04 11:09:00', 1, 1),
('CPS-3', 'MP 04  NA 1234', '2021-03-01 14:40:11', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `prakings`
--

CREATE TABLE `prakings` (
  `carNumber` varchar(20) DEFAULT NULL,
  `checkIn` datetime DEFAULT NULL,
  `checkout` datetime DEFAULT NULL,
  `price` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prakings`
--

INSERT INTO `prakings` (`carNumber`, `checkIn`, `checkout`, `price`) VALUES
('MP 04  NA 1234', '2021-03-01 13:52:47', '2021-03-03 00:15:32', 75),
('MP 04  NA 1234', '2021-03-01 13:52:47', '2021-03-03 00:16:35', 75),
('MP 04  NS 4534', '2021-03-03 00:20:29', '2021-03-03 00:21:04', 0),
('MP 04  NS 4534', '2021-03-03 00:20:29', '2021-03-03 00:22:04', 0),
('MP 04  NA 1234', '2021-03-01 13:52:47', '2021-03-03 00:24:07', 75),
('MP 04  PA 1212', '2021-03-02 11:31:28', '2021-03-03 00:30:41', 60),
('HP 98  CA 0909', '2021-03-03 00:36:16', '2021-03-03 00:36:53', 5),
('MH 99  OP 0000', '2021-03-05 11:45:52', '2021-03-05 11:47:06', 5),
('MP 99  QW 1234', '2021-03-05 11:48:56', '2021-03-05 11:49:20', 5);

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

CREATE TABLE `slot` (
  `slotnum` int(11) NOT NULL,
  `status` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slot`
--

INSERT INTO `slot` (`slotnum`, `status`) VALUES
(1, 'Full'),
(2, 'Full'),
(3, 'Full'),
(4, 'NULL'),
(5, 'Full'),
(6, 'NULL'),
(7, 'NULL'),
(8, 'NULL'),
(9, 'NULL'),
(10, 'NULL'),
(11, 'NULL'),
(12, 'NULL'),
(13, 'NULL'),
(14, 'NULL'),
(15, 'NULL'),
(16, 'NULL'),
(17, 'NULL'),
(18, 'NULL'),
(19, 'NULL'),
(20, 'NULL'),
(21, 'NULL'),
(22, 'NULL'),
(23, 'NULL'),
(24, 'NULL'),
(25, 'NULL'),
(26, 'NULL'),
(27, 'NULL'),
(28, 'NULL'),
(29, 'NULL'),
(30, 'NULL'),
(31, 'NULL'),
(32, 'NULL'),
(33, 'NULL'),
(34, 'NULL'),
(35, 'NULL'),
(36, 'NULL'),
(37, 'NULL'),
(38, 'NULL'),
(39, 'NULL'),
(40, 'NULL'),
(41, 'NULL'),
(42, 'NULL'),
(43, 'NULL'),
(44, 'NULL'),
(45, 'NULL'),
(46, 'NULL'),
(47, 'NULL'),
(48, 'NULL'),
(49, 'NULL'),
(50, 'NULL'),
(51, 'NULL'),
(52, 'NULL'),
(53, 'NULL'),
(54, 'NULL'),
(55, 'NULL'),
(56, 'NULL'),
(57, 'NULL'),
(58, 'NULL'),
(59, 'NULL'),
(60, 'NULL'),
(61, 'NULL'),
(62, 'NULL'),
(63, 'NULL'),
(64, 'NULL'),
(65, 'NULL'),
(66, 'NULL'),
(67, 'NULL'),
(68, 'NULL'),
(69, 'NULL'),
(70, 'NULL'),
(71, 'NULL'),
(72, 'NULL'),
(73, 'NULL'),
(74, 'NULL'),
(75, 'NULL'),
(76, 'NULL'),
(77, 'NULL'),
(78, 'NULL'),
(79, 'NULL'),
(80, 'NULL'),
(81, 'NULL'),
(82, 'NULL'),
(83, 'NULL'),
(84, 'NULL'),
(85, 'NULL'),
(86, 'NULL'),
(87, 'NULL'),
(88, 'NULL'),
(89, 'NULL'),
(90, 'NULL'),
(91, 'NULL'),
(92, 'NULL'),
(93, 'NULL'),
(94, 'NULL'),
(95, 'NULL'),
(96, 'NULL'),
(97, 'NULL'),
(98, 'NULL'),
(99, 'NULL'),
(100, 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(50) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(12) NOT NULL,
  `tag` varchar(10) DEFAULT NULL,
  `s_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `pass`, `username`, `tag`, `s_id`) VALUES
('Prajjwal Singh', '1234', 'Admin_prajsi', 'Admin', 1),
('Prajjwal', '2121', 'Agnt_PS', 'Agent', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`userName`),
  ADD UNIQUE KEY `empid` (`empid`);

--
-- Indexes for table `parkedcar`
--
ALTER TABLE `parkedcar`
  ADD PRIMARY KEY (`ticketNumber`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `slotNum` (`slotNum`);

--
-- Indexes for table `slot`
--
ALTER TABLE `slot`
  ADD PRIMARY KEY (`slotnum`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `s_id` (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `parkedcar`
--
ALTER TABLE `parkedcar`
  ADD CONSTRAINT `parkedcar_ibfk_1` FOREIGN KEY (`agentid`) REFERENCES `users` (`s_id`),
  ADD CONSTRAINT `parkedcar_ibfk_2` FOREIGN KEY (`slotNum`) REFERENCES `slot` (`slotnum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
