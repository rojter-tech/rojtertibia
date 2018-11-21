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
(1, 'defaultacc', 'c96f36c50461c0654e7219e8bc68df6e4c4e62d9', 'Default Account', 1, 0, 0, 'default@rojter.tech', 0);

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `group_id`, `account_id`, `level`, `vocation`, `health`, `healthmax`, `experience`, `lookbody`, `lookfeet`, `lookhead`, `looklegs`, `looktype`, `lookaddons`, `maglevel`, `mana`, `manamax`, `manaspent`, `soul`, `town_id`, `posx`, `posy`, `posz`, `conditions`, `cap`, `sex`, `lastlogin`, `lastip`, `save`, `skull`, `skulltime`, `lastlogout`, `blessings`, `onlinetime`, `deletion`, `balance`, `offlinetraining_time`, `offlinetraining_skill`, `stamina`, `skill_fist`, `skill_fist_tries`, `skill_club`, `skill_club_tries`, `skill_sword`, `skill_sword_tries`, `skill_axe`, `skill_axe_tries`, `skill_dist`, `skill_dist_tries`, `skill_shielding`, `skill_shielding_tries`, `skill_fishing`, `skill_fishing_tries`, `cast`) VALUES
(1, '(1) Default Rook',     1, 1, 1, 0, 150, 150,    0, 0, 0, 0, 0, 136, 0,   0,  0, 0, 0, 0, 6, 0, 0, 0, '', 1000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520,  10, 0,  10, 0,  10, 0,  10, 0,  10, 0,  10, 0,  10, 0, 0),
(2, '(2) Default Sorcerer', 1, 1, 8, 1, 185, 185, 4200, 0, 0, 0, 0, 136, 0, 100, 35, 0, 0, 0, 1, 0, 0, 0, '', 1000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 0),
(3, '(3) Default Druid',    1, 1, 8, 2, 185, 185, 4200, 0, 0, 0, 0, 136, 0, 100, 35, 0, 0, 0, 1, 0, 0, 0, '', 1000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 0),
(4, '(4) Default Paladin',  1, 1, 8, 3, 185, 185, 4200, 0, 0, 0, 0, 136, 0,  20, 35, 0, 0, 0, 1, 0, 0, 0, '', 1000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 0),
(5, '(5) Default Knight',   1, 1, 8, 4, 185, 185, 4200, 0, 0, 0, 0, 136, 0,  10, 35, 0, 0, 0, 1, 0, 0, 0, '', 1000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 0);

--
-- Dumping data for table `player_items`
--

INSERT INTO `player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES
(1, 3, 101, 1987, 1, ''),
(1, 4, 102, 2651, 1, ''),
(1, 6, 103, 2382, 1, ''),
(1, 101, 104, 2674, 1, 0x0f01),
(1, 101, 105, 2554, 1, ''),
(1, 101, 106, 2120, 1, ''),
(2, 1, 101, 8820, 1, ''),
(2, 2, 102, 2661, 1, ''),
(2, 3, 103, 1988, 1, ''),
(2, 4, 104, 8819, 1, ''),
(2, 5, 105, 2175, 1, ''),
(2, 6, 106, 2190, 1, ''),
(2, 7, 107, 2468, 1, ''),
(2, 8, 108, 2643, 1, ''),
(2, 103, 109, 7620, 5, 0x0f05),
(2, 103, 110, 2554, 1, ''),
(2, 103, 111, 2120, 1, ''),
(2, 103, 112, 2152, 20, 0x0f14),
(3, 1, 101, 8820, 1, ''),
(3, 2, 102, 2661, 1, ''),
(3, 3, 103, 1988, 1, ''),
(3, 4, 104, 8819, 1, ''),
(3, 5, 105, 2175, 1, ''),
(3, 6, 106, 2182, 1, ''),
(3, 7, 107, 2468, 1, ''),
(3, 8, 108, 2643, 1, ''),
(3, 103, 109, 7620, 5, 0x0f05),
(3, 103, 110, 2554, 1, ''),
(3, 103, 111, 2120, 1, ''),
(3, 103, 112, 2152, 20, 0x0f14),
(4, 1, 101, 2480, 1, ''),
(4, 2, 102, 2661, 1, ''),
(4, 3, 103, 1988, 1, ''),
(4, 4, 104, 2660, 1, ''),
(4, 5, 105, 2525, 1, ''),
(4, 6, 106, 2389, 5, 0x0f05),
(4, 7, 107, 8923, 1, ''),
(4, 8, 108, 2643, 1, ''),
(4, 103, 109, 7620, 5, 0x0f05),
(4, 103, 110, 7618, 5, 0x0f05),
(4, 103, 111, 2554, 1, ''),
(4, 103, 112, 2120, 1, ''),
(4, 103, 113, 2152, 20, 0x0f14),
(5, 1, 101, 2460, 1, ''),
(5, 2, 102, 2661, 1, ''),
(5, 3, 103, 1988, 1, ''),
(5, 4, 104, 2465, 1, ''),
(5, 5, 105, 2525, 1, ''),
(5, 6, 106, 8601, 1, ''),
(5, 7, 107, 2478, 1, ''),
(5, 8, 108, 2643, 1, ''),
(5, 103, 109, 7620, 5, 0x0f05),
(5, 103, 110, 7618, 5, 0x0f05),
(5, 103, 111, 2554, 1, ''),
(5, 103, 112, 2120, 1, ''),
(5, 103, 113, 2439, 1, ''),
(5, 103, 114, 8602, 1, ''),
(5, 103, 115, 2152, 20, 0x0f14);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
