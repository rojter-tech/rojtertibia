--
-- Table structure for table `z_forum`
--

CREATE TABLE IF NOT EXISTS `z_forum` (
  `id` int(11) NOT NULL,
  `first_post` int(11) NOT NULL DEFAULT '0',
  `last_post` int(11) NOT NULL DEFAULT '0',
  `section` int(3) NOT NULL DEFAULT '0',
  `replies` int(20) NOT NULL DEFAULT '0',
  `views` int(20) NOT NULL DEFAULT '0',
  `author_aid` int(20) NOT NULL DEFAULT '0',
  `author_guid` int(20) NOT NULL DEFAULT '0',
  `post_text` text NOT NULL,
  `post_topic` varchar(255) NOT NULL,
  `post_smile` tinyint(1) NOT NULL DEFAULT '0',
  `post_date` int(20) NOT NULL DEFAULT '0',
  `last_edit_aid` int(20) NOT NULL DEFAULT '0',
  `edit_date` int(20) NOT NULL DEFAULT '0',
  `post_ip` varchar(15) NOT NULL DEFAULT '0.0.0.0',
  `icon_id` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_forum`
--

INSERT INTO `z_forum` (`id`, `first_post`, `last_post`, `section`, `replies`, `views`, `author_aid`, `author_guid`, `post_text`, `post_topic`, `post_smile`, `post_date`, `last_edit_aid`, `edit_date`, `post_ip`, `icon_id`) VALUES
(2, 2, 1476915388, 1, 0, 35, 9, 151, '[img]https://s26.postimg.org/kbf4v9e5l/header.png[/img]\r\n\r\n\r\nWelcome on Memoria Ots the newest and most complete Full Real Map server with custom features! We are ready to offer you lots of fun, content, entertainment and more!\r\n\r\n[img]https://s26.postimg.org/w4cxzhall/Features.png[/img]\r\n\r\n•War Anti Entrosa\r\n•Exp Shared Party 100%\r\n•Cast System\r\n•Reward System 100% RL\r\n•Store System\r\n•Ferumbras Quest\r\n•Critical System\r\n•Addons Bonus\r\n•Pits of Hell\r\n•inquisition\r\n•New Hunts\r\n•New Monsters\r\n•New Mounts\r\n•New Outfits\r\n•New Spawn System\r\n•World Changes\r\n•Grimvale Quest\r\n•Full Djinn Quests\r\n•New Depots\r\n•Anti-Kick System\r\n•Market\r\n•Real Tibia Raids\r\n•Lottery System\r\n•NPC Yasir (Eastern Trader)\r\n•Offline Training\r\n•Equip Hotkey\r\n•Fury Gates\r\n•Retro PVP\r\n•Seacrest grounds\r\n•Otherworld\r\n•Online training\r\n•New NPCs (Yana, Fadil, Cledwyn...)\r\nAnd more ...\r\n\r\n\r\n[img]https://s26.postimg.org/e43qv3ieh/Rates.png[/img]\r\n\r\n•Runes: Not Infinite\r\n•Protection level: 75\r\n•Skills: 30\r\n•Magic: 25\r\n•Loot: 3\r\n\r\n\r\n[img]https://s26.postimg.org/fx6njf3l5/stages.png[/img]\r\n\r\n1 - 29, 70x\r\n30 - 49, 60x\r\n50 - 69, 45x\r\n70 - 99, 35x\r\n100 - 124, 30x\r\n125 -149, 20x\r\n150 - 179, 15x\r\n180 - 219, 10x\r\n220 - 269, 5x\r\n270+, 3x\r\n\r\n[img]https://s26.postimg.org/d9h792ajt/events.png[/img]\r\n\r\n-Battlefield Event\r\n-Zombie Event\r\n-Last Man Standing\r\n-Capture The Flag\r\n\r\n[img]https://s26.postimg.org/vsvhmpu5l/pictures.png[/img]\r\n\r\n\r\n[b]Thais Temple[/b]\r\n\r\n[img]https://s26.postimg.org/zc7s1o161/temple.png[/img]\r\n\r\n\r\n[b]War Anti-Entrosa[/b]\r\n\r\n[img]https://s26.postimg.org/9updi2jft/entrosa.png[/img]\r\n\r\n\r\n[b]Grizzly Adams in Thais[/b]\r\n\r\n[img]https://s26.postimg.org/tqlcxm0h5/grizzlyadams.png[/img]\r\n\r\n\r\n[b]Fully working Ingame Shop[/b]\r\n\r\n[img]https://s26.postimg.org/qjm808qnd/ingameshop1.png[/img]\r\n\r\n[img]https://s26.postimg.org/xbcn33fmx/ingameshop2.png[/img]\r\n\r\n[img]https://s26.postimg.org/pwrwogj55/ingameshop3.png[/img]\r\n\r\n\r\n[b]New Items[/b]\r\n\r\n[img]https://s26.postimg.org/kmwl80ull/newitems.png[/img]\r\n\r\n\r\n[b]Otherworld[/b]\r\n\r\n[img]https://s26.postimg.org/iw3wvohd5/otherworld.png[/img]', 'Welcome', 1, 1476915388, 9, 1477055886, '192.168.1.1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z_network_box`
--

CREATE TABLE IF NOT EXISTS `z_network_box` (
  `id` int(11) NOT NULL,
  `network_name` varchar(10) NOT NULL,
  `network_link` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `z_news_tickers`
--

CREATE TABLE IF NOT EXISTS `z_news_tickers` (
  `date` int(11) NOT NULL DEFAULT '1',
  `author` int(11) NOT NULL,
  `image_id` int(3) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hide_ticker` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_news_tickers`
--

INSERT INTO `z_news_tickers` (`date`, `author`, `image_id`, `text`, `hide_ticker`) VALUES
(1445489191, 7944, 0, '<b>W</b>elcome <u>to</u> <b>Otx</b>Server-<b>G</b>lobal [<i>by Malucooo</i>].', 1),
(1476221245, 9, 0, '<b>[SUPPORT]</b> Welcome to Nika-Global! We wish you enjoy the server.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z_ots_comunication`
--

CREATE TABLE IF NOT EXISTS `z_ots_comunication` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `param1` varchar(255) NOT NULL,
  `param2` varchar(255) NOT NULL,
  `param3` varchar(255) NOT NULL,
  `param4` varchar(255) NOT NULL,
  `param5` varchar(255) NOT NULL,
  `param6` varchar(255) NOT NULL,
  `param7` varchar(255) NOT NULL,
  `delete_it` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `z_ots_guildcomunication`
--

CREATE TABLE IF NOT EXISTS `z_ots_guildcomunication` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `param1` varchar(255) NOT NULL,
  `param2` varchar(255) NOT NULL,
  `param3` varchar(255) NOT NULL,
  `param4` varchar(255) NOT NULL,
  `param5` varchar(255) NOT NULL,
  `param6` varchar(255) NOT NULL,
  `param7` varchar(255) NOT NULL,
  `delete_it` int(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=13382 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `z_polls`
--

CREATE TABLE IF NOT EXISTS `z_polls` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `end` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `answers` int(11) NOT NULL,
  `votes_all` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `z_polls_answers`
--

CREATE TABLE IF NOT EXISTS `z_polls_answers` (
  `poll_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `votes` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `z_shopguild_history_item`
--

CREATE TABLE IF NOT EXISTS `z_shopguild_history_item` (
  `id` int(11) NOT NULL,
  `to_name` varchar(255) NOT NULL DEFAULT '0',
  `to_account` int(11) NOT NULL DEFAULT '0',
  `from_nick` varchar(255) NOT NULL,
  `from_account` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `offer_id` int(11) NOT NULL DEFAULT '0',
  `trans_state` varchar(255) NOT NULL,
  `trans_start` int(11) NOT NULL DEFAULT '0',
  `trans_real` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `z_shopguild_history_pacc`
--

CREATE TABLE IF NOT EXISTS `z_shopguild_history_pacc` (
  `id` int(11) NOT NULL,
  `to_name` varchar(255) NOT NULL DEFAULT '0',
  `to_account` int(11) NOT NULL DEFAULT '0',
  `from_nick` varchar(255) NOT NULL,
  `from_account` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `pacc_days` int(11) NOT NULL DEFAULT '0',
  `trans_state` varchar(255) NOT NULL,
  `trans_start` int(11) NOT NULL DEFAULT '0',
  `trans_real` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `z_shopguild_offer`
--

CREATE TABLE IF NOT EXISTS `z_shopguild_offer` (
  `id` int(11) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `itemid1` int(11) NOT NULL DEFAULT '0',
  `count1` int(11) NOT NULL DEFAULT '0',
  `itemid2` int(11) NOT NULL DEFAULT '0',
  `count2` int(11) NOT NULL DEFAULT '0',
  `offer_type` varchar(255) DEFAULT NULL,
  `offer_description` text NOT NULL,
  `offer_name` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_shopguild_offer`
--

INSERT INTO `z_shopguild_offer` (`id`, `points`, `itemid1`, `count1`, `itemid2`, `count2`, `offer_type`, `offer_description`, `offer_name`, `pid`) VALUES
(1, 1, 2160, 10, 0, 0, 'item', '10 crystal coin para seu char.', 'Crystal Coin', 0),
(2, 10, 2640, 1, 0, 0, 'item', 'Soft Boots regenerate 10 health per 2 seconds and 15 mana per 2 seconds.', 'Pair of Soft Boots', 0),
(3, 2, 2195, 1, 0, 0, 'item', 'boots of haste (speed +20).', 'Boots of Haste', 0),
(4, 5, 18409, 1, 0, 0, 'item', 'Fire ataque max 85 e magic +1.', 'Wand of Everblazing', 0),
(5, 5, 18411, 1, 0, 0, 'item', 'Earth ataque max 85 e magic +1.', 'Muck Rod', 0),
(6, 5, 2400, 1, 0, 0, 'item', 'Atributos (Atk:48, Def:35 +3).', 'Magic Sword', 0),
(7, 7, 2431, 1, 0, 0, 'item', 'Atributos (Atk:50, Def:30 +3).', 'Stonecutter Axe', 0),
(8, 6, 8928, 1, 0, 0, 'item', 'Atributos (Atk:50, Def:30 +2).', 'Obsidian Truncheon', 0),
(9, 5, 18453, 1, 0, 0, 'item', 'Atributos (Range:6, Atk+4, Hit%+3).', 'Crystal Crossbow', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z_shop_history_item`
--

CREATE TABLE IF NOT EXISTS `z_shop_history_item` (
  `id` int(11) NOT NULL,
  `to_name` varchar(255) NOT NULL DEFAULT '0',
  `to_account` int(11) NOT NULL DEFAULT '0',
  `from_nick` varchar(255) NOT NULL,
  `from_account` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `offer_id` varchar(255) NOT NULL DEFAULT '',
  `trans_state` varchar(255) NOT NULL,
  `trans_start` int(11) NOT NULL DEFAULT '0',
  `trans_real` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `z_shop_offer`
--

CREATE TABLE IF NOT EXISTS `z_shop_offer` (
  `id` int(11) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `itemid1` int(11) NOT NULL DEFAULT '0',
  `count1` int(11) NOT NULL DEFAULT '0',
  `itemid2` int(11) NOT NULL DEFAULT '0',
  `count2` int(11) NOT NULL DEFAULT '0',
  `offer_type` varchar(255) DEFAULT NULL,
  `offer_description` text NOT NULL,
  `offer_name` varchar(255) NOT NULL,
  `offer_category` int(11) NOT NULL,
  `offer_new` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=28471 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_shop_offer`
--

INSERT INTO `z_shop_offer` (`id`, `points`, `itemid1`, `count1`, `itemid2`, `count2`, `offer_type`, `offer_description`, `offer_name`, `offer_category`, `offer_new`, `pid`) VALUES
(90, 20, 90, 1, 0, 0, 'mount', 'You will receive the Shadow Draptor mount for one character.', 'Shadow Draptor', 6, 0, 0),
(91, 20, 91, 1, 0, 0, 'mount', 'You will receive the Crimson Ray mount for one character.', 'Crimson Ray', 6, 0, 0),
(93, 20, 93, 1, 0, 0, 'mount', 'You will receive the Armoured War Horse mount for one character.', 'Armoured War Horse', 6, 0, 0),
(96, 20, 96, 1, 0, 0, 'mount', 'You will receive the Steelbeak mount for one character.', 'Steelbeak', 6, 0, 0),
(114, 20, 114, 1, 0, 0, 'mount', 'You will receive the Platesaurian mount for one character.', 'Platesaurian', 6, 0, 0),
(117, 20, 117, 1, 0, 0, 'mount', 'You will receive the Azudocus mount for one character.', 'Azudocus', 6, 0, 0),
(118, 20, 118, 1, 0, 0, 'mount', 'You will receive the Carpacosaurus mount for one character.', 'Carpacosaurus', 6, 0, 0),
(119, 20, 119, 1, 0, 0, 'mount', 'You will receive the Death Crawler mount for one character.', 'Death Crawler', 6, 0, 0),
(122, 20, 122, 1, 0, 0, 'mount', 'You will receive the Jade Pincer mount for one character.', 'Jade Pincer', 6, 0, 0),
(130, 20, 130, 1, 0, 0, 'mount', 'You will receive the Tombstinger mount for one character.', 'Tombstinger', 6, 0, 0),
(135, 20, 135, 1, 0, 0, 'mount', 'You will receive the Flamesteed mount for one character.', 'Flamesteed', 6, 0, 0),
(136, 20, 136, 1, 0, 0, 'mount', 'You will receive the Nethersteed mount for one character.', 'Nethersteed', 6, 0, 0),
(137, 20, 137, 1, 0, 0, 'mount', 'You will receive the Tempest mount for one character.', 'Tempest', 6, 0, 0),
(208, 20, 208, 1, 0, 0, 'mount', 'You will receive the Desert King mount for one character.', 'Desert King', 6, 0, 0),
(221, 20, 221, 1, 0, 0, 'mount', 'You will receive the Jade Lion mount for one character.', 'Jade Lion', 6, 0, 0),
(225, 20, 225, 1, 0, 0, 'mount', 'You will receive the Winter King mount for one character.', 'Winter King', 6, 0, 0),
(226, 20, 226, 1, 0, 0, 'mount', 'You will receive the Doombringer mount for one character.', 'Doombringer', 6, 0, 0),
(227, 20, 227, 1, 0, 0, 'mount', 'You will receive the Woodland Prince mount for one character.', 'Woodland Prince', 6, 0, 0),
(228, 20, 228, 1, 0, 0, 'mount', 'You will receive the Hailstorm Fury mount for one character.', 'Hailstorm Fury', 6, 0, 0),
(229, 20, 229, 1, 0, 0, 'mount', 'You will receive the Siegebreaker mount for one character.', 'Siegebreaker', 6, 0, 0),
(230, 20, 230, 1, 0, 0, 'mount', 'You will receive the Poisonbane mount for one character.', 'Poisonbane', 6, 0, 0),
(231, 20, 231, 1, 0, 0, 'mount', 'You will receive the Blackpelt mount for one character.', 'Blackpelt', 6, 0, 0),
(232, 20, 232, 1, 0, 0, 'mount', 'You will receive the Tundra Rambler mount for one character.', 'Tundra Rambler', 6, 0, 0),
(233, 20, 233, 1, 0, 0, 'mount', 'You will receive the Highland Yak mount for one character.', 'Highland Yak', 6, 0, 0),
(234, 20, 234, 1, 0, 0, 'mount', 'You will receive the Glacier Vagabond mount for one character.', 'Glacier Vagabond', 6, 0, 0),
(235, 20, 235, 1, 0, 0, 'mount', 'You will receive the Shadow Hart mount for one character.', 'Shadow Hart', 6, 0, 0),
(236, 20, 236, 1, 0, 0, 'mount', 'You will receive the Black Stag mount for one character.', 'Black Stag', 6, 0, 0),
(237, 20, 237, 1, 0, 0, 'mount', 'You will receive the Emperor Deer mount for one character.', 'Emperor Deer', 6, 0, 0),
(238, 20, 238, 1, 0, 0, 'mount', 'You will receive the Flying Divan mount for one character.', 'Flying Divan', 6, 0, 0),
(239, 20, 239, 1, 0, 0, 'mount', 'You will receive the Magic Carpet mount for one character.', 'Magic Carpet', 6, 0, 0),
(240, 20, 240, 1, 0, 0, 'mount', 'You will receive the Floating Kashmir mount for one character.', 'Floating Kashmir', 6, 0, 0),
(241, 20, 241, 1, 0, 0, 'mount', 'You will receive the Ringtail Waccoon mount for one character.', 'Ringtail Waccoon', 6, 0, 0),
(242, 20, 242, 1, 0, 0, 'mount', 'You will receive the Night Waccoon mount for one character.', 'Night Waccoon', 6, 0, 0),
(243, 20, 243, 1, 0, 0, 'mount', 'You will receive the Emerald Waccoon mount for one character.', 'Emerald Waccoon', 6, 0, 0),
(244, 20, 244, 1, 0, 0, 'mount', 'You will receive the Flitterkatzen mount for one character.', 'Flitterkatzen', 6, 0, 0),
(245, 20, 245, 1, 0, 0, 'mount', 'You will receive the Venompaw mount for one character.', 'Venompaw', 6, 0, 0),
(246, 20, 246, 1, 0, 0, 'mount', 'You will receive the Batcat mount for one character.', 'Batcat', 6, 0, 0),
(247, 20, 247, 1, 0, 0, 'mount', 'You will receive the Sea Devil mount for one character.', 'Sea Devil', 6, 0, 0),
(248, 20, 248, 1, 0, 0, 'mount', 'You will receive the Coralripper mount for one character.', 'Coralripper', 6, 0, 0),
(249, 20, 249, 1, 0, 0, 'mount', 'You will receive the Plumfish mount for one character.', 'Plumfish', 6, 0, 0),
(252, 20, 252, 1, 0, 0, 'mount', 'You will receive the Gorongra mount for one character.', 'Gorongra', 6, 0, 0),
(253, 20, 253, 1, 0, 0, 'mount', 'You will receive the Noctungra mount for one character.', 'Noctungra', 6, 0, 0),
(254, 20, 254, 1, 0, 0, 'mount', 'You will receive the Silverneck mount for one character.', 'Silverneck', 6, 0, 0),
(258, 20, 258, 1, 0, 0, 'mount', 'You will receive the Golden Dragonfly mount for one character.', 'Golden Dragonfly', 6, 0, 0),
(259, 20, 259, 1, 0, 0, 'mount', 'You will receive the Steel Bee mount for one character.', 'Steel Bee', 6, 0, 0),
(260, 20, 260, 1, 0, 0, 'mount', 'You will receive the Copper Fly mount for one character.', 'Copper Fly', 6, 0, 0),
(263, 20, 263, 1, 0, 0, 'mount', 'You will receive the Nightdweller mount for one character.', 'Nightdweller', 6, 0, 0),
(264, 20, 264, 1, 0, 0, 'mount', 'You will receive the Frostflare mount for one character.', 'Frostflare', 6, 0, 0),
(265, 20, 265, 1, 0, 0, 'mount', 'You will receive the Cinderhoof mount for one character.', 'Cinderhoof', 6, 0, 0),
(268, 20, 268, 1, 0, 0, 'mount', 'You will receive the Mouldpincer mount for one character.', 'Mouldpincer', 6, 0, 0),
(269, 20, 269, 1, 0, 0, 'mount', 'You will receive the Bloodcurl mount for one character.', 'Bloodcurl', 6, 0, 0),
(270, 20, 270, 1, 0, 0, 'mount', 'You will receive the Leafscuttler mount for one character.', 'Leafscuttler', 6, 0, 0),
(279, 20, 279, 1, 0, 0, 'mount', 'You will receive the Swamp Snapper mount for one character.', 'Swamp Snapper', 6, 0, 0),
(280, 20, 280, 1, 0, 0, 'mount', 'You will receive the Mould Shell mount for one character.', 'Mould Shell', 6, 0, 0),
(281, 20, 281, 1, 0, 0, 'mount', 'You will receive the Reed Lurker mount for one character.', 'Reed Lurker', 6, 0, 0),
(284, 20, 284, 1, 0, 0, 'mount', 'You will receive the Slagsnare mount for one character.', 'Slagsnare', 6, 0, 0),
(285, 20, 285, 1, 0, 0, 'mount', 'You will receive the Nightstinger mount for one character.', 'Nightstinger', 6, 0, 0),
(286, 20, 286, 1, 0, 0, 'mount', 'You will receive the Razorcreep mount for one character.', 'Razorcreep', 6, 0, 0),
(350, 20, 350, 1, 0, 0, 'mount', 'You will receive the Ivory Fang mount for one character.', 'Ivory Fang', 6, 0, 0),
(351, 20, 351, 1, 0, 0, 'mount', 'You will receive the Shadow Claw mount for one character.', 'Shadow Claw', 6, 0, 0),
(352, 20, 352, 1, 0, 0, 'mount', 'You will receive the Snow Pelt mount for one character.', 'Snow Pelt', 6, 0, 0),
(800, 12, 25377, 100, 0, 0, 'new', 'Can be exchanged with Yana for various weapons that can be enchanted with special bonuses by exchanging more of these tokens.', '100 Gold tokens', 1, 0, 0),
(801, 6, 25377, 50, 0, 0, 'new', 'Can be exchanged with Yana for various weapons that can be enchanted with special bonuses by exchanging more of these tokens.', '50 Gold tokens', 1, 0, 0),
(802, 12, 25172, 100, 0, 0, 'new', 'Can be exchanged with Cledwyn for various armours providing both a skill and a resistance bonus.', '100 Silver tokens', 1, 0, 0),
(803, 6, 25172, 50, 0, 0, 'new', 'Can be exchanged with Cledwyn for various armours providing both a skill and a resistance bonus.', '50 Silver tokens', 1, 0, 0),
(804, 14, 18423, 25, 0, 0, 'new', 'These can be traded for outfit items, equipment and some other items with Gnomally.', '25 Major crystalline tokens', 1, 0, 0),
(805, 7, 18423, 10, 0, 0, 'new', 'These can be traded for outfit items, equipment and some other items with Gnomally.', '10 Major crystalline tokens', 1, 0, 0),
(806, 5, 18422, 10, 0, 0, 'new', 'They can be traded for reputation points (5 points per token), outfit items, equipment and some other items with Gnomally', '10 Minor crystalline token', 1, 0, 0),
(807, 11, 12544, 1, 0, 0, 'new', 'refill stamina 100% (1 charge).', 'Refill stamina', 1, 0, 0),
(808, 10, 16101, 10, 0, 0, 'new', 'Using this item will add 10 Tibia Coins to your account once.', '10 Tibia Coins', 1, 0, 0),
(809, 8, 24331, 1, 0, 0, 'new', 'Change the sex of your character.', 'Change sex doll', 1, 0, 0),
(810, 5, 26342, 1, 0, 0, 'new', 'The core of the devourer has the power to provide you with a powerful charge that allows you to challenge him again imediately.', 'Devourer core', 1, 0, 0),
(811, 4, 24740, 1, 24740, 1, 'new', 'It''s a rare backpack that is only obtained as loot from a boss.', 'Wolf Backpack (Vol:20)', 5, 0, 0),
(812, 3, 26181, 1, 26181, 1, 'new', 'Reward in Heart of Destruction Quest.', 'Energetic Backpack (Vol:20)', 5, 0, 0),
(813, 4, 11263, 1, 11263, 1, 'new', 'It weights 1.50 oz less than normal backpacks.', 'Santa Backpack (Vol:20)', 5, 0, 0),
(814, 4, 18393, 1, 18393, 1, 'new', 'It''s a backpack that is similar to the normal one.', 'Mushroom Backpack (Vol:20)', 5, 0, 0),
(815, 4, 11119, 1, 11119, 1, 'new', 'It''s a backpack that is similar to the normal one.', 'Heart Backpack (Vol:20)', 5, 0, 0),
(816, 4, 18394, 1, 18394, 1, 'new', 'It''s a backpack that is similar to the normal one.', 'Crystal Backpack (Vol:20)', 5, 0, 0),
(817, 4, 16007, 1, 16007, 1, 'new', 'It was awarded during the festivities of Tibia''s 15th anniversary.', 'Anniversary Backpack (Vol:20)', 5, 0, 0),
(818, 6, 6104, 1, 6104, 1, 'new', 'Obtained by exchanging 25 Christmas Tokens to the NPC Ruprecht on Vega.', 'Jewel case (Vol:1)', 5, 0, 0),
(819, 12, 20620, 1, 20620, 1, 'new', 'This chess box is made of jade and obsidian. It will hold a full set of 32 Zaoan chess figures.', 'Zaoan chess box (Vol:20)', 5, 0, 0),
(821, 5, 25423, 1, 0, 0, 'new', 'You see a ferumbras'' amulet (Arm:3). Refiller randomly 1000 HP or MP when used. (Cooldown 1 min to use again).', 'Ferumbras'' amulet', 1, 0, 0),
(822, 5, 24851, 1, 0, 0, 'new', 'You see an onyx pendant (Arm:2, protection death +2%).\r\nIt can only be wielded properly by players of level 60 or higher.\r\nIt weighs 8.50 oz.', 'Onyx Pendant', 1, 0, 0),
(823, 8, 24716, 1, 0, 0, 'new', 'Can be enchanted with Moonlight Crystals to get an Enchanted Werewolf Amulet.', 'Werewolf Amulet', 1, 0, 0),
(833, 8, 18408, 1, 0, 0, 'new', 'You see a prismatic ring (protection physical +10%, energy +8%) that is brand-new.\nIt can only be wielded properly by players of level 120 or higher.\nIt weighs 1.05 oz.', 'Prismatic ring', 1, 0, 0),
(900, 8, 26199, 1, 0, 0, 'mage', 'You see a collar of green plasma (magic level +3, faster Regeneration) that is brand-new.\r\nIt can only be wielded properly by sorcerers and druids of level 150 or higher.\r\nIt weighs 5.00 oz.', 'Collar of green plasma', 1, 0, 0),
(901, 8, 26187, 1, 0, 0, 'mage', 'You see a ring of green plasma (magic level +2, faster Regeneration) that is brand-new.\nIt can only be wielded properly by sorcerers and druids of level 100 or higher.\nIt weighs 0.90 oz.', 'Ring of green plasma', 1, 0, 0),
(902, 8, 26130, 1, 0, 0, 'mage', 'You see a tiara of power (Arm:7, faster Regeneration, speed +20, protection energy +8%) that is brand-new.\nIt can only be wielded properly by sorcerers and druids of level 100 or higher.\nIt weighs 11.50 oz.', 'Tiara of power', 1, 0, 0),
(1000, 8, 26198, 1, 0, 0, 'pala', 'You see a collar of blue plasma (distance fighting +4, magic level +2) that is brand-new.\r\nIt can only be wielded properly by paladins of level 150 or higher.\r\nIt weighs 5.00 oz.', 'Collar of blue plasma', 1, 0, 0),
(1001, 8, 26185, 1, 0, 0, 'pala', 'You see ring of blue plasma (distance fighting +3, magic level +1) that is brand-new.\nIt can only be wielded properly by paladins of level 100 or higher.\nIt weighs 0.90 oz.', 'Ring of blue plasma', 1, 0, 0),
(1002, 7, 18404, 1, 0, 0, 'pala', 'You see a prismatic armor (Arm:15, protection physical +5%, speed +15). It can only be wielded properly by knights and paladins of level 120 or higher.', 'Prismatic armor', 3, 0, 0),
(1003, 7, 18405, 1, 0, 0, 'pala', 'You see prismatic legs (Arm:8, distance fighting +2, protection physical +3%). It can only be wielded properly by paladins of level 150 or higher.', 'Prismatic legs', 3, 0, 0),
(1100, 8, 26200, 1, 0, 0, 'kina', 'You see a collar of red plasma (sword fighting +4, club fighting +4, axe fighting +4, protection physical +5%) that is brand-new.\r\nIt can only be wielded properly by knights of level 150 or higher.\r\nIt weighs 5.00 oz.', 'Collar of red plasma', 1, 0, 0),
(1101, 8, 26189, 1, 0, 0, 'kina', 'You see a ring of red plasma (sword fighting +3, club fighting +3, axe fighting +3, protection physical +3%) that is brand-new.\nIt can only be wielded properly by knights of level 100 or higher.\nIt weighs 0.90 oz.', 'Ring of red plasma', 1, 0, 0),
(1110, 7, 18403, 1, 0, 0, 'kina', 'you see a prismatic helmet (Arm:9, shielding +1, protection physical +5%). It can only be wielded properly by knights of level 150 or higher.', 'Prismatic Helmet', 4, 0, 0),
(1120, 8, 8882, 1, 0, 0, 'kina', 'You see an earthborn titan armor (Arm:15, axe fighting +2, protection earth +5%, fire -5%). It can only be wielded properly by knights of level 100 or higher. It weighs 120.00 oz.', 'Earthborn titan armor', 4, 0, 0),
(1121, 10, 15407, 1, 0, 0, 'kina', 'You see a depth lorica (Arm:16, distance fighting +3, protection death +5%). It can only be wielded properly by paladins of level 150 or higher. It weighs 145.00 oz.', 'Depth lorica', 4, 0, 0),
(1122, 10, 15406, 1, 0, 0, 'kina', 'You see an ornate chestplate (Arm:16, shielding +3, protection physical +8%). It can only be wielded properly by knights of level 200 or higher. It weighs 156.00 oz.', 'Ornate chestplate', 2, 0, 0),
(1123, 7, 18404, 1, 0, 0, 'kina', 'You see a prismatic armor (Arm:15, protection physical +5%, speed +15). It can only be wielded properly by knights and paladins of level 120 or higher.', 'Prismatic Armor', 4, 0, 0),
(1130, 5, 15413, 1, 0, 0, 'kina', 'You see an ornate shield (Def:36, protection physical +5%). It can only be wielded properly by knights of level 130 or higher. It weighs 71.00 oz.', 'Ornate shield', 4, 0, 0),
(1131, 7, 18410, 1, 0, 0, 'kina', 'You see a prismatic shield (Def:37, shielding +2, protection physical +4%). It can only be wielded properly by knights of level 150 or higher.', 'Prismatic Shield', 4, 0, 0),
(28452, 20, 28452, 1, 0, 0, 'addon', 'You will receive the full Champion outfit for one character.', 'Champion Outfit', 7, 0, 0),
(28453, 20, 28453, 1, 0, 0, 'addon', 'You will receive the full Conjurer outfit for one character.', 'Conjurer Outfit', 7, 0, 0),
(28454, 20, 28454, 1, 0, 0, 'addon', 'You will receive the full Beastmaster outfit for one character.', 'Beastmaster Outfit', 7, 0, 0),
(28455, 20, 28455, 1, 0, 0, 'addon', 'You will receive the full Acolyte outfit for one character.', 'Acolyte Outfit', 7, 0, 0),
(28456, 20, 28456, 1, 0, 0, 'addon', 'You will receive the full Herald outfit for one character.', 'Herald Outfit', 7, 0, 0),
(28457, 20, 28457, 1, 0, 0, 'addon', 'You will receive the full Ranger outfit for one character.', 'Ranger Outfit', 7, 0, 0),
(28458, 20, 28458, 1, 0, 0, 'addon', 'You will receive the full Garb outfit for one character.', 'Garb Outfit', 7, 0, 0),
(28459, 20, 28459, 1, 0, 0, 'addon', 'You will receive the full Puppeteer outfit for one character.', 'Puppeteer Outfit', 7, 0, 0),
(28460, 20, 28460, 1, 0, 0, 'addon', 'You will receive the full Caller outfit for one character.', 'Caller Outfit', 7, 0, 0),
(28461, 20, 28461, 1, 0, 0, 'addon', 'You will receive the full Evoker outfit for one character.', 'Evoker Outfit', 7, 0, 0),
(28462, 20, 28462, 1, 0, 0, 'addon', 'You will receive the full Seaweaver outfit for one character.', 'Seaweaver Outfit', 7, 0, 0),
(28464, 20, 28464, 1, 0, 0, 'addon', 'You will receive the full Sea Dog outfit for one character.', 'Sea Dog Outfit', 7, 0, 0),
(28465, 20, 28465, 1, 0, 0, 'addon', 'You will receive the full Royal Pumpkin outfit for one character.', 'Royal Pumpkin Outfit', 7, 0, 0),
(28467, 20, 28467, 1, 0, 0, 'addon', 'You will receive the full Winter Warden outfit for one character.', 'Winter Warden Outfit', 7, 0, 0),
(28468, 20, 28468, 1, 0, 0, 'addon', 'You will receive the full Philosopher outfit for one character.', 'Philosopher Outfit', 7, 0, 0),
(28469, 20, 28469, 1, 0, 0, 'addon', 'You will receive the full Lupine Warden outfit for one character.', 'Lupine Warden Outfit', 7, 0, 0),
(28470, 20, 28470, 1, 0, 0, 'addon', 'You will receive the full Arena Champion outfit for one character.', 'Arena Champion Outfit', 7, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_2` (`name`),
  ADD UNIQUE KEY `name_3` (`name`);

--
-- Indexes for table `account_bans`
--
ALTER TABLE `account_bans`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indexes for table `account_ban_history`
--
ALTER TABLE `account_ban_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `banned_by` (`banned_by`),
  ADD KEY `account_id_2` (`account_id`),
  ADD KEY `account_id_3` (`account_id`),
  ADD KEY `account_id_4` (`account_id`),
  ADD KEY `account_id_5` (`account_id`);

--
-- Indexes for table `account_viplist`
--
ALTER TABLE `account_viplist`
  ADD UNIQUE KEY `account_player_index` (`account_id`,`player_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bugtracker`
--
ALTER TABLE `bugtracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `author` (`author`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `with` (`with`),
  ADD KEY `friend` (`friend`);

--
-- Indexes for table `global_storage`
--
ALTER TABLE `global_storage`
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `guilds`
--
ALTER TABLE `guilds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `ownerid` (`ownerid`);

--
-- Indexes for table `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warid` (`warid`);

--
-- Indexes for table `guild_invites`
--
ALTER TABLE `guild_invites`
  ADD PRIMARY KEY (`player_id`,`guild_id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indexes for table `guild_membership`
--
ALTER TABLE `guild_membership`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `guild_id` (`guild_id`),
  ADD KEY `rank_id` (`rank_id`);

--
-- Indexes for table `guild_ranks`
--
ALTER TABLE `guild_ranks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indexes for table `guild_wars`
--
ALTER TABLE `guild_wars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guild1` (`guild1`),
  ADD KEY `guild2` (`guild2`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`),
  ADD KEY `town_id` (`town_id`);

--
-- Indexes for table `house_lists`
--
ALTER TABLE `house_lists`
  ADD KEY `house_id` (`house_id`);

--
-- Indexes for table `ip_bans`
--
ALTER TABLE `ip_bans`
  ADD PRIMARY KEY (`ip`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indexes for table `live_casts`
--
ALTER TABLE `live_casts`
  ADD UNIQUE KEY `player_id_2` (`player_id`);

--
-- Indexes for table `lottery`
--
ALTER TABLE `lottery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `market_history`
--
ALTER TABLE `market_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`,`sale`);

--
-- Indexes for table `market_offers`
--
ALTER TABLE `market_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale` (`sale`,`itemtype`),
  ADD KEY `created` (`created`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from` (`from`),
  ADD KEY `to` (`to`);

--
-- Indexes for table `monsterskills`
--
ALTER TABLE `monsterskills`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `vocation` (`vocation`);

--
-- Indexes for table `players_online`
--
ALTER TABLE `players_online`
  ADD PRIMARY KEY (`player_id`);

--
-- Indexes for table `player_deaths`
--
ALTER TABLE `player_deaths`
  ADD KEY `player_id` (`player_id`),
  ADD KEY `killed_by` (`killed_by`),
  ADD KEY `mostdamage_by` (`mostdamage_by`);

--
-- Indexes for table `player_depotitems`
--
ALTER TABLE `player_depotitems`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`sid`);

--
-- Indexes for table `player_inboxitems`
--
ALTER TABLE `player_inboxitems`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`sid`);

--
-- Indexes for table `player_items`
--
ALTER TABLE `player_items`
  ADD KEY `player_id` (`player_id`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `player_namelocks`
--
ALTER TABLE `player_namelocks`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `namelocked_by` (`namelocked_by`);

--
-- Indexes for table `player_reports`
--
ALTER TABLE `player_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player_rewards`
--
ALTER TABLE `player_rewards`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`sid`);

--
-- Indexes for table `player_spells`
--
ALTER TABLE `player_spells`
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `player_storage`
--
ALTER TABLE `player_storage`
  ADD PRIMARY KEY (`player_id`,`key`);

--
-- Indexes for table `poll`
--
ALTER TABLE `poll`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question` (`question`);

--
-- Indexes for table `poll_answer`
--
ALTER TABLE `poll_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_id` (`poll_id`);

--
-- Indexes for table `poll_votes`
--
ALTER TABLE `poll_votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answer_id` (`answer_id`),
  ADD KEY `poll_id` (`poll_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `board_id` (`board_id`),
  ADD KEY `thread_id` (`thread_id`);

--
-- Indexes for table `sellchar`
--
ALTER TABLE `sellchar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_config`
--
ALTER TABLE `server_config`
  ADD PRIMARY KEY (`config`);

--
-- Indexes for table `store_history`
--
ALTER TABLE `store_history`
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `board_id` (`board_id`);

--
-- Indexes for table `tile_store`
--
ALTER TABLE `tile_store`
  ADD KEY `house_id` (`house_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_categorias`
--
ALTER TABLE `videos_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_comentarios`
--
ALTER TABLE `videos_comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_forum`
--
ALTER TABLE `z_forum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section` (`section`);

--
-- Indexes for table `z_network_box`
--
ALTER TABLE `z_network_box`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_ots_comunication`
--
ALTER TABLE `z_ots_comunication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_ots_guildcomunication`
--
ALTER TABLE `z_ots_guildcomunication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_polls`
--
ALTER TABLE `z_polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_shopguild_history_item`
--
ALTER TABLE `z_shopguild_history_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_shopguild_history_pacc`
--
ALTER TABLE `z_shopguild_history_pacc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_shopguild_offer`
--
ALTER TABLE `z_shopguild_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_shop_history_item`
--
ALTER TABLE `z_shop_history_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_shop_offer`
--
ALTER TABLE `z_shop_offer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `account_ban_history`
--
ALTER TABLE `account_ban_history`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bugtracker`
--
ALTER TABLE `bugtracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `guilds`
--
ALTER TABLE `guilds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `guild_ranks`
--
ALTER TABLE `guild_ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `guild_wars`
--
ALTER TABLE `guild_wars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2506;
--
-- AUTO_INCREMENT for table `lottery`
--
ALTER TABLE `lottery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `market_history`
--
ALTER TABLE `market_history`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `market_offers`
--
ALTER TABLE `market_offers`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `monsterskills`
--
ALTER TABLE `monsterskills`
  MODIFY `mid` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=208;
--
-- AUTO_INCREMENT for table `player_reports`
--
ALTER TABLE `player_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `poll`
--
ALTER TABLE `poll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poll_answer`
--
ALTER TABLE `poll_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poll_votes`
--
ALTER TABLE `poll_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sellchar`
--
ALTER TABLE `sellchar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `videos_categorias`
--
ALTER TABLE `videos_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_comentarios`
--
ALTER TABLE `videos_comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `z_forum`
--
ALTER TABLE `z_forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `z_network_box`
--
ALTER TABLE `z_network_box`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `z_ots_comunication`
--
ALTER TABLE `z_ots_comunication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `z_ots_guildcomunication`
--
ALTER TABLE `z_ots_guildcomunication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13382;
--
-- AUTO_INCREMENT for table `z_polls`
--
ALTER TABLE `z_polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `z_shopguild_history_item`
--
ALTER TABLE `z_shopguild_history_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `z_shopguild_history_pacc`
--
ALTER TABLE `z_shopguild_history_pacc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `z_shopguild_offer`
--
ALTER TABLE `z_shopguild_offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `z_shop_history_item`
--
ALTER TABLE `z_shop_history_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `z_shop_offer`
--
ALTER TABLE `z_shop_offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28471;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_bans`
--
ALTER TABLE `account_bans`
  ADD CONSTRAINT `account_bans_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_bans_ibfk_2` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `account_ban_history`
--
ALTER TABLE `account_ban_history`
  ADD CONSTRAINT `account_ban_history_ibfk_2` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ban_history_ibfk_3` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ban_history_ibfk_4` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ban_history_ibfk_5` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ban_history_ibfk_6` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `account_viplist`
--
ALTER TABLE `account_viplist`
  ADD CONSTRAINT `account_viplist_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `account_viplist_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bugtracker`
--
ALTER TABLE `bugtracker`
  ADD CONSTRAINT `bugtracker_ibfk_1` FOREIGN KEY (`author`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`author`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`with`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`friend`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guilds`
--
ALTER TABLE `guilds`
  ADD CONSTRAINT `guilds_ibfk_1` FOREIGN KEY (`ownerid`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  ADD CONSTRAINT `guildwar_kills_ibfk_1` FOREIGN KEY (`warid`) REFERENCES `guild_wars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guild_invites`
--
ALTER TABLE `guild_invites`
  ADD CONSTRAINT `guild_invites_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `guild_invites_ibfk_2` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guild_membership`
--
ALTER TABLE `guild_membership`
  ADD CONSTRAINT `guild_membership_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guild_membership_ibfk_2` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guild_membership_ibfk_3` FOREIGN KEY (`rank_id`) REFERENCES `guild_ranks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `guild_ranks`
--
ALTER TABLE `guild_ranks`
  ADD CONSTRAINT `guild_ranks_ibfk_1` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `house_lists`
--
ALTER TABLE `house_lists`
  ADD CONSTRAINT `house_lists_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ip_bans`
--
ALTER TABLE `ip_bans`
  ADD CONSTRAINT `ip_bans_ibfk_1` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `live_casts`
--
ALTER TABLE `live_casts`
  ADD CONSTRAINT `live_casts_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `market_history`
--
ALTER TABLE `market_history`
  ADD CONSTRAINT `market_history_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `market_offers`
--
ALTER TABLE `market_offers`
  ADD CONSTRAINT `market_offers_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_deaths`
--
ALTER TABLE `player_deaths`
  ADD CONSTRAINT `player_deaths_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_depotitems`
--
ALTER TABLE `player_depotitems`
  ADD CONSTRAINT `player_depotitems_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_inboxitems`
--
ALTER TABLE `player_inboxitems`
  ADD CONSTRAINT `player_inboxitems_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_items`
--
ALTER TABLE `player_items`
  ADD CONSTRAINT `player_items_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_namelocks`
--
ALTER TABLE `player_namelocks`
  ADD CONSTRAINT `player_namelocks_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_namelocks_ibfk_2` FOREIGN KEY (`namelocked_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `player_rewards`
--
ALTER TABLE `player_rewards`
  ADD CONSTRAINT `player_rewards_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_spells`
--
ALTER TABLE `player_spells`
  ADD CONSTRAINT `player_spells_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_storage`
--
ALTER TABLE `player_storage`
  ADD CONSTRAINT `player_storage_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `poll_answer`
--
ALTER TABLE `poll_answer`
  ADD CONSTRAINT `poll_answer_ibfk_1` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `poll_votes`
--
ALTER TABLE `poll_votes`
  ADD CONSTRAINT `poll_votes_ibfk_1` FOREIGN KEY (`answer_id`) REFERENCES `poll_answer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `poll_votes_ibfk_2` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `poll_votes_ibfk_3` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`board_id`) REFERENCES `forums` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `store_history`
--
ALTER TABLE `store_history`
  ADD CONSTRAINT `store_history_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `threads`
--
ALTER TABLE `threads`
  ADD CONSTRAINT `threads_ibfk_1` FOREIGN KEY (`board_id`) REFERENCES `forums` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tile_store`
--
ALTER TABLE `tile_store`
  ADD CONSTRAINT `tile_store_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
