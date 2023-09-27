-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 28, 2022 at 04:50 PM
-- Server version: 5.7.38-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samp`
--

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int(11) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `bannedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL,
  `permanent` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` int(11) NOT NULL,
  `ownerid` int(11) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `name` varchar(64) DEFAULT 'Unamed Business',
  `message` varchar(128) DEFAULT 'Welcome to the business!',
  `type` tinyint(4) DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `timestamp` int(11) DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `int_x` float DEFAULT '0',
  `int_y` float DEFAULT '0',
  `int_z` float DEFAULT '0',
  `int_a` float DEFAULT '0',
  `interior` tinyint(4) DEFAULT '0',
  `world` int(11) DEFAULT '0',
  `outsideint` tinyint(4) DEFAULT '0',
  `outsidevw` int(11) DEFAULT '0',
  `cash` int(11) DEFAULT '0',
  `products` int(11) DEFAULT '500',
  `robbed` smallint(6) NOT NULL DEFAULT '3',
  `robbing` int(11) DEFAULT NULL,
  `prices0` int(11) NOT NULL DEFAULT '0',
  `prices1` int(11) NOT NULL DEFAULT '0',
  `prices2` int(11) NOT NULL DEFAULT '0',
  `prices3` int(11) NOT NULL DEFAULT '0',
  `prices4` int(11) NOT NULL DEFAULT '0',
  `prices5` int(11) NOT NULL DEFAULT '0',
  `prices6` int(11) NOT NULL DEFAULT '0',
  `prices7` int(11) NOT NULL DEFAULT '0',
  `prices8` int(11) NOT NULL DEFAULT '0',
  `prices9` int(11) NOT NULL DEFAULT '0',
  `prices10` int(11) NOT NULL DEFAULT '0',
  `prices11` int(11) NOT NULL DEFAULT '0',
  `prices12` int(11) NOT NULL DEFAULT '0',
  `prices13` int(11) NOT NULL DEFAULT '0',
  `prices14` int(11) NOT NULL DEFAULT '0',
  `prices15` int(11) NOT NULL DEFAULT '0',
  `prices16` int(11) NOT NULL DEFAULT '0',
  `prices17` int(11) NOT NULL DEFAULT '0',
  `prices18` int(11) NOT NULL DEFAULT '0',
  `prices19` int(11) NOT NULL DEFAULT '0',
  `prices20` int(11) NOT NULL DEFAULT '0',
  `biztime` int(11) DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businesses`
--



--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `chargedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clothing`
--

CREATE TABLE `clothing` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `modelid` smallint(6) DEFAULT NULL,
  `boneid` tinyint(4) DEFAULT NULL,
  `attached` tinyint(1) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `scale_x` float DEFAULT NULL,
  `scale_y` float DEFAULT NULL,
  `scale_z` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` tinyint(4) DEFAULT NULL,
  `divisionid` tinyint(4) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entrances`
--

