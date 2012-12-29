-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 28, 2012 at 09:46 PM
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
-- Table structure for table `ConfigAttrs`
--

CREATE TABLE IF NOT EXISTS `ConfigAttrs` (
  `id_attr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `friendly_name` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(250) DEFAULT NULL,
  `datatype` enum('text','password','select','assign_one','assign_many','assign_cust_order') NOT NULL DEFAULT 'text',
  `max_length` int(11) DEFAULT NULL,
  `poss_values` text,
  `predef_value` varchar(1024) DEFAULT NULL,
  `mandatory` enum('yes','no') NOT NULL DEFAULT 'no',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `visible` enum('yes','no') NOT NULL DEFAULT 'yes',
  `write_to_conf` enum('yes','no') NOT NULL DEFAULT 'yes',
  `naming_attr` enum('yes','no') NOT NULL DEFAULT 'no',
  `link_as_child` enum('yes','no') NOT NULL DEFAULT 'no',
  `link_bidirectional` enum('yes','no') NOT NULL DEFAULT 'no',
  `fk_show_class_items` int(10) unsigned DEFAULT NULL,
  `fk_id_class` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_attr`),
  KEY `fk_show_class_items` (`fk_show_class_items`),
  KEY `fk_id_class` (`fk_id_class`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=327 ;

--
-- Dumping data for table `ConfigAttrs`
--

INSERT INTO `ConfigAttrs` (`id_attr`, `attr_name`, `friendly_name`, `description`, `datatype`, `max_length`, `poss_values`, `predef_value`, `mandatory`, `ordering`, `visible`, `write_to_conf`, `naming_attr`, `link_as_child`, `link_bidirectional`, `fk_show_class_items`, `fk_id_class`) VALUES
(233, 'address', 'Address', 'IP or DNS address of the daemon', 'text', 1024, '', '', 'yes', 2, 'yes', 'yes', 'no', 'no', 'no', NULL, 20),
(234, 'port', 'Port', 'Arbiter port', 'text', 1024, '', '7770', 'yes', 3, 'yes', 'yes', 'no', 'no', 'no', NULL, 20),
(235, 'spare', 'Spare', 'Is it a spare arbiter', 'text', 1024, '', '0', 'no', 4, 'yes', 'yes', 'no', 'no', 'no', NULL, 20),
(238, 'timeout', 'Ping timeout', 'Ping timeout', 'text', 1024, '', '3', 'no', 6, 'yes', 'yes', 'no', 'no', 'no', NULL, 20),
(239, 'data_timeout', 'Data send timeout', 'Data send timeout', 'text', 1024, '', '120', 'no', 7, 'yes', 'yes', 'no', 'no', 'no', NULL, 20),
(240, 'max_check_attempts', 'Max check attempts', 'If ping fails N or more, then the node is dead', 'text', 1024, '', '3', 'no', 8, 'yes', 'yes', 'no', 'no', 'no', NULL, 20),
(241, 'check_interval', 'Check interval', 'Ping node every minutes', 'text', 1024, '', '60', 'no', 9, 'yes', 'yes', 'no', 'no', 'no', NULL, 20),
(243, 'arbiter_name', 'Arbiter name', 'Just the name', 'text', 1024, '', '', 'yes', 0, 'yes', 'yes', 'yes', 'no', 'no', NULL, 20),
(244, 'scheduler_name', 'Scheduler Name', 'Scheduler Name', 'text', 1024, '', '', 'yes', 1, 'yes', 'yes', 'yes', 'no', 'no', NULL, 21),
(245, 'address', 'Scheduler address', 'IP or DNS address of the daemon', 'text', 1024, '', '', 'yes', 2, 'yes', 'yes', 'no', 'no', 'no', NULL, 21),
(247, 'port', 'Scheduler port', 'IP or DNS address of the daemon', 'text', 1024, '', '7768', 'yes', 3, 'yes', 'yes', 'no', 'no', 'no', NULL, 21),
(248, 'spare', 'Spare', '1 = is a spare, 0 = is not a spare', 'text', 1024, '', '0', 'no', 4, 'yes', 'yes', 'no', 'no', 'no', NULL, 21),
(249, 'weight', 'Weight', 'Some schedulers can manage more hosts than others', 'text', 1024, '', '1', 'no', 5, 'yes', 'yes', 'no', 'no', 'no', NULL, 21),
(250, 'timeout', 'Timeout', 'Ping timeout', 'text', 1024, '', '3', 'no', 6, 'yes', 'yes', 'no', 'no', 'no', NULL, 21),
(251, 'data_timeout', 'Data send timeout', 'Data send timeout', 'text', 1024, '', '120', 'no', 7, 'yes', 'yes', 'no', 'no', 'no', NULL, 21),
(252, 'max_check_attempts', 'Max check attempts', 'If ping fails N or more, then the node is dead', 'text', 1024, '', '3', 'no', 8, 'yes', 'yes', 'no', 'no', 'no', NULL, 21),
(253, 'check_interval', 'Check interval', 'Ping node every minutes', 'text', 1024, '', '60', 'no', 9, 'yes', 'yes', 'no', 'no', 'no', NULL, 21),
(256, 'realm_name', 'Realm name', 'Realm name', 'text', 1024, '', '', 'yes', 1, 'yes', 'yes', 'yes', 'no', 'no', NULL, 22),
(257, 'default', 'Default realm', 'This realm is the default', 'text', 1024, '', '0', 'no', 2, 'yes', 'yes', 'no', 'no', 'no', NULL, 22),
(258, 'realm', 'Realm', 'Realm is for multi-datacenters', 'assign_many', 0, '', 'all', 'yes', 11, 'yes', 'yes', 'no', 'no', 'no', 22, 21),
(259, 'skip_initial_broks', 'Skip initial broks creation', 'Skip initial broks creation', 'text', 1024, '', '0', 'no', 12, 'yes', 'yes', 'no', 'no', 'no', NULL, 21),
(260, 'modules', 'Modules', 'Which Scheduler modules we want to load', 'assign_many', 0, '', '', 'no', 13, 'yes', 'yes', 'no', 'no', 'no', 23, 21),
(261, 'modules', 'Modules', 'Which Arbiter modules we want to load', 'assign_many', 0, '', '', 'no', 10, 'yes', 'yes', 'no', 'no', 'no', 23, 20),
(262, 'poller_name', 'Poller name', 'Just the name', 'text', 1024, '', '', 'yes', 1, 'yes', 'yes', 'yes', 'no', 'no', NULL, 19),
(263, 'address', 'Address', 'IP or DNS address of the daemon', 'text', 1024, '', '', 'yes', 2, 'yes', 'yes', 'no', 'no', 'no', NULL, 19),
(264, 'port', 'Port', 'Poller port', 'text', 1024, '', '7771', 'yes', 3, 'yes', 'yes', 'no', 'no', 'no', NULL, 19),
(265, 'manage_sub_realms', 'Manage sub-realms', 'Does it take jobs from schedulers of sub-Realms?', 'text', 1024, '', '0', 'no', 4, 'yes', 'yes', 'no', 'no', 'no', NULL, 19),
(266, 'min_workers', 'Minimum of number of workers', 'Starts with N processes (0 = 1 per CPU)', 'text', 1024, '', '0', 'no', 5, 'yes', 'yes', 'no', 'no', 'no', NULL, 19),
(267, 'max_workers', 'Maximum of number of workers', 'No more than N processes (0 = 1 per CPU)', 'text', 1024, '', '0', 'no', 6, 'yes', 'yes', 'no', 'no', 'no', NULL, 19),
(268, 'processes_by_worker', 'Number of checks by worker', 'Each worker manages N checks', 'text', 1024, '', '256', 'no', 7, 'yes', 'yes', 'no', 'no', 'no', NULL, 19),
(269, 'polling_interval', 'Polling interval', 'Get jobs from schedulers each 1 second', 'text', 1024, '', '1', 'no', 8, 'yes', 'yes', 'no', 'no', 'no', NULL, 19),
(270, 'timeout', 'Timeout', 'Ping timeout', 'text', 1024, '', '3', 'yes', 9, 'yes', 'yes', 'no', 'no', 'no', NULL, 19),
(271, 'data_timeout', 'Data send timeout', 'Data send timeout', 'text', 1024, '', '120', 'no', 10, 'yes', 'yes', 'no', 'no', 'no', NULL, 19),
(272, 'max_check_attempts', 'Max check attempts', 'If ping fails N or more, then the node is dead', 'text', 1024, '', '3', 'no', 11, 'yes', 'yes', 'no', 'no', 'no', NULL, 19),
(273, 'check_interval', 'Check interval', 'Ping node every minutes', 'text', 1024, '', '60', 'no', 12, 'yes', 'yes', 'no', 'no', 'no', NULL, 19),
(275, 'realm', 'Realm (Royaume)', 'Realm is for multi-datacenters', 'assign_many', 0, '', 'all', 'yes', 14, 'yes', 'yes', 'no', 'no', 'no', 22, 19),
(276, 'broker_name', 'Broker name', 'Just the name', 'text', 1024, '', '', 'yes', 1, 'yes', 'yes', 'yes', 'no', 'no', NULL, 24),
(277, 'address', 'Address', 'IP or DNS address of the daemon', 'text', 1024, '', '', 'yes', 2, 'yes', 'yes', 'no', 'no', 'no', NULL, 24),
(278, 'port', 'Port', 'Broker port', 'text', 1024, '', '7772', 'yes', 3, 'yes', 'yes', 'no', 'no', 'no', NULL, 24),
(279, 'spare', 'Spare', '1 = is a spare, 0 = is not a spare', 'text', 1024, '', '0', 'no', 4, 'yes', 'yes', 'no', 'no', 'no', NULL, 24),
(280, 'manage_arbiters', 'Manage arbiters', 'Take data from Arbiter', 'text', 1024, '', '1', 'no', 5, 'yes', 'yes', 'no', 'no', 'no', NULL, 24),
(281, 'manage_sub_realms', 'Manage sub-realms', 'Does it take jobs from schedulers of sub-Realms?', 'text', 1024, '', '1', 'no', 6, 'yes', 'yes', 'no', 'no', 'no', NULL, 24),
(283, 'timeout', 'Ping timeout', 'Ping timeout', 'text', 1024, '', '3', 'no', 7, 'yes', 'yes', 'no', 'no', 'no', NULL, 24),
(284, 'data_timeout', 'Data send timeout', 'Data send timeout', 'text', 1024, '', '120', 'no', 8, 'yes', 'yes', 'no', 'no', 'no', NULL, 24),
(285, 'max_check_attempts', 'Max check attempts', 'If ping fails N or more, then the node is dead', 'text', 1024, '', '3', 'no', 9, 'yes', 'yes', 'no', 'no', 'no', NULL, 24),
(286, 'check_interval', 'Check interval', 'Ping node every minutes', 'text', 1024, '', '60', 'no', 10, 'yes', 'yes', 'no', 'no', 'no', NULL, 24),
(287, 'modules', 'Modules', 'Which Broker modules we want to load', 'assign_many', 0, '', '', 'no', 11, 'yes', 'yes', 'no', 'no', 'no', 23, 24),
(288, 'realm', 'Realm (Royaume)', 'Realm is for multi-datacenters', 'assign_many', 0, '', 'all', 'yes', 12, 'yes', 'yes', 'no', 'no', 'no', 22, 24),
(289, 'reactionner_name', 'Reactionner name', 'Just the name', 'text', 1024, '', '', 'yes', 1, 'yes', 'yes', 'yes', 'no', 'no', NULL, 25),
(290, 'address', 'Address', 'IP or DNS address of the daemon', 'text', 1024, '', '', 'yes', 2, 'yes', 'yes', 'no', 'no', 'no', NULL, 25),
(292, 'port', 'Port', 'Reactionner port', 'text', 1024, '', '7769', 'yes', 3, 'yes', 'yes', 'no', 'no', 'no', NULL, 25),
(293, 'spare', 'Spare', '1 = is a spare, 0 = is not a spare', 'text', 1024, '', '0', 'no', 4, 'yes', 'yes', 'no', 'no', 'no', NULL, 25),
(294, 'manage_sub_realms', 'Manage sub-realms', 'Does it take jobs from schedulers of sub-Realms?', 'text', 1024, '', '0', 'no', 5, 'yes', 'yes', 'no', 'no', 'no', NULL, 25),
(295, 'min_workers', 'Minimum of number of workers', 'Starts with N processes (0 = 1 per CPU)', 'text', 1024, '', '1', 'no', 6, 'yes', 'yes', 'no', 'no', 'no', NULL, 25),
(296, 'max_workers', 'Maximum of number of workers', 'No more than N processes (0 = 1 per CPU)', 'text', 1024, '', '15', 'no', 7, 'yes', 'yes', 'no', 'no', 'no', NULL, 25),
(297, 'polling_interval', 'Polling interval', 'Get jobs from schedulers each 1 second', 'text', 1024, '', '1', 'no', 8, 'yes', 'yes', 'no', 'no', 'no', NULL, 25),
(298, 'timeout', 'Ping timeout', 'Ping timeout', 'text', 1024, '', '3', 'no', 9, 'yes', 'yes', 'no', 'no', 'no', NULL, 25),
(300, 'data_timeout', 'Data send timeout', 'Data send timeout', 'text', 1024, '', '120', 'no', 10, 'yes', 'yes', 'no', 'no', 'no', NULL, 25),
(301, 'max_check_attempts', 'Max check attempts', 'If ping fails N or more, then the node is dead', 'text', 1024, '', '3', 'no', 11, 'yes', 'yes', 'no', 'no', 'no', NULL, 25),
(302, 'check_interval', 'Check interval', 'Ping node every minutes', 'text', 1024, '', '60', 'no', 12, 'yes', 'yes', 'no', 'no', 'no', NULL, 25),
(303, 'modules', 'Modules', 'Which reactionner modules we want to load', 'assign_many', 0, '', '', 'no', 13, 'yes', 'yes', 'no', 'no', 'no', 23, 25),
(304, 'realm', 'Realm (Royaume)', 'Realm is for multi-datacenters', 'assign_many', 0, '', '', 'no', 14, 'yes', 'yes', 'no', 'no', 'no', 22, 25),
(305, 'module_name', 'Module name', 'Just the name', 'text', 1024, '', '', 'yes', 1, 'yes', 'yes', 'yes', 'no', 'no', NULL, 23),
(306, 'module_type', 'Module type', 'Module type (livestatus, logstore_sqlite, npcdmod, ...)', 'text', 1024, '', '', 'yes', 2, 'yes', 'yes', 'no', 'no', 'no', NULL, 23),
(307, 'host', 'Host address', 'Useless for some modules', 'text', 1024, '', '', 'no', 3, 'yes', 'yes', 'no', 'no', 'no', NULL, 23),
(309, 'port', 'Port', 'Useless for some modules', 'text', 1024, '', '', 'no', 4, 'yes', 'yes', 'no', 'no', 'no', NULL, 23),
(310, 'modules', 'Modules', 'Which sub we want to load (Useless for some modules)', 'assign_many', 0, '', '', 'no', 5, 'yes', 'yes', 'no', 'no', 'no', 23, 23),
(311, 'database_file', 'Database file', 'Useless for some modules', 'text', 1024, '', '', 'no', 6, 'yes', 'yes', 'no', 'no', 'no', NULL, 23),
(312, 'max_logs_age', 'Max logs age', 'd = days, w = weeks, m = months, y = years (eg: 3m) (Useless for some modules)', 'text', 1024, '', '', 'no', 7, 'yes', 'yes', 'no', 'no', 'no', NULL, 23),
(313, 'config_file', 'Config file', 'Useless for some modules', 'text', 1024, '', '', 'no', 8, 'yes', 'yes', 'no', 'no', 'no', NULL, 23),
(314, 'path', 'Path', 'Useless for some modules', 'text', 1024, '', '', 'no', 9, 'yes', 'yes', 'no', 'no', 'no', NULL, 23),
(315, 'archive_path', 'Archive path', 'Useless for some modules', 'text', 1024, '', '', 'no', 10, 'yes', 'yes', 'no', 'no', 'no', NULL, 23),
(316, 'realm_members', 'Realm members', 'Sub-realms of this realms', 'assign_many', 0, '', '', 'no', 3, 'yes', 'yes', 'no', 'no', 'no', 22, 22),
(317, 'realm', 'Realm (Royaume)', 'Realm (Royaume)', 'assign_one', 0, '', '', 'no', 29, 'yes', 'yes', 'no', 'no', 'no', 22, 1),
(318, 'realm', 'Realm (Royaume)', 'Realm (Royaume)', 'assign_one', 0, '', '', 'no', 23, 'yes', 'yes', 'no', 'no', 'no', 22, 14),
(319, 'modules', 'Modules', 'Which Poller modules we want to load', 'assign_many', 0, '', '', 'no', 15, 'yes', 'yes', 'no', 'no', 'no', 23, 19),
(320, 'module_type', 'Module Type', 'Which module pollers will use to make this check', 'text', 1024, '', '', 'no', 11, 'yes', 'yes', 'no', 'no', 'no', NULL, 8),
(321, 'business_impact', 'Busines Impact', '', 'select', 0, '0::1::2::3::4::5', '', 'no', 30, 'yes', 'yes', 'no', 'no', 'no', NULL, 1),
(323, 'business_impact', 'Business Impact', '', 'select', 0, '0::1::2::3::4::5', '', 'no', 25, 'yes', 'yes', 'no', 'no', 'no', NULL, 3),
(324, 'business_impact', 'Business Impact', '', 'select', 0, '0::1::2::3::4::5', '', 'no', 22, 'yes', 'yes', 'no', 'no', 'no', NULL, 15);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ConfigAttrs`
--
ALTER TABLE `ConfigAttrs`
  ADD CONSTRAINT `ConfigAttrs_ibfk_1` FOREIGN KEY (`fk_show_class_items`) REFERENCES `ConfigClasses` (`id_class`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ConfigAttrs_ibfk_2` FOREIGN KEY (`fk_id_class`) REFERENCES `ConfigClasses` (`id_class`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
