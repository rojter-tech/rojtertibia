-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 20, 2018 at 05:02 AM
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
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `password`, `secret`, `type`, `premdays`, `lastday`, `email`, `creation`) VALUES
(5, 'test3', 'c96f36c50461c0654e7219e8bc68df6e4c4e62d9', '12321', 1, 999, 1542687777, 'test@test.se', 0);

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `group_id`, `account_id`, `level`, `vocation`, `health`, `healthmax`, `experience`, `lookbody`, `lookfeet`, `lookhead`, `looklegs`, `looktype`, `lookaddons`, `maglevel`, `mana`, `manamax`, `manaspent`, `soul`, `town_id`, `posx`, `posy`, `posz`, `conditions`, `cap`, `sex`, `lastlogin`, `lastip`, `save`, `skull`, `skulltime`, `lastlogout`, `blessings`, `onlinetime`, `deletion`, `balance`, `offlinetraining_time`, `offlinetraining_skill`, `stamina`, `skill_fist`, `skill_fist_tries`, `skill_club`, `skill_club_tries`, `skill_sword`, `skill_sword_tries`, `skill_axe`, `skill_axe_tries`, `skill_dist`, `skill_dist_tries`, `skill_shielding`, `skill_shielding_tries`, `skill_fishing`, `skill_fishing_tries`) VALUES
(21, '(1) Test3', 1, 5, 1, 0, 150, 150,    0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 6, 0, 0, 7, '', 1000, 0, 1542689869, 1627454035, 1, 0, 0, 1542689984, 0, 0, 0, 0, 43200, -1, 2520,  10, 0,  10, 0,  10, 0,  10, 0,  10, 0,  10, 0,  10, 0),
(22, '(2) Test3', 1, 5, 8, 1, 150, 150, 4200, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 1, 0, 0, 7, '', 1000, 0, 1542689122, 1627454035, 1, 0, 0, 1542689130, 0, 0, 0, 0, 43200, -1, 2520, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0),
(23, '(3) Test3', 1, 5, 8, 2, 150, 150, 4200, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 1, 0, 0, 7, '', 1000, 0, 1542689137, 1627454035, 1, 0, 0, 1542689144, 0, 0, 0, 0, 43200, -1, 2520, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0),
(24, '(4) Test3', 1, 5, 8, 3, 150, 150, 4200, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 1, 0, 0, 7, '', 1000, 0, 1542689145, 1627454035, 1, 0, 0, 1542689151, 0, 0, 0, 0, 43200, -1, 2520, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0),
(25, '(5) Test3', 1, 5, 8, 4, 150, 150, 4200, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 1, 0, 0, 7, '', 1000, 0, 1542689153, 1627454035, 1, 0, 0, 1542689161, 0, 0, 0, 0, 43200, -1, 2520, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0);


--
-- Dumping data for table `player_items`
--

INSERT INTO `player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES
(21, 3, 101, 1987, 1, ''),
(21, 4, 102, 2651, 1, ''),
(21, 6, 103, 2382, 1, ''),
(21, 101, 104, 2674, 1, 0x0f01),
(21, 101, 105, 2554, 1, ''),
(21, 101, 106, 2120, 1, ''),
(22, 1, 101, 8820, 1, ''),
(22, 2, 102, 2661, 1, ''),
(22, 3, 103, 1988, 1, ''),
(22, 4, 104, 8819, 1, ''),
(22, 5, 105, 2175, 1, ''),
(22, 6, 106, 2190, 1, ''),
(22, 7, 107, 2468, 1, ''),
(22, 8, 108, 2643, 1, ''),
(22, 103, 109, 7620, 5, 0x0f05),
(22, 103, 110, 2554, 1, ''),
(22, 103, 111, 2120, 1, ''),
(22, 103, 112, 2152, 20, 0x0f14),
(23, 1, 101, 8820, 1, ''),
(23, 2, 102, 2661, 1, ''),
(23, 3, 103, 1988, 1, ''),
(23, 4, 104, 8819, 1, ''),
(23, 5, 105, 2175, 1, ''),
(23, 6, 106, 2182, 1, ''),
(23, 7, 107, 2468, 1, ''),
(23, 8, 108, 2643, 1, ''),
(23, 103, 109, 7620, 5, 0x0f05),
(23, 103, 110, 2554, 1, ''),
(23, 103, 111, 2120, 1, ''),
(23, 103, 112, 2152, 20, 0x0f14),
(24, 1, 101, 2480, 1, ''),
(24, 2, 102, 2661, 1, ''),
(24, 3, 103, 1988, 1, ''),
(24, 4, 104, 2660, 1, ''),
(24, 5, 105, 2525, 1, ''),
(24, 6, 106, 2389, 5, 0x0f05),
(24, 7, 107, 8923, 1, ''),
(24, 8, 108, 2643, 1, ''),
(24, 103, 109, 7620, 5, 0x0f05),
(24, 103, 110, 7618, 5, 0x0f05),
(24, 103, 111, 2554, 1, ''),
(24, 103, 112, 2120, 1, ''),
(24, 103, 113, 2152, 20, 0x0f14),
(25, 1, 101, 2460, 1, ''),
(25, 2, 102, 2661, 1, ''),
(25, 3, 103, 1988, 1, ''),
(25, 4, 104, 2465, 1, ''),
(25, 5, 105, 2525, 1, ''),
(25, 6, 106, 8601, 1, ''),
(25, 7, 107, 2478, 1, ''),
(25, 8, 108, 2643, 1, ''),
(25, 103, 109, 7620, 5, 0x0f05),
(25, 103, 110, 7618, 5, 0x0f05),
(25, 103, 111, 2554, 1, ''),
(25, 103, 112, 2120, 1, ''),
(25, 103, 113, 2439, 1, ''),
(25, 103, 114, 8602, 1, ''),
(25, 103, 115, 2152, 20, 0x0f14);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
