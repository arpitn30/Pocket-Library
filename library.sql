-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2016 at 06:16 AM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

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
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `score` int(10) NOT NULL,
  `action` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `uid`, `name`, `author`, `score`, `action`, `datetime`) VALUES
(9, 1, 'ANGELS AND DEMONS', 'DAN BROWN', 9, 'ADD', '2016-04-16 08:16:56'),
(10, 1, 'THE DA VINCI CODE', 'DAN BROWN', 8, 'ADD', '2016-04-16 08:18:21'),
(11, 1, 'FIVE POINT SOMEONE', 'CHETAN BHAGAT', 8, 'ADD', '2016-04-16 08:18:50'),
(12, 1, 'THE DA VINCI CODE', 'DAN BROWN', 8, 'REMOVE', '2016-04-16 08:18:59'),
(13, 1, 'ANGELS AND DEMONS', 'DAN BROWN', 9, 'REMOVE', '2016-04-16 08:19:02'),
(14, 1, 'FIVE POINT SOMEONE', 'CHETAN BHAGAT', 8, 'REMOVE', '2016-04-16 08:19:06'),
(15, 1, 'ANGELS AND DEMONS', 'DAN BROWN', 9, 'ADD', '2016-04-16 08:45:18'),
(16, 1, 'FIVE POINT SOMEONE', 'CHETAN BHAGAT', 7, 'ADD', '2016-04-16 08:45:48'),
(17, 1, 'THE DA VINCI CODE', 'DAN BROWN', 8, 'ADD', '2016-04-16 08:46:07'),
(18, 1, '2 STATES', 'CHETAN BHAGAT', 6, 'ADD/EDIT', '2016-04-16 10:44:44'),
(19, 3, 'MURDER ON THE ORIENT EXPRESS', 'AGATHA CHRISTIE', 8, 'ADD/EDIT', '2016-04-16 10:48:29'),
(20, 3, 'DEATH ON THE NILE', 'AGATHA CHRISTIE', 6, 'ADD/EDIT', '2016-04-16 10:49:01'),
(21, 3, 'THE HOUND OF THE BASKERVILLES', 'ARTHUR CONAN DOYLE', 9, 'ADD/EDIT', '2016-04-16 10:52:12'),
(22, 1, 'DIGITAL FORTRESS', 'DAN BROWN', 9, 'ADD/EDIT', '2016-04-16 12:08:03'),
(23, 1, 'DIGITAL FORTRESS', 'DAN BROWN', 9, 'ADD/EDIT', '2016-04-16 12:15:10'),
(24, 1, 'DIGITAL FORTRESS', 'DAN BROWN', 8, 'ADD/EDIT', '2016-04-16 12:18:25'),
(25, 1, 'DIGITAL FORTRESS', 'DAN BROWN', 8, 'REMOVE', '2016-04-16 12:20:20'),
(26, 1, 'DIGITAL FORTRESS', 'DAN BROWN', 9, 'ADD/EDIT', '2016-04-16 12:21:31'),
(27, 1, 'DIGITAL FORTRESS', 'DAN BROWN', 9, 'ADD/EDIT', '2016-04-16 12:26:22'),
(28, 1, 'DIGITAL FORTRESS', 'DAN BROWN', 10, 'ADD/EDIT', '2016-04-16 12:28:01'),
(29, 1, 'FIVE POINT SOMEONE', 'CHETAN BHAGAT', 7, 'REMOVE', '2016-04-16 12:28:18'),
(30, 1, 'DEATH ON THE NILE', 'AGATHA CHRISTIE', 5, 'ADD/EDIT', '2016-07-05 07:36:42'),
(31, 1, 'DEATH ON THE NILE', 'AGATHA CHRISTIE', 5, 'REMOVE', '2016-07-05 07:37:04'),
(32, 1, '2 STATES', 'CHETAN BHAGAT', 6, 'REMOVE', '2016-07-06 08:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `stat` varchar(255) NOT NULL,
  `score` int(10) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`,`name`),
  UNIQUE KEY `name` (`author`,`name`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name_2` (`name`,`author`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `uid`, `name`, `author`, `stat`, `score`, `tags`) VALUES
(7, 1, 'ANGELS AND DEMONS', 'DAN BROWN', 'Completed', 9, 'Thriller'),
(9, 1, 'THE DA VINCI CODE', 'DAN BROWN', 'Reading', 8, 'Mystery'),
(11, 3, 'MURDER ON THE ORIENT EXPRESS', 'AGATHA CHRISTIE', 'Completed', 8, 'Interesting Plot'),
(13, 3, 'THE HOUND OF THE BASKERVILLES', 'ARTHUR CONAN DOYLE', 'Reading', 9, 'Sherlock Holmes'),
(17, 1, 'DIGITAL FORTRESS', 'DAN BROWN', 'Plan To Read', 10, 'thriller');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `hash`) VALUES
(1, 'arpit', '$2y$10$s1f89Ry7g3ysM0DaLEUaQuKeE.D/oTKZYBemlCRzTn9N9sDrN2apC'),
(2, 'gamble', '$2y$10$0J8P8UZVwtW/IDF.6Pcxd.61DG8HZo3W1MswWomPcyH8tTewJb7O.'),
(3, 'kiran', '$2y$10$CdxA4DMsV.zFTWgZ3hMhCuXNEhOX31kz9socQqCwfJR2GAb0R4b4a');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`);

--
-- Constraints for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
