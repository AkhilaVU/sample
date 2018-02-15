 Server: localhost  -   Database: airlines
 
-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 19, 2017 at 09:55 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `airlines`
--

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE IF NOT EXISTS `flights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flightNo` varchar(10) NOT NULL,
  `airlineName` varchar(25) NOT NULL,
  `fromDest` varchar(11) NOT NULL,
  `toDest` varchar(11) NOT NULL,
  `departureDate` date NOT NULL,
  `departureTime` time NOT NULL DEFAULT '00:00:00',
  `arrivalDate` date NOT NULL,
  `arrivalTime` time NOT NULL DEFAULT '00:00:00',
  `class` varchar(15) NOT NULL DEFAULT 'Economy',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=118 ;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `flightNo`, `airlineName`, `fromDest`, `toDest`, `departureDate`, `departureTime`, `arrivalDate`, `arrivalTime`, `class`, `timestamp`) VALUES
(100, 'EK2267', 'Emirates', 'TRV', 'DXB', '2017-11-26', '23:00:00', '2017-11-30', '06:00:00', 'Economy', '2017-11-01 15:31:30'),
(101, 'G6366', 'Gulf Airways', 'DXB', 'TRV', '2017-11-22', '18:00:00', '2017-11-26', '23:00:00', 'Business', '2017-11-03 15:31:30'),
(102, 'B2345', 'Air Asia', 'DXB', 'MUM', '2017-11-21', '00:00:00', '2017-11-22', '00:00:00', 'Economy', '2017-11-20 01:45:04');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE IF NOT EXISTS `staffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `username`, `password`) VALUES
(77, 'admin', 'admin');

