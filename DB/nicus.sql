-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 15, 2017 at 06:02 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nicus`
--

-- --------------------------------------------------------

--
-- Table structure for table `authorities`
--

CREATE TABLE IF NOT EXISTS `authorities` (
  `username` varchar(255) NOT NULL,
  `authority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authorities`
--

INSERT INTO `authorities` (`username`, `authority`) VALUES
('Raslan', 'ROLE_USER'),
('Abdo@Nicus', 'ROLE_USER'),
('Abdodd@Nicus', 'ROLE_USER'),
('REEE@Nicus', 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `nicu`
--

CREATE TABLE IF NOT EXISTS `nicu` (
  `NicuId` varchar(255) NOT NULL,
  `HospAddress` varchar(255) DEFAULT NULL,
  `HospEmail` varchar(255) DEFAULT NULL,
  `HospName` varchar(255) DEFAULT NULL,
  `HospSubAddress` varchar(255) DEFAULT NULL,
  `NicuCost` varchar(255) DEFAULT NULL,
  `NicuDesc` varchar(255) DEFAULT NULL,
  `NicuStatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NicuId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nicu`
--

INSERT INTO `nicu` (`NicuId`, `HospAddress`, `HospEmail`, `HospName`, `HospSubAddress`, `NicuCost`, `NicuDesc`, `NicuStatus`) VALUES
('bbn', 'Garbeya', 'raslan.shabaan@gmail.com', 'REEE', 'Qut', '500', 'Yellow', 'Empty'),
('f12', 'Garbeya', 'raslan.shabaan@gmail.com', 'REEE', 'Qut', '522', 'O2', 'Busy'),
('205', 'Garbeya', 'raslan.shabaan@gmail.com', 'REEE', 'Qut', '3', 'Yellow', 'Empty'),
('f16', 'Garbeya', 'raslan.shabaan@gmail.com', 'REEE', 'Qut', '200', 'Faver', 'Empty'),
('g', 'Garbeya', 'raslan.shabaan@gmail.com', 'REEE', 'Qut', '3', 'Weight', 'Empty');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `Hospital_Email` varchar(255) NOT NULL,
  `Hospital_Address` varchar(255) DEFAULT NULL,
  `Hospital_Gov` varchar(255) DEFAULT NULL,
  `Hospital_Name` varchar(255) DEFAULT NULL,
  `Hospital_Password` varchar(255) DEFAULT NULL,
  `Hospital_Phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Hospital_Email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`Hospital_Email`, `Hospital_Address`, `Hospital_Gov`, `Hospital_Name`, `Hospital_Password`, `Hospital_Phone`) VALUES
('ssss@g.com', 'banzena', 'Menofia', 'Abdo', 'fbdfaf7ac2618558053d83512a82bf9a', '01004125630'),
('ssss@g.comddd', 'ddd', 'Giza', 'Abdodd', 'c6f057b86584942e415435ffb1fa93d4', '01004125630'),
('raslan.shabaan@gmail.com', 'Qut', 'Garbeya', 'REEE', '202cb962ac59075b964b07152d234b70', '01004523652');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(255) NOT NULL,
  `HospEmail` varchar(255) DEFAULT NULL,
  `enabled` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `HospEmail`, `enabled`, `password`) VALUES
('Raslan', 'x@z', 1, '9e8a307396ee45a99e25a8398674a222'),
('Abdo@Nicus', NULL, 1, 'fbdfaf7ac2618558053d83512a82bf9a'),
('Abdodd@Nicus', 'ssss@g.comddd', 1, 'c6f057b86584942e415435ffb1fa93d4'),
('REEE@Nicus', 'raslan.shabaan@gmail.com', 1, '202cb962ac59075b964b07152d234b70');
