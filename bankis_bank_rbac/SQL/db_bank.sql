-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2020 at 02:57 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `1101390073`
--

CREATE TABLE `1101390073` (
  `date` varchar(10) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `debit` int(6) NOT NULL,
  `credit` int(6) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1101390073`
--

INSERT INTO `1101390073` (`date`, `remark`, `debit`, `credit`, `balance`) VALUES
('2019-07-22', 'New Account', 0, 1000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `1143455119`
--

CREATE TABLE `1143455119` (
  `date` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `debit` int(6) NOT NULL,
  `credit` int(6) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `1143455119`
--

INSERT INTO `1143455119` (`date`, `remark`, `debit`, `credit`, `balance`) VALUES
('2019-10-30', 'New Account', 0, 1000, 1000),
('2019-10-30', 'transfer to 	1101390073', -500, 0, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `loan_info`
--

CREATE TABLE `loan_info` (
  `account_no` bigint(20) NOT NULL,
  `loan_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'no loan',
  `amount` int(10) DEFAULT 0,
  `interest` int(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_info`
--

INSERT INTO `loan_info` (`account_no`, `loan_type`, `amount`, `interest`) VALUES
(1101390073, 'student loan', 1492, 475),
(1101390073, 'student loan', 1492, 475),
(1101390073, 'student loan', 1492, 475),
(1143455119, 'home loan', 1000, 100),
(8900641686, 'no loan', 0, 0),
(5228035711, 'home loan', 101, 10);

-- --------------------------------------------------------

--
-- Table structure for table `loan_interest`
--

CREATE TABLE `loan_interest` (
  `loan_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interest` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_interest`
--

INSERT INTO `loan_interest` (`loan_type`, `interest`) VALUES
('home loan', 10),
('student loan', 3),
('car loan', 7),
('education loan', 5);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` varchar(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `account_no` bigint(20) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `pwd`, `account_no`, `role`) VALUES
('demo123@gmail.com', 'demo123@gmail.com', '123', 1101390073, 1),
('jelwin', 'jelwin', '12345', 1143455119, 1),
('k@kl.com', 'k@kl.com', '1', 5228035711, 2);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `account_no` bigint(20) NOT NULL,
  `card_no` bigint(20) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `acc_type` varchar(20) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `father` varchar(50) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `balance` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`account_no`, `card_no`, `firstname`, `lastname`, `email`, `phone`, `acc_type`, `address1`, `address2`, `city`, `state`, `country`, `father`, `nationality`, `balance`) VALUES
(1101390073, 1234456, 'Demo', 'Demo', 'demo123@gmail.com', 1234567890, 'saving', '123, xyz colony', 'near abc', 'pqr', 'def', 'India', 'qwe', 'Indian', 992),
(1143455119, 3252287008, 'lol', 'win', 'jelwin', 9113560056, 'saving', '#4-44/67, 4TH CROSS ROAD, PRASHANTH BAGH, ALAPE', '12345', 'PADIL', 'Karnataka', 'ssss', 'ffff', 'bbbb', 2000),
(5006465081, 1260207206, 'k', 'k', 'k@kk.com', 9876543210, 'Saving', '1', '1', '1', '1', '1', '1', '1', 1000),
(5228035711, 234936947, 'k', 'k', 'k@kl.com', 9876541230, 'Saving', '1', '1', '1', '1', '1', '1', '1', 1101),
(7692851527, 7771706292, 'k', 'k', 'k@k.com', 9876543210, 'saving', '1', '1', '1', '1', '1', '1', '1', 1000),
(8236168592, 8219546774, 'k', 'k', 'k@k.com', 9876543210, 'saving', '1', '1', '1', '1', '1', '1', '1', 1000),
(8307422388, 9440569212, 'k', 'k', 'k@k.com', 9876543210, 'saving', '1', '1', '1', '1', '1', '1', '1', 1000),
(8900641686, 3843845457, 'k', 'k', 'k@k.com', 9876543210, 'saving', '1', '1', '1', '1', '1', '1', '1', 1000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loan_info`
--
ALTER TABLE `loan_info`
  ADD KEY `account_no` (`account_no`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`account_no`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`account_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `loan_info`
--
ALTER TABLE `loan_info`
  ADD CONSTRAINT `loan_info_ibfk_1` FOREIGN KEY (`account_no`) REFERENCES `register` (`account_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
