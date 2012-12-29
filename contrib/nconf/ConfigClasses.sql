-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 28, 2012 at 09:39 PM
-- Server version: 5.1.61
-- PHP Version: 5.4.0-3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nconf`
--

-- --------------------------------------------------------

--
-- Table structure for table `ConfigClasses`
--

CREATE TABLE IF NOT EXISTS `ConfigClasses` (
  `id_class` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `config_class` varchar(50) NOT NULL DEFAULT '',
  `friendly_name` varchar(80) NOT NULL,
  `nav_visible` enum('yes','no') NOT NULL DEFAULT 'yes',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `grouping` varchar(30) NOT NULL,
  `nav_links` varchar(512) NOT NULL,
  `nav_privs` enum('user','admin') NOT NULL DEFAULT 'admin',
  `class_type` enum('global','monitor','collector') NOT NULL DEFAULT 'global',
  `out_file` varchar(50) DEFAULT NULL,
  `nagios_object` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_class`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `ConfigClasses`
--

INSERT INTO `ConfigClasses` (`id_class`, `config_class`, `friendly_name`, `nav_visible`, `ordering`, `grouping`, `nav_links`, `nav_privs`, `class_type`, `out_file`, `nagios_object`) VALUES
(19, 'poller', 'Poller', 'yes', 7, '', 'Show::overview.php?class=poller;;Add::handle_item.php?item=poller', 'admin', 'global', 'shinken-specific.cfg', 'poller'),
(20, 'arbiter', 'Arbiter', 'yes', 8, '', 'Show::overview.php?class=arbiter;;Add::handle_item.php?item=arbiter', 'admin', 'global', 'shinken-specific.cfg', 'arbiter'),
(21, 'scheduler', 'Scheduler', 'yes', 9, '', 'Show::overview.php?class=scheduler;;Add::handle_item.php?item=scheduler', 'admin', 'global', 'shinken-specific.cfg', 'scheduler'),
(22, 'realm', 'Realm', 'yes', 10, '', 'Show::overview.php?class=realm;;Add::handle_item.php?item=realm', 'admin', 'global', 'shinken-specific.cfg', 'realm'),
(23, 'modules', 'Modules', 'yes', 11, '', 'Show::overview.php?class=modules;;Add::handle_item.php?item=modules', 'admin', 'global', 'shinken-specific.cfg', 'module'),
(24, 'broker', 'Broker', 'yes', 12, '', 'Show::overview.php?class=broker;;Add::handle_item.php?item=broker', 'admin', 'global', 'shinken-specific.cfg', 'broker'),
(25, 'reactionner', 'Reactionner', 'yes', 13, '', 'Show::overview.php?class=reactionner;;Add::handle_item.php?item=reactionner', 'admin', 'global', 'shinken-specific.cfg', 'reactionner');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
