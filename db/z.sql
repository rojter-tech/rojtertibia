CREATE TABLE IF NOT EXISTS `z_ots_comunication` (
  `id` int(11) NOT NULL auto_increment,
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
  `delete_it` int(2) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `z_ots_guildcomunication` (
  `id` INT(11) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `type` VARCHAR(255) NOT NULL,
  `action` VARCHAR(255) NOT NULL,
  `param1` VARCHAR(255) NOT NULL,
  `param2` VARCHAR(255) NOT NULL,
  `param3` VARCHAR(255) NOT NULL,
  `param4` VARCHAR(255) NOT NULL,
  `param5` VARCHAR(255) NOT NULL,
  `param6` VARCHAR(255) NOT NULL,
  `param7` VARCHAR(255) NOT NULL,
  `delete_it` INT(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;