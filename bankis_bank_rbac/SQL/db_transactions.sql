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
-- Database: `db_transactions`
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
-- Table structure for table `5006465081`
--

CREATE TABLE `5006465081` (
  `date` varchar(10) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `debit` int(6) NOT NULL,
  `credit` int(6) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `5006465081`
--

INSERT INTO `5006465081` (`date`, `remark`, `debit`, `credit`, `balance`) VALUES
('2020-06-10', 'New Account', 0, 1000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `5228035711`
--

CREATE TABLE `5228035711` (
  `date` varchar(10) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `debit` int(6) NOT NULL,
  `credit` int(6) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `5228035711`
--

INSERT INTO `5228035711` (`date`, `remark`, `debit`, `credit`, `balance`) VALUES
('2020-06-10', 'New Account', 0, 1000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `8900641686`
--

CREATE TABLE `8900641686` (
  `date` varchar(10) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `debit` int(6) NOT NULL,
  `credit` int(6) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `8900641686`
--

INSERT INTO `8900641686` (`date`, `remark`, `debit`, `credit`, `balance`) VALUES
('2020-06-09', 'New Account', 0, 1000, 1000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
