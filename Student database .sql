-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2022 at 11:15 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sms`
--
CREATE DATABASE IF NOT EXISTS `sms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sms`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `sr_no` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`sr_no`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin123@gmail.com', '11111');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `sr_no` int(10) NOT NULL AUTO_INCREMENT,
  `roll_no` int(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `mobile_no` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`sr_no`, `roll_no`, `name`, `father_name`, `class`, `mobile_no`, `email`, `password`, `remark`) VALUES
(1, 1001, 'Fanty Tandel', 'PQR', 'fy MSC', '1234567890', 'fanty@gmail.com', '11111', 'Good   '),
(2, 1002, 'Mahima Chaudri', 'ABC', 'sy MSC', '0987654321', 'mahima@gmail.com', '11111', 'Excillent'),
(3, 1003, 'aayush', 'QWE', 'fyMsc', '4975429653', 'aayush@gmail.com', '11111', 'Very good'),
(4, 1004, 'krina', 'RST', 'ty Bsc', '5439281056', 'krina@gmail.com', '11111', 'Excillent !'),
(5, 1005, 'Kesha', 'ASD', 'sy Msc', '7954321059', 'kesha@gmail.com', '11111', 'Good'),
(6, 1006, 'Ronak', 'ZXC', 'sy Bsc', '6549687032', 'Ronak@gmail.com', '11111', 'Very Good'),
(7, 1007, 'Devanshi', 'BNM', 'fy BCA', '6543216789', 'devanshi@gmail.com', '11111', 'Average'),
(8, 1008, 'Jaimini', 'GHJ', 'sy BCA', '5432195867', 'jaimini@gmil.com', '11111', 'Great Student'),
(9, 1009, 'Veer', 'HIJ', 'ty BCA', '7896543219', 'veer@gmail.com', '11111', 'Average'),
(10, 1010, 'Mahek', 'LMN', 'fy BCA', '1234568754', 'mahek@gmail.com', '11111', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `sr_no` int(10) NOT NULL,
  `t_id` int(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mobile` int(50) DEFAULT NULL,
  `cources` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`sr_no`, `t_id`, `name`, `mobile`, `cources`) VALUES
(0, 101, 'Raj Metha', 2147483647, 'Web Technology'),
(1, 102, 'Kishor Thakur', 2147483647, 'Software Engineering'),
(2, 103, 'Manisha Desai', 456789123, 'IST');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION
