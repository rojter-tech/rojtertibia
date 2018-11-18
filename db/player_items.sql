-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 18, 2068 at 08:57 AM
-- Server version: 5.5.60-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rojtertibia`
--

-- --------------------------------------------------------

--
-- Table structure for table `player_items`
--

CREATE TABLE IF NOT EXISTS `player_items` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `itemtype` smallint(6) NOT NULL DEFAULT '0',
  `count` smallint(5) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player_items`
--

INSERT INTO `player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES
(206, 1, 101, 2480, 1, ''),
(206, 2, 102, 2661, 1, ''),
(206, 3, 103, 1988, 1, ''),
(206, 4, 104, 2660, 1, ''),
(206, 5, 105, 2525, 1, ''),
(206, 6, 106, 2389, 5, 0x0f05),
(206, 7, 107, 8923, 1, ''),
(206, 11, 108, 26052, 1, ''),
(206, 103, 109, 2160, 100, 0x0f64),
(206, 103, 110, 2160, 100, 0x0f64),
(206, 103, 111, 2160, 100, 0x0f64),
(206, 103, 112, 2160, 100, 0x0f64),
(206, 103, 113, 2160, 100, 0x0f64),
(206, 103, 114, 2160, 100, 0x0f64),
(206, 103, 115, 2160, 100, 0x0f64),
(206, 103, 116, 2160, 100, 0x0f64),
(206, 103, 117, 2160, 100, 0x0f64),
(206, 103, 118, 2195, 1, ''),
(206, 103, 119, 20620, 1, ''),
(206, 103, 120, 2643, 1, ''),
(206, 103, 121, 12657, 1, ''),
(206, 119, 122, 9778, 1, ''),
(206, 119, 123, 2471, 1, ''),
(206, 119, 124, 18403, 1, ''),
(206, 119, 125, 18398, 1, ''),
(206, 119, 126, 12645, 1, ''),
(206, 119, 127, 24718, 1, ''),
(206, 119, 128, 15408, 1, ''),
(205, 2, 101, 24851, 1, ''),
(205, 3, 102, 24740, 1, ''),
(205, 4, 103, 25176, 1, ''),
(205, 5, 104, 25414, 1, ''),
(205, 6, 105, 26241, 1, ''),
(205, 7, 106, 18405, 1, ''),
(205, 8, 107, 25412, 1, ''),
(205, 10, 108, 18304, 1, 0x0f01),
(205, 11, 109, 26052, 1, ''),
(205, 102, 110, 26187, 1, ''),
(205, 102, 111, 2365, 1, ''),
(205, 109, 112, 25413, 1, ''),
(207, 1, 101, 8820, 1, ''),
(207, 2, 102, 2171, 1, ''),
(207, 3, 103, 1988, 1, ''),
(207, 4, 104, 2476, 1, ''),
(207, 5, 105, 2175, 1, ''),
(207, 6, 106, 2190, 1, ''),
(207, 7, 107, 2477, 1, ''),
(207, 8, 108, 2195, 1, ''),
(207, 11, 109, 26052, 1, ''),
(207, 103, 110, 2643, 1, ''),
(207, 103, 111, 8819, 1, ''),
(207, 103, 112, 2468, 1, ''),
(207, 103, 113, 5879, 1, 0x0f01),
(207, 103, 114, 2554, 1, ''),
(207, 103, 115, 2120, 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `player_items`
--
ALTER TABLE `player_items`
  ADD KEY `player_id` (`player_id`),
  ADD KEY `sid` (`sid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `player_items`
--
ALTER TABLE `player_items`
  ADD CONSTRAINT `player_items_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
