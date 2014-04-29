CREATE TABLE `mfd_events` (
  `id` int(11) DEFAULT NULL,
  `timeStamp` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `cellID` int(11) DEFAULT NULL,
  `lac` int(11) DEFAULT NULL,
  `eventType` tinyint(4) DEFAULT NULL,
  KEY `id_index` (`id`),
  KEY `eventid_index` (`eventType`),
  KEY `cellID_index` (`cellID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
