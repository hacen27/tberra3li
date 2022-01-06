-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 06, 2022 at 06:32 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16  

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tberra3li`
--
CREATE DATABASE IF NOT EXISTS `tberra3li` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tberra3li`;

-- --------------------------------------------------------

--
-- Table structure for table `etablissement`
--

CREATE TABLE IF NOT EXISTS `etablissement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `N°Commerciale` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `lieu` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `poste`
--

CREATE TABLE IF NOT EXISTS `poste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres_unité_sang` int(11) NOT NULL,
  `durée_maximale` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `nom` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `groupe_sang` varchar(11) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `état_sanitaire` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `etat` tinyint(2) NOT NULL,
  `hôpital_proche` varchar(255) DEFAULT NULL,
  `lieu` varchar(255) DEFAULT NULL,
  `NNI` int(10) NOT NULL,
  PRIMARY KEY (`NNI`),
  UNIQUE KEY `numero` (`numero`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
