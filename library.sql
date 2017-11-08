-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2017 at 04:04 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `BookTitle` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `Edition` int(255) NOT NULL,
  `Year` int(4) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `ISBN` bigint(13) NOT NULL,
  `Reserved` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BookTitle`, `Author`, `Edition`, `Year`, `Category`, `ISBN`, `Reserved`) VALUES
('A fatal glass of beer', 'Stuart M. Kaminsky', 1, 1997, 'Fiction', 9780892966301, 'Y'),
('Camino Island', 'Grisham, John', 1, 2017, 'Fiction', 9780385543026, 'Y'),
('The Autobiography of Malcolm X', 'Malcolm X', 4, 1965, 'Biography', 9781586638337, 'N'),
('The Power of Intention', 'Dyer, Dr. Wayne W.', 1, 2005, 'Business', 9781401902162, 'N'),
('EAST IS WEST', 'Stark, Freya', 3, 1991, 'Travel', 1991, 'Y'),
('Technology Matters. Questions to Live With', 'Nye, David E.', 1, 2006, 'Technology', 9780262140935, 'Y'),
('Time To Eat (Michael Joseph Cookery)', 'Rhodes, Gary', 1, 2010, 'Cookery', 9780718153144, 'N'),
('Wild (Movie Tie-in Edition): From Lost to Found on the Pacific Crest Trail', 'Strayed, Cheryl', 3, 2014, 'Self-Help', 9781101873441, 'N'),
('DIETARY SUPPLEMENTS', 'Berlatsky, Noah', 1, 2014, 'Health', 9780737763171, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE IF NOT EXISTS `reservations` (
  `ISBN` bigint(13) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `ReservedDate` date NOT NULL,
  PRIMARY KEY (`ISBN`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`ISBN`, `Username`, `ReservedDate`) VALUES
(1991, 'user1', '2017-09-19'),
(9780262140935, 'user1', '2017-09-19'),
(9780385543026, 'user2', '2017-09-13'),
(9780892966301, 'user2', '2017-09-12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `Username` varchar(255) NOT NULL,
  `Password` text NOT NULL,
  `FirstName` text NOT NULL,
  `Surname` text NOT NULL,
  `Telephone` varchar(11) NOT NULL,
  PRIMARY KEY (`Username`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `Password`, `FirstName`, `Surname`, `Telephone`) VALUES
('user1', 'password', 'Rohan', 'Verma', '9595959595'),
('user2', 'password', 'Apurv', 'Gupta', '9898989898');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
