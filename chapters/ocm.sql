CREATE TABLE `ocm_all` (
  `timestamp_android` int(11) DEFAULT NULL,
  `tracks_id` int(11) DEFAULT NULL,
  `tel_cellid` int(11) DEFAULT NULL,
  `tell_cellsignal` int(11) DEFAULT NULL,
  `tel_lac` int(11) DEFAULT NULL,
  `gps_latitude` double DEFAULT NULL,
  `gps_longitude` double DEFAULT NULL,
  `gps_altitude` double DEFAULT NULL,
  `gps_accuracy` double DEFAULT NULL,
  `tel_callstate` int(11) DEFAULT NULL,
  `tel_datastate` int(11) DEFAULT NULL,
  `tel_networktype` int(11) DEFAULT NULL,
  KEY `index1` (`tracks_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