CREATE TABLE `entrances` (
  `id` int(11) NOT NULL,
  `ownerid` int(11) DEFAULT '0',
  `owner` varchar(24) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `iconid` smallint(6) DEFAULT '1318',
  `locked` tinyint(1) DEFAULT '0',
  `radius` float DEFAULT '3',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `int_x` float DEFAULT '0',
  `int_y` float DEFAULT '0',
  `int_z` float DEFAULT '0',
  `int_a` float DEFAULT '0',
  `interior` tinyint(4) DEFAULT '0',
  `world` int(11) DEFAULT '0',
  `outsideint` tinyint(4) DEFAULT '0',
  `outsidevw` int(11) DEFAULT '0',
  `adminlevel` tinyint(4) DEFAULT '0',
  `factiontype` tinyint(4) DEFAULT '0',
  `vip` tinyint(4) DEFAULT '0',
  `vehicles` tinyint(1) DEFAULT '0',
  `freeze` tinyint(1) DEFAULT '0',
  `password` varchar(64) DEFAULT 'None',
  `label` tinyint(1) DEFAULT '1',
  `color` int(11) NOT NULL DEFAULT '-256'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `entrances` (`id`, `ownerid`, `owner`, `name`, `iconid`, `locked`, `radius`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `int_x`, `int_y`, `int_z`, `int_a`, `interior`, `world`, `outsideint`, `outsidevw`, `adminlevel`, `factiontype`, `vip`, `vehicles`, `freeze`, `password`, `label`, `color`) VALUES
(1, 0, NULL, 'The Well Stacked Pizza Co.', 1318, 0, 3, 2105.44, -1806.5, 13.555, 83.707, 372.302, -133.122, 1001.49, 0, 5, 1, 0, 0, 0, 0, 0, 0, 1, 'None', 1, -256),
(2, 0, NULL, 'Los Santos Police Department', 1318, 0, 3, 1555.5, -1675.63, 16.195, 81.685, 101.787, 1073.64, -48.914, 174.65, 0, 40002, 0, 0, 0, 0, 0, 0, 1, 'None', 1, -256),
(3, 0, NULL, 'Driving School', 1318, 0, 3, 2065.59, -2080.77, 13.559, -100.574, 201.441, -195.64, 1000.52, 260.214, 0, 4000033, 0, 0, 0, 0, 0, 0, 1, 'None', 1, -256),
(4, 0, NULL, 'City Hall', 1318, 0, 3, 1481.07, -1772.31, 18.796, -0.071, 1399.84, -0.497, 1000.85, 166.045, 0, 40004, 0, 0, 0, 0, 0, 0, 1, 'None', 1, -256),
(5, 0, NULL, 'Miner', 1318, 0, 3, 602.181, 867.929, -42.961, 281.738, 957.751, 388.357, -33.269, 260.359, 0, 40005, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -256);


--
-- Table structure for table `factionpay`
--

CREATE TABLE `factionpay` (
  `id` tinyint(4) DEFAULT NULL,
  `rank` tinyint(4) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `factionranks`
--

CREATE TABLE `factionranks` (
  `id` tinyint(4) DEFAULT NULL,
  `rank` tinyint(4) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(48) DEFAULT NULL,
  `shortname` tinytext,
  `leader` varchar(24) DEFAULT 'No-one',
  `type` tinyint(4) DEFAULT '0',
  `color` int(11) DEFAULT '-1',
  `rankcount` tinyint(4) DEFAULT '6',
  `lockerx` float DEFAULT '0',
  `lockery` float DEFAULT '0',
  `lockerz` float DEFAULT '0',
  `lockerinterior` tinyint(4) DEFAULT '0',
  `lockerworld` int(11) DEFAULT '0',
  `turftokens` int(11) DEFAULT '0',
  `cash` int(11) DEFAULT '0',
  `pot` int(11) DEFAULT '0',
  `mats` int(11) DEFAULT '0',
  `crack` int(11) DEFAULT '0',
  `meth` int(11) DEFAULT '0',
  `painkiller` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factionskins`
--

CREATE TABLE `factionskins` (
  `id` tinyint(4) DEFAULT NULL,
  `slot` tinyint(4) DEFAULT NULL,
  `skinid` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factionskins`
--


--
-- Table structure for table `flags`
--

CREATE TABLE `flags` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `flaggedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fuelstations`
--

CREATE TABLE `fuelstations`(
  `id` int(5) NOT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `price` int(3) DEFAULT 135,
  `max_fuel` int(5) DEFAULT 20000,
  `net_fuel` int(5) DEFAULT 10000,
  `level` int(2) DEFAULT 0,
  `stash_x` float DEFAULT 0.0,
  `stash_y` float DEFAULT 0.0,
  `stash_z` float DEFAULT 0.0,
  `stash_cash` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `id` int(11) NOT NULL,
  `houseid` int(11) DEFAULT NULL,
  `modelid` smallint(6) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `interior` tinyint(4) DEFAULT NULL,
  `world` int(11) DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT '0',
  `door_locked` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `gangranks`
--

CREATE TABLE `gangranks` (
  `id` tinyint(4) DEFAULT NULL,
  `rank` tinyint(4) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `gangs`
--

CREATE TABLE `gangs` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(32) DEFAULT 'None',
  `motd` varchar(128) DEFAULT 'None',
  `leader` varchar(24) DEFAULT 'No-one',
  `color` int(11) DEFAULT '-256',
  `strikes` tinyint(1) DEFAULT '0',
  `level` tinyint(4) DEFAULT '1',
  `alliance` int(11) NOT NULL DEFAULT '-1',
  `points` int(11) DEFAULT '0',
  `turftokens` int(11) DEFAULT '0',
  `stash_x` float DEFAULT '0',
  `stash_y` float DEFAULT '0',
  `stash_z` float DEFAULT '0',
  `stashinterior` tinyint(4) DEFAULT '0',
  `stashworld` int(11) DEFAULT '0',
  `cash` int(11) DEFAULT '0',
  `materials` int(11) DEFAULT '0',
  `pot` int(11) DEFAULT '0',
  `crack` int(11) DEFAULT '0',
  `meth` int(11) DEFAULT '0',
  `painkillers` int(11) DEFAULT '0',
  `weapon_9mm` int(11) DEFAULT '0',
  `weapon_sdpistol` int(11) DEFAULT '0',
  `weapon_deagle` int(11) DEFAULT '0',
  `weapon_shotgun` int(11) DEFAULT '0',
  `weapon_spas12` int(11) DEFAULT '0',
  `weapon_tec9` int(11) DEFAULT '0',
  `weapon_uzi` int(11) DEFAULT '0',
  `weapon_mp5` int(11) DEFAULT '0',
  `weapon_ak47` int(11) DEFAULT '0',
  `weapon_m4` int(11) DEFAULT '0',
  `weapon_rifle` int(11) DEFAULT '0',
  `weapon_sniper` int(11) DEFAULT '0',
  `weapon_rpg` int(11) DEFAULT '0',
  `armsdealer` tinyint(1) DEFAULT '0',
  `arms_x` float DEFAULT '0',
  `arms_y` float DEFAULT '0',
  `arms_z` float DEFAULT '0',
  `arms_a` float DEFAULT '0',
  `armsworld` int(11) DEFAULT '0',
  `armsinterior` int(11) DEFAULT '0',
  `armsmaterials` int(11) DEFAULT '0',
  `armsprice_1` int(11) DEFAULT '0',
  `armsprice_2` int(11) DEFAULT '0',
  `armsprice_3` int(11) DEFAULT '0',
  `armsprice_4` int(11) DEFAULT '0',
  `armsprice_5` int(11) DEFAULT '0',
  `armsprice_6` int(11) DEFAULT '0',
  `armsprice_7` int(11) DEFAULT '0',
  `armsprice_8` int(11) DEFAULT '0',
  `armsprice_9` int(11) NOT NULL DEFAULT '0',
  `armsprice_10` int(11) NOT NULL DEFAULT '0',
  `armsprice_11` int(11) NOT NULL DEFAULT '0',
  `armsprice_12` tinyint(4) NOT NULL DEFAULT '0',
  `drugdealer` tinyint(1) DEFAULT '0',
  `drug_x` float DEFAULT '0',
  `drug_y` float DEFAULT '0',
  `drug_z` float DEFAULT '0',
  `drug_a` float DEFAULT '0',
  `drugworld` int(11) DEFAULT '0',
  `druginterior` int(11) DEFAULT '0',
  `drugpot` int(11) DEFAULT '0',
  `drugcrack` int(11) DEFAULT '0',
  `drugmeth` int(11) DEFAULT '0',
  `pot_price` int(11) DEFAULT '0',
  `crack_price` int(11) DEFAULT '0',
  `meth_price` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `gangskins`
--

CREATE TABLE `gangskins` (
  `id` tinyint(4) DEFAULT NULL,
  `slot` tinyint(4) DEFAULT NULL,
  `skinid` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `garages`
--

CREATE TABLE `garages` (
  `id` int(11) NOT NULL,
  `ownerid` int(11) DEFAULT '0',
  `owner` varchar(24) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `timestamp` int(11) DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `exit_x` float DEFAULT '0',
  `exit_y` float DEFAULT '0',
  `exit_z` float DEFAULT '0',
  `exit_a` float DEFAULT '0',
  `world` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `gateID` int(11) NOT NULL,
  `gateModel` int(11) DEFAULT '980',
  `gateSpeed` float DEFAULT '0',
  `gateTime` int(11) DEFAULT '0',
  `gateX` float DEFAULT '0',
  `gateY` float DEFAULT '0',
  `gateZ` float DEFAULT '0',
  `gateRX` float DEFAULT '0',
  `gateRY` float DEFAULT '0',
  `gateRZ` float DEFAULT '0',
  `gateInterior` int(11) DEFAULT '0',
  `gateWorld` int(11) DEFAULT '0',
  `gateMoveX` float DEFAULT '0',
  `gateMoveY` float DEFAULT '0',
  `gateMoveZ` float DEFAULT '0',
  `gateMoveRX` float DEFAULT '0',
  `gateMoveRY` float DEFAULT '0',
  `gateMoveRZ` float DEFAULT '0',
  `gateLinkID` int(11) DEFAULT '0',
  `gateFaction` int(11) DEFAULT '0',
  `gatePass` varchar(32) DEFAULT NULL,
  `gateRadius` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `graffiti`
--

CREATE TABLE `graffiti` (
  `graffitiID` int(11) NOT NULL,
  `graffitiX` float DEFAULT '0',
  `graffitiY` float DEFAULT '0',
  `graffitiZ` float DEFAULT '0',
  `graffitiAngle` float DEFAULT '0',
  `graffitiColor` int(11) DEFAULT '0',
  `graffitiText` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(11) NOT NULL,
  `ownerid` int(11) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `type` tinyint(4) DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `rentprice` int(11) DEFAULT '0',
  `level` tinyint(4) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `timestamp` int(11) DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `int_x` float DEFAULT '0',
  `int_y` float DEFAULT '0',
  `int_z` float DEFAULT '0',
  `int_a` float DEFAULT '0',
  `interior` tinyint(4) DEFAULT '0',
  `world` int(11) DEFAULT '0',
  `outsideint` int(11) DEFAULT '0',
  `outsidevw` int(11) DEFAULT '0',
  `cash` int(11) DEFAULT '0',
  `materials` int(11) DEFAULT '0',
  `pot` int(11) DEFAULT '0',
  `crack` int(11) DEFAULT '0',
  `meth` int(11) DEFAULT '0',
  `painkillers` int(11) DEFAULT '0',
  `weapon_1` tinyint(4) DEFAULT '0',
  `weapon_2` tinyint(4) DEFAULT '0',
  `weapon_3` tinyint(4) DEFAULT '0',
  `weapon_4` tinyint(4) DEFAULT '0',
  `weapon_5` tinyint(4) DEFAULT '0',
  `weapon_6` tinyint(4) DEFAULT '0',
  `weapon_7` tinyint(4) DEFAULT '0',
  `weapon_8` tinyint(4) DEFAULT '0',
  `weapon_9` tinyint(4) DEFAULT '0',
  `weapon_10` tinyint(4) DEFAULT '0',
  `robbed` smallint(6) NOT NULL DEFAULT '3',
  `robbing` smallint(6) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `mapicons`
--

CREATE TABLE `mapicons` (
  `mid` int(11) NOT NULL,
  `mp_model` tinyint(4) DEFAULT '56',
  `mp_x` float DEFAULT '0',
  `mp_y` float DEFAULT '0',
  `mp_z` float DEFAULT '0',
  `mp_int` tinyint(4) DEFAULT '0',
  `mp_vw` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `object`
--

CREATE TABLE `object` (
  `mobjID` int(11) NOT NULL,
  `mobjModel` int(11) NOT NULL DEFAULT '980',
  `mobjInterior` int(11) NOT NULL DEFAULT '0',
  `mobjWorld` int(11) NOT NULL DEFAULT '0',
  `mobjX` float NOT NULL DEFAULT '0',
  `mobjY` float NOT NULL DEFAULT '0',
  `mobjZ` float NOT NULL DEFAULT '0',
  `mobjRX` float NOT NULL DEFAULT '0',
  `mobjRY` float NOT NULL DEFAULT '0',
  `mobjRZ` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint(4) DEFAULT '-1',
  `type` tinyint(4) DEFAULT '0',
  `profits` int(11) DEFAULT '0',
  `time` tinyint(4) DEFAULT '10',
  `point_x` float DEFAULT '0',
  `point_y` float DEFAULT '0',
  `point_z` float DEFAULT '0',
  `pointinterior` tinyint(4) DEFAULT '0',
  `pointworld` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------


CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `ownerid` int(11) DEFAULT 0,
  `owner` varchar(24) DEFAULT "Nobody",
  `message` varchar(128) DEFAULT "Welcome to My Restaurant"
  `type` varchar(1) DEFAULT 0,
  `price` int(11) DEFAULT 10000000000,
  `locked` int(1) DEFAULT 0,
  `pos_x` float DEFAULT 0.0,
  `pos_y` float DEFAULT 0.0,
  `pos_z` float DEFAULT 0.0,
  `pos_a` float DEFAULT 0.0,
  `int_x` float DEFAULT 0.0,
  `int_y` float DEFAULT 0.0,
  `int_z` float DEFAULT 0.0,
  `int_a` float DEFAULT 0.0,
  `interior` tinyint(4) DEFAULT '0',
  `world` int(11) DEFAULT '0',
  `outsideint` tinyint(4) DEFAULT '0',
  `outsidevw` int(11) DEFAULT '0',
  `prices0` int(11) NOT NULL DEFAULT '0',
  `prices1` int(11) NOT NULL DEFAULT '0',
  `prices2` int(11) NOT NULL DEFAULT '0',
  `prices3` int(11) NOT NULL DEFAULT '0',
  `prices4` int(11) NOT NULL DEFAULT '0',
  `prices5` int(11) NOT NULL DEFAULT '0',
  `stash_x` float DEFAULT 0.0,
  `stash_y` float DEFAULT 0.0,
  `stash_z` float DEFAULT 0.0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `rid` int(5) NOT NULL,
  `name` varchar(32) DEFAULT 'Vehicle Station',
  `rtype` int(1) NOT NULL,
  `rsetup` int(1) DEFAULT 0,
  `rpos_x` float DEFAULT '0',
  `rpos_y` float DEFAULT '0',
  `rpos_z` float DEFAULT '0',
  `vpos_x` float DEFAULT '0',
  `vpos_y` float DEFAULT '0',
  `vpos_z` float DEFAULT '0',
  `vpos_a` float DEFAULT '0',
  `v_model_1` int(3) DEFAULT NULL,
  `v_model_2` int(3) DEFAULT NULL,
  `v_model_3` int(3) DEFAULT NULL,
  `v_model_4` int(3) DEFAULT NULL,
  `v_model_5` int(3) DEFAULT NULL,
  `v_model_6` int(3) DEFAULT NULL,
  `v_model_7` int(3) DEFAULT NULL,
  `v_model_8` int(3) DEFAULT NULL,
  `v_model_9` int(3) DEFAULT NULL,
  `v_model_10` int(3) DEFAULT NULL,
  `v_price_1` int(3) DEFAULT 50,
  `v_price_2` int(3) DEFAULT 50,
  `v_price_3` int(3) DEFAULT 50,
  `v_price_4` int(3) DEFAULT 50,
  `v_price_5` int(3) DEFAULT 50,
  `v_price_6` int(3) DEFAULT 50,
  `v_price_7` int(3) DEFAULT 50,
  `v_price_8` int(3) DEFAULT 50,
  `v_price_9` int(3) DEFAULT 50,
  `v_price_10` int(3) DEFAULT 50
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `safezones`
--

CREATE TABLE `safezones` (
  `id` int(11) NOT NULL,
  `min_x` float DEFAULT '0',
  `min_y` float DEFAULT '0',
  `max_x` float DEFAULT '0',
  `max_y` float DEFAULT '0',
  `height` float DEFAULT '0',
  `sx` float NOT NULL,
  `sy` float NOT NULL,
  `sz` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `tax` int(11) DEFAULT '0',
  `vault` int(11) DEFAULT '0',
  `playerrecord` int(11) DEFAULT '0',
  `connections` int(11) DEFAULT '0',
  `registered` int(11) DEFAULT '0',
  `kills` int(11) DEFAULT '0',
  `deaths` int(11) DEFAULT '0',
  `hours` int(11) DEFAULT '0',
  `bans` int(11) DEFAULT '0',
  `turfcap` int(11) DEFAULT '0',
  `pointcap` int(11) DEFAULT '0',
  `recorddate` varchar(24) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0',
  `motd` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0',
  `adminmotd` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0',
  `helpermotd` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0',
  `doublexp` tinyint(4) DEFAULT '0',
  `mafiacash` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`tax`, `vault`, `playerrecord`, `connections`, `registered`, `kills`, `deaths`, `hours`, `bans`, `turfcap`, `pointcap`, `recorddate`, `motd`, `adminmotd`, `helpermotd`, `doublexp`, `mafiacash`) VALUES
(2, -15890989, 56, 149358, 1496, 78765, 83702, 29959, 0, 1, 1, '13-03-2022 16:16', 'Welcome to Digital Bangladesh Roleplay, If you need help just use /newbinfo or ask in /n!', 'Be Professional, Do not TP someone on right away, Do not hack on LS, Always be friendly!', 'Be Professional. Always help everyone, Be active. Quality over Quantity.', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `speedcameras`
--

CREATE TABLE `speedcameras` (
  `speedID` int(11) NOT NULL,
  `speedRange` float DEFAULT '0',
  `speedLimit` float DEFAULT '0',
  `speedX` float DEFAULT '0',
  `speedY` float DEFAULT '0',
  `speedZ` float DEFAULT '0',
  `speedAngle` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` int(11) NOT NULL,
  `sender_number` int(11) DEFAULT NULL,
  `recipient_number` int(11) DEFAULT NULL,
  `sender` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `turfs`
--

CREATE TABLE `turfs` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint(4) DEFAULT '-1',
  `type` tinyint(4) DEFAULT '0',
  `time` tinyint(4) DEFAULT '12',
  `min_x` float DEFAULT '0',
  `min_y` float DEFAULT '0',
  `max_x` float DEFAULT '0',
  `max_y` float DEFAULT '0',
  `height` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `password` varchar(129) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `serial` varchar(41) DEFAULT NULL,
  `setup` tinyint(1) DEFAULT '1',
  `gender` tinyint(1) DEFAULT '1',
  `age` tinyint(4) DEFAULT '18',
  `skin` smallint(6) DEFAULT '299',
  `camera_x` float DEFAULT '0',
  `camera_y` float DEFAULT '0',
  `camera_z` float DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `interior` tinyint(4) DEFAULT '0',
  `world` int(11) DEFAULT '0',
  `cash` int(11) DEFAULT '5000',
  `bank` int(11) DEFAULT '5000',
  `paycheck` int(11) DEFAULT '0',
  `level` int(11) DEFAULT '1',
  `exp` int(11) DEFAULT '0',
  `minutes` smallint(6) DEFAULT '0',
  `hours` int(11) DEFAULT '0',
  `adminlevel` int(11) DEFAULT '0',
  `adminname` varchar(24) DEFAULT 'None',
  `helperlevel` tinyint(4) DEFAULT '0',
  `health` float DEFAULT '100',
  `armor` float DEFAULT '0.0',
  `upgradepoints` int(11) DEFAULT '0',
  `warnings` tinyint(4) DEFAULT '0',
  `injured` tinyint(1) DEFAULT '0',
  `hospital` tinyint(1) DEFAULT '0',
  `spawnhealth` float DEFAULT '50',
  `spawnarmor` float DEFAULT '0',
  `jailtype` tinyint(1) DEFAULT '0',
  `jailtime` int(11) DEFAULT '0',
  `newbiemuted` tinyint(1) DEFAULT '0',
  `helpmuted` tinyint(1) DEFAULT '0',
  `admuted` tinyint(1) DEFAULT '0',
  `livemuted` tinyint(1) DEFAULT '0',
  `globalmuted` tinyint(1) DEFAULT '0',
  `reportmuted` tinyint(4) DEFAULT '0',
  `reportwarns` tinyint(4) DEFAULT '0',
  `fightstyle` tinyint(4) DEFAULT '4',
  `locked` tinyint(1) DEFAULT '0',
  `accent` varchar(256) DEFAULT 'None',
  `phone` int(11) DEFAULT '0',
  `number` int(11) DEFAULT '0',
  `job` int(11) DEFAULT '-1',
  `secondjob` tinyint(4) DEFAULT '-1',
  `crimes` int(11) DEFAULT '0',
  `arrested` int(11) DEFAULT '0',
  `wantedlevel` tinyint(4) DEFAULT '0',
  `materials` int(11) DEFAULT '0',
  `pot` int(11) DEFAULT '0',
  `crack` int(11) DEFAULT '0',
  `meth` int(11) DEFAULT '0',
  `painkillers` int(11) DEFAULT '0',
  `seeds` int(11) DEFAULT '0',
  `ephedrine` int(11) DEFAULT '0',
  `muriaticacid` int(11) DEFAULT '0',
  `bakingsoda` int(11) DEFAULT '0',
  `cigars` int(11) DEFAULT '0',
  `walkietalkie` tinyint(1) DEFAULT '0',
  `channel` int(11) DEFAULT '0',
  `rentinghouse` int(11) DEFAULT '0',
  `spraycans` int(11) DEFAULT '0',
  `boombox` tinyint(1) DEFAULT '0',
  `mp3player` tinyint(1) DEFAULT '0',
  `phonebook` tinyint(1) DEFAULT '0',
  `fishingrod` tinyint(1) DEFAULT '0',
  `fishingbait` int(11) DEFAULT '0',
  `fishweight` int(11) DEFAULT '0',
  `truckerskill` int(11) DEFAULT '0',
  `fishingskill` int(11) DEFAULT '0',
  `weaponskill` int(11) DEFAULT '0',
  `mechanicskill` int(11) DEFAULT '0',
  `lawyerskill` int(11) DEFAULT '0',
  `smugglerskill` int(11) DEFAULT '0',
  `toggletextdraws` tinyint(1) DEFAULT '0',
  `toggleooc` tinyint(1) DEFAULT '0',
  `togglephone` tinyint(1) DEFAULT '0',
  `toggleadmin` tinyint(1) DEFAULT '0',
  `togglehelper` tinyint(1) DEFAULT '0',
  `togglenewbie` tinyint(1) DEFAULT '0',
  `togglewt` tinyint(1) DEFAULT '0',
  `toggleradio` tinyint(1) DEFAULT '0',
  `togglevip` tinyint(1) DEFAULT '0',
  `togglemusic` tinyint(1) DEFAULT '0',
  `togglefaction` tinyint(1) DEFAULT '0',
  `togglegang` tinyint(1) DEFAULT '0',
  `togglenews` tinyint(1) DEFAULT '0',
  `toggleglobal` tinyint(1) DEFAULT '0',
  `carlicense` tinyint(1) DEFAULT '0',
  `vippackage` tinyint(4) NOT NULL DEFAULT '0',
  `viptime` int(11) DEFAULT '0',
  `vipcooldown` int(11) DEFAULT '0',
  `weapon_0` tinyint(4) DEFAULT '0',
  `weapon_1` tinyint(4) DEFAULT '0',
  `weapon_2` tinyint(4) DEFAULT '0',
  `weapon_3` tinyint(4) DEFAULT '0',
  `weapon_4` tinyint(4) DEFAULT '0',
  `weapon_5` tinyint(4) DEFAULT '0',
  `weapon_6` tinyint(4) DEFAULT '0',
  `weapon_7` tinyint(4) DEFAULT '0',
  `weapon_8` tinyint(4) DEFAULT '0',
  `weapon_9` tinyint(4) DEFAULT '0',
  `weapon_10` tinyint(4) DEFAULT '0',
  `weapon_11` tinyint(4) DEFAULT '0',
  `weapon_12` tinyint(4) DEFAULT '0',
  `faction` tinyint(4) DEFAULT '-1',
  `gang` tinyint(4) DEFAULT '-1',
  `factionrank` tinyint(4) DEFAULT '0',
  `gangrank` tinyint(4) DEFAULT '0',
  `division` tinyint(4) DEFAULT '-1',
  `contracted` int(11) DEFAULT '0',
  `contractby` varchar(24) DEFAULT 'Nobody',
  `bombs` int(11) DEFAULT '0',
  `completedhits` int(11) DEFAULT '0',
  `failedhits` int(11) DEFAULT '0',
  `reports` int(11) DEFAULT '0',
  `helprequests` int(11) DEFAULT '0',
  `speedometer` tinyint(1) DEFAULT '1',
  `factionmod` tinyint(1) DEFAULT '0',
  `gangmod` tinyint(1) DEFAULT '0',
  `banappealer` tinyint(1) DEFAULT '0',
  `ap` tinyint(1) DEFAULT '0',
  `hm` tinyint(1) DEFAULT '0',
  `mapper` tinyint(1) DEFAULT '0',
  `potplanted` tinyint(1) DEFAULT '0',
  `pottime` int(11) DEFAULT '0',
  `potgrams` int(11) DEFAULT '0',
  `pot_x` float DEFAULT '0',
  `pot_y` float DEFAULT '0',
  `pot_z` float DEFAULT '0',
  `pot_a` float DEFAULT '0',
  `inventoryupgrade` int(11) DEFAULT '0',
  `addictupgrade` int(11) DEFAULT '0',
  `traderupgrade` int(11) DEFAULT '0',
  `assetupgrade` int(11) DEFAULT '0',
  `laborupgrade` int(11) NOT NULL DEFAULT '0',
  `dmwarnings` tinyint(4) DEFAULT '0',
  `weaponrestricted` int(11) DEFAULT '0',
  `referral_uid` int(11) DEFAULT '0',
  `refercount` int(11) DEFAULT '0',
  `watch` tinyint(1) DEFAULT '0',
  `gps` tinyint(1) DEFAULT '0',
  `prisonedby` varchar(24) DEFAULT 'No-one',
  `prisonreason` varchar(256) DEFAULT 'None',
  `togglehud` tinyint(1) DEFAULT '1',
  `clothes` smallint(6) DEFAULT '-1',
  `showturfs` tinyint(1) DEFAULT '0',
  `showlands` tinyint(1) DEFAULT '0',
  `watchon` tinyint(1) DEFAULT '0',
  `gpson` tinyint(1) DEFAULT '0',
  `doublexp` int(11) DEFAULT '0',
  `pizzacooldown` int(11) DEFAULT '0',
  `detectivecooldown` int(11) DEFAULT '0',
  `carjackcooldown` int(11) DEFAULT '0',
  `duty` int(11) DEFAULT '0',
  `bandana` int(11) NOT NULL DEFAULT '0',
  `detectiveskill` int(11) DEFAULT '0',
  `refunded` int(11) DEFAULT '0',
  `backpack` int(11) DEFAULT '0',
  `bpcash` int(11) DEFAULT '0',
  `bpmaterials` int(11) DEFAULT '0',
  `bppot` int(11) DEFAULT '0',
  `bpcrack` int(11) DEFAULT '0',
  `bpmeth` int(11) DEFAULT '0',
  `bppainkillers` int(11) DEFAULT '0',
  `bpweapon_0` int(11) DEFAULT '0',
  `bpweapon_1` int(11) DEFAULT '0',
  `bpweapon_2` int(11) DEFAULT '0',
  `bpweapon_3` int(11) DEFAULT '0',
  `bpweapon_4` int(11) DEFAULT '0',
  `bpweapon_5` int(11) DEFAULT '0',
  `bpweapon_6` int(11) DEFAULT '0',
  `bpweapon_7` int(11) DEFAULT '0',
  `bpweapon_8` int(11) DEFAULT '0',
  `bpweapon_9` int(11) DEFAULT '0',
  `bpweapon_10` int(11) DEFAULT '0',
  `bpweapon_11` int(11) DEFAULT '0',
  `bpweapon_12` int(11) DEFAULT '0',
  `bpweapon_13` int(11) DEFAULT '0',
  `bpweapon_14` int(11) DEFAULT '0',
  `formeradmin` int(11) NOT NULL DEFAULT '0',
  `deathcooldown` int(11) NOT NULL DEFAULT '0',
  `hunger` int(11) NOT NULL DEFAULT '100',
  `hungertimer` int(11) NOT NULL DEFAULT '0',
  `thirst` int(11) NOT NULL DEFAULT '100',
  `thirsttimer` int(11) NOT NULL DEFAULT '0',
  `totalpatients` int(11) NOT NULL DEFAULT '0',
  `totalfires` int(11) NOT NULL DEFAULT '0',
  `rarecooldown` int(11) NOT NULL DEFAULT '0',
  `vipdlcooldown` int(11) NOT NULL DEFAULT '0',
  `mask` int(11) NOT NULL DEFAULT '0',
  `diamonds` int(11) NOT NULL DEFAULT '0',
  `blindfold` int(11) NOT NULL DEFAULT '0',
  `rope` int(11) NOT NULL DEFAULT '0',
  `insurance` int(11) NOT NULL DEFAULT '0',
  `passport` int(11) NOT NULL DEFAULT '0',
  `passportname` varchar(64) DEFAULT NULL,
  `passportlevel` int(11) NOT NULL DEFAULT '0',
  `passportskin` int(11) NOT NULL DEFAULT '0',
  `passportphone` int(11) NOT NULL DEFAULT '0',
  `marriedto` int(11) NOT NULL DEFAULT '-1',
  `newbies` int(11) NOT NULL DEFAULT '0',
  `chatanim` tinyint(4) NOT NULL DEFAULT '0',
  `repairkit` tinyint(4) NOT NULL DEFAULT '0',
  `toolkit` tinyint(4) NOT NULL DEFAULT '0',
  `flashlight` tinyint(4) NOT NULL DEFAULT '0',
  `gunlicense` tinyint(4) NOT NULL DEFAULT '0',
  `dirtycash` int(11) NOT NULL DEFAULT '0',
  `comserv` int(11) NOT NULL DEFAULT '0',
  `comservskin` smallint(6) DEFAULT '-1',
  `gascan` int(11) NOT NULL DEFAULT '0',
  `showzones` tinyint(1) DEFAULT '1',
  `lastsign` int(11) DEFAULT '0',
  `contractreason` varchar(256) DEFAULT 'None',
  `contractresult` tinyint(4) DEFAULT '-1',
  `togglechat` tinyint(4) DEFAULT '1',
  `rob_phone` int(11) DEFAULT '0',
  `rob_watch` int(11) DEFAULT '0',
  `mafia` tinyint(4) DEFAULT '0',
  `discord` varchar(21) DEFAULT '0',
  `rpgammo` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`uid`, `username`, `password`, `regdate`, `lastlogin`, `ip`, `serial`, `setup`, `gender`, `age`, `skin`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `phone`, `number`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `truckerskill`, `fishingskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `smugglerskill`, `toggletextdraws`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `carlicense`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `banappealer`, `ap`, `hm`, `mapper`, `potplanted`, `pottime`, `potgrams`, `pot_x`, `pot_y`, `pot_z`, `pot_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `laborupgrade`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `pizzacooldown`, `detectivecooldown`, `carjackcooldown`, `duty`, `bandana`, `detectiveskill`, `refunded`, `backpack`, `bpcash`, `bpmaterials`, `bppot`, `bpcrack`, `bpmeth`, `bppainkillers`, `bpweapon_0`, `bpweapon_1`, `bpweapon_2`, `bpweapon_3`, `bpweapon_4`, `bpweapon_5`, `bpweapon_6`, `bpweapon_7`, `bpweapon_8`, `bpweapon_9`, `bpweapon_10`, `bpweapon_11`, `bpweapon_12`, `bpweapon_13`, `bpweapon_14`, `formeradmin`, `deathcooldown`, `hunger`, `hungertimer`, `thirst`, `thirsttimer`, `totalpatients`, `totalfires`, `rarecooldown`, `vipdlcooldown`, `mask`, `diamonds`, `blindfold`, `rope`, `insurance`, `passport`, `passportname`, `passportlevel`, `passportskin`, `passportphone`, `marriedto`, `newbies`, `chatanim`, `repairkit`, `toolkit`, `flashlight`, `gunlicense`, `dirtycash`, `comserv`, `comservskin`, `gascan`, `showzones`, `lastsign`, `contractreason`, `contractresult`, `togglechat`, `rob_phone`, `rob_watch`, `mafia`, `discord`, `rpgammo`) VALUES
(1, 'Nafiz_Rohan', 'F962B0DF8F61CA04EB5694D9CFE96904FA49942B838194AD26C8707E0D292FE4407AF6C397D3D7B5827738F12324439BDDCD85DF6E119DE2D3028E278582962D', '2023-06-13 21:23:30', '2023-07-09 22:03:22', '127.0.0.1', 'DEC45C9DD58ADC945A008E8F4ADD9AE9E94C4CD4', 0, 1, 21, 299, 2436.55, -1698.99, 18.763, 2436.85, -1691.16, 19.126, 226.928, 0, 0, 60361, 17000, 0, 1, 0, 348, 0, 7, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 290, 42, 290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, 0, 'None', -1, 1, 0, 0, 0, '123456787654321', 0);


--
-- Table structure for table `veh-names`
--

CREATE TABLE `veh-names` (
  `model` int(11) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `veh-names`
--

INSERT INTO `veh-names` (`model`, `name`) VALUES
(400, 'Landstalker'),
(401, 'Bravura'),
(402, 'Buffalo'),
(403, 'Linerunner'),
(404, 'Perrenial'),
(405, 'Sentinel'),
(406, 'Dumper'),
(407, 'Firetruck'),
(408, 'Trashmaster'),
(409, 'Stretch'),
(410, 'Manana'),
(411, 'Infernus'),
(412, 'Voodoo'),
(413, 'Pony'),
(414, 'Mule'),
(415, 'Cheetah'),
(416, 'Ambulance'),
(417, 'Leviathan'),
(418, 'Moonbeam'),
(419, 'Esperanto'),
(420, 'Taxi'),
(421, 'Washington'),
(422, 'Bobcat'),
(423, 'Whoopee'),
(424, 'BF Injection'),
(425, 'Hunter'),
(426, 'Premier'),
(427, 'Enforcer'),
(428, 'Securicar'),
(429, 'Banshee'),
(430, 'Predator'),
(431, 'Bus'),
(432, 'Rhino'),
(433, 'Barracks'),
(434, 'Hotknife'),
(435, 'Article Trailer'),
(436, 'Previon'),
(437, 'Coach'),
(438, 'Cabbie'),
(439, 'Stallion'),
(440, 'Rumpo'),
(441, 'RC Bandit'),
(442, 'Romero'),
(443, 'Packer'),
(444, 'Monster'),
(445, 'Admiral'),
(446, 'Squalo'),
(447, 'Seasparrow'),
(448, 'Pizzaboy'),
(449, 'Tram'),
(450, 'Article Trailer 2'),
(451, 'Turismo'),
(452, 'Speeder'),
(453, 'Reefer'),
(454, 'Tropic'),
(455, 'Flatbed'),
(456, 'Yankee'),
(457, 'Caddy'),
(458, 'Solair'),
(460, 'Skimmer'),
(461, 'PCJ-600'),
(462, 'Faggio'),
(463, 'Freeway'),
(464, 'RC Baron'),
(465, 'RC Raider'),
(466, 'Glendale'),
(467, 'Oceanic'),
(468, 'Sanchez'),
(469, 'Sparrow'),
(470, 'Patriot'),
(471, 'Quad'),
(472, 'Coastguard'),
(473, 'Dinghy'),
(474, 'Hermes'),
(475, 'Sabre'),
(476, 'Rustler'),
(477, 'ZR-350'),
(478, 'Walton'),
(479, 'Regina'),
(480, 'Comet'),
(481, 'BMX'),
(482, 'Burrito'),
(483, 'Camper'),
(484, 'Marquis'),
(485, 'Baggage'),
(486, 'Dozer'),
(487, 'Maverick'),
(488, 'News Chopper'),
(489, 'Rancher'),
(490, 'FBI Rancher'),
(491, 'Virgo'),
(492, 'Greenwood'),
(493, 'Jetmax'),
(494, 'Hotring'),
(495, 'Sandking'),
(496, 'Blista Compact'),
(497, 'Police Maverick'),
(498, 'Boxville'),
(499, 'Benson'),
(500, 'Mesa'),
(501, 'RC Goblin'),
(502, 'Hotring Racer A'),
(503, 'Hotring Racer B'),
(504, 'Bloodring Banger'),
(505, 'Rancher'),
(506, 'Super GT'),
(507, 'Elegant'),
(508, 'Journey'),
(509, 'Bike'),
(510, 'Mountain Bike'),
(511, 'Beagle'),
(512, 'Cropduster'),
(513, 'Stuntplane'),
(514, 'Tanker'),
(515, 'Roadtrain'),
(516, 'Nebula'),
(517, 'Majestic'),
(518, 'Buccaneer'),
(519, 'Shamal'),
(520, 'Hydra'),
(521, 'FCR-900'),
(522, 'NRG-500'),
(523, 'HPV1000'),
(524, 'Cement Truck'),
(525, 'Tow Truck'),
(526, 'Fortune'),
(527, 'Cadrona'),
(528, 'SWAT Truck'),
(529, 'Willard'),
(530, 'Forklift'),
(531, 'Tractor'),
(532, 'Combine'),
(533, 'Feltzer'),
(534, 'Remington'),
(535, 'Slamvan'),
(536, 'Blade'),
(537, 'Streak'),
(538, 'Freight'),
(539, 'Vortex'),
(540, 'Vincent'),
(541, 'Bullet'),
(542, 'Clover'),
(543, 'Sadler'),
(544, 'Firetruck'),
(545, 'Hustler'),
(546, 'Intruder'),
(547, 'Primo'),
(548, 'Cargobob'),
(549, 'Tampa'),
(550, 'Sunrise'),
(551, 'Merit'),
(552, 'Utility'),
(553, 'Nevada'),
(554, 'Yosemite'),
(555, 'Windsor'),
(556, 'Monster'),
(557, 'Monster'),
(558, 'Uranus'),
(559, 'Jester'),
(560, 'Sultan'),
(561, 'Stratum'),
(562, 'Elegy'),
(563, 'Raindance'),
(564, 'RC Tiger'),
(565, 'Flash'),
(566, 'Tahoma'),
(567, 'Savanna'),
(568, 'Bandito'),
(569, 'Freight Flat'),
(570, 'Streak Carriage'),
(571, 'Kart'),
(572, 'Mower'),
(573, 'Dune'),
(574, 'Sweeper'),
(575, 'Broadway'),
(576, 'Tornado'),
(577, 'AT-400'),
(578, 'DFT-30'),
(579, 'Huntley'),
(580, 'Stafford'),
(581, 'BF-400'),
(582, 'News Van'),
(583, 'Tug'),
(584, 'Petrol Trailer'),
(585, 'Emperor'),
(586, 'Wayfarer'),
(587, 'Euros'),
(588, 'Hotdog'),
(589, 'Club'),
(590, 'Freight Box'),
(591, 'Article Trailer 3'),
(592, 'Andromada'),
(593, 'Dodo'),
(594, 'RC Cam'),
(595, 'Launch'),
(596, 'LSPD Car'),
(597, 'SFPD Car'),
(598, 'LVPD Car'),
(599, 'Police Rancher'),
(600, 'Picador'),
(601, 'S.W.A.T'),
(602, 'Alpha'),
(603, 'Phoenix'),
(604, 'Glendale'),
(605, 'Sadler'),
(606, 'Luggage'),
(607, 'Luggage'),
(608, 'Stairs'),
(609, 'Boxville'),
(610, 'Tiller'),
(611, 'Utility Trailer');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `ownerid` int(11) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `modelid` smallint(6) DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `tickets` int(11) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `plate` varchar(32) DEFAULT '-1',
  `health` float DEFAULT '1000',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `color1` smallint(6) DEFAULT '0',
  `color2` smallint(6) DEFAULT '0',
  `paintjob` smallint(6) DEFAULT '-1',
  `impounded` int(11) DEFAULT '0',
  `interior` tinyint(4) DEFAULT '0',
  `world` int(11) DEFAULT '0',
  `neon` tinyint(1) DEFAULT '-1',
  `neonenabled` tinyint(1) DEFAULT '0',
  `trunk` tinyint(1) DEFAULT '0',
  `mod_1` smallint(6) DEFAULT '0',
  `mod_2` smallint(6) DEFAULT '0',
  `mod_3` smallint(6) DEFAULT '0',
  `mod_4` smallint(6) DEFAULT '0',
  `mod_5` smallint(6) DEFAULT '0',
  `mod_6` smallint(6) DEFAULT '0',
  `mod_7` smallint(6) DEFAULT '0',
  `mod_8` smallint(6) DEFAULT '0',
  `mod_9` smallint(6) DEFAULT '0',
  `mod_10` smallint(6) DEFAULT '0',
  `mod_11` smallint(6) DEFAULT '0',
  `mod_12` smallint(6) DEFAULT '0',
  `mod_13` smallint(6) DEFAULT '0',
  `mod_14` smallint(6) DEFAULT '0',
  `cash` int(11) DEFAULT '0',
  `materials` int(11) DEFAULT '0',
  `pot` int(11) DEFAULT '0',
  `crack` int(11) DEFAULT '0',
  `meth` int(11) DEFAULT '0',
  `painkillers` int(11) DEFAULT '0',
  `weapon_1` tinyint(4) DEFAULT '0',
  `weapon_2` tinyint(4) DEFAULT '0',
  `weapon_3` tinyint(4) DEFAULT '0',
  `weapon_4` tinyint(4) DEFAULT '0',
  `weapon_5` tinyint(4) DEFAULT '0',
  `gangid` tinyint(4) DEFAULT '-1',
  `factiontype` tinyint(4) DEFAULT '0',
  `fuel` tinyint(4) DEFAULT '100',
  `donator` tinyint(4) DEFAULT '0',
  `job` tinyint(4) DEFAULT '-1',
  `jacked` int(11) DEFAULT '0',
  `v_panels` int(11) DEFAULT '0',
  `v_doors` int(11) DEFAULT '0',
  `v_lights` int(11) DEFAULT '0',
  `v_tires` int(11) DEFAULT '0' ,
  `mafia` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `code` varchar(24) DEFAULT NULL,
  `createdby` varchar(21) DEFAULT NULL,
  `veh` smallint(6) DEFAULT '-1',
  `donator` smallint(6) DEFAULT '-1',
  `months` smallint(6) DEFAULT '-1',
  `boombox` smallint(6) DEFAULT '-1',
  `backpack` smallint(6) DEFAULT '-1',
  `time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `whitelist`
--

CREATE TABLE `whitelist` (
  `name` varchar(64) DEFAULT NULL,
  `discord` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `whitelist` (`name`, `discord`) VALUES
('Nafiz_Rohan', '123456787654321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clothing`
--
ALTER TABLE `clothing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD UNIQUE KEY `id` (`id`,`divisionid`);

--
-- Indexes for table `entrances`
--
ALTER TABLE `entrances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factionpay`
--
ALTER TABLE `factionpay`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `factionranks`
--
ALTER TABLE `factionranks`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `factionskins`
--
ALTER TABLE `factionskins`
  ADD UNIQUE KEY `id` (`id`,`slot`);

--
-- Indexes for table `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuelstations`
--
ALTER TABLE `fuelstations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gangranks`
--
ALTER TABLE `gangranks`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `gangskins`
--
ALTER TABLE `gangskins`
  ADD UNIQUE KEY `id` (`id`,`slot`);

--
-- Indexes for table `garages`
--
ALTER TABLE `garages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`gateID`);

--
-- Indexes for table `graffiti`
--
ALTER TABLE `graffiti`
  ADD PRIMARY KEY (`graffitiID`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapicons`
--
ALTER TABLE `mapicons`
  ADD PRIMARY KEY (`mid`) USING BTREE;

--
-- Indexes for table `object`
--
ALTER TABLE `object`
  ADD PRIMARY KEY (`mobjID`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rents`
ALTER TABLE `rents`
  ADD UNIQUE KEY (`rid`);

--
-- Indexes for table `safezones`
--
ALTER TABLE `safezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speedcameras`
--
ALTER TABLE `speedcameras`
  ADD PRIMARY KEY (`speedID`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turfs`
--
ALTER TABLE `turfs`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `clothing`
--
ALTER TABLE `clothing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `entrances`
--
ALTER TABLE `entrances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `flags`
--
ALTER TABLE `flags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `fuelstations`
--
ALTER TABLE `fuelstations`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `garages`
--
ALTER TABLE `garages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
  MODIFY `gateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `graffiti`
--
ALTER TABLE `graffiti`
  MODIFY `graffitiID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `mapicons`
--
ALTER TABLE `mapicons`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `object`
--
ALTER TABLE `object`
  MODIFY `mobjID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `safezones`
--

--
-- AUTO_INCREMENT for table`rents`
--
ALTER TABLE `rents`
  MODIFY `rid` int(5) NOT NULL AUTO_INCREMENT;

ALTER TABLE `safezones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speedcameras`
--
ALTER TABLE `speedcameras`
  MODIFY `speedID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
