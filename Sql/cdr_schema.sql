CREATE DATABASE cdr; 

use cdr;

CREATE TABLE `call_type_dim` (
  `call_type_id` smallint(6) NOT NULL,
  `call_type_description` varchar(45) COLLATE latin1_bin NOT NULL
) ENGINE=BRIGHTHOUSE DEFAULT CHARSET=latin1;

CREATE TABLE `cdr_fact_agg` (
  `date_id` smallint(6) DEFAULT NULL,
  `time_id` smallint(6) DEFAULT NULL,
  `customer_id` smallint(6) DEFAULT NULL,
  `vendor_id` smallint(6) DEFAULT NULL,
  `geo_id` int(11) DEFAULT NULL,
  `customer_release_code_id` smallint(6) DEFAULT NULL,
  `vendor_release_code_id` smallint(6) DEFAULT NULL,
  `call_type_id` tinyint(4) DEFAULT NULL,
  `grp_cnt` int(11) DEFAULT NULL,
  `route_sum` int(11) DEFAULT NULL,
  `connect_sum` int(11) DEFAULT NULL,
  `early_event_sum` int(11) DEFAULT NULL,
  `ipdd_sum` float DEFAULT NULL,
  `epdd_sum` float DEFAULT NULL,
  `duration_sum` int(11) DEFAULT NULL,
  `route_max` smallint(6) DEFAULT NULL,
  `ipdd_max` float DEFAULT NULL,
  `epdd_max` float DEFAULT NULL
) ENGINE=BRIGHTHOUSE DEFAULT CHARSET=latin1;

CREATE TABLE `customer_dim` (
  `customer_dim_id` int(11) NOT NULL,
  `customer_trunk_id` int(11) DEFAULT NULL
) ENGINE=BRIGHTHOUSE DEFAULT CHARSET=latin1;

CREATE TABLE `date_dim` (
  `date_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `day_name` varchar(10) DEFAULT NULL,
  `day_of_week` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `day_of_year` int(11) DEFAULT NULL,
  `previous_day` date NOT NULL DEFAULT '0000-00-00',
  `next_day` date NOT NULL DEFAULT '0000-00-00',
  `weekend` char(10) NOT NULL DEFAULT 'Weekday',
  `week_of_year` int(11) DEFAULT NULL,
  `month_name` char(10) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `quarter_of_year` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=BRIGHTHOUSE DEFAULT CHARSET=latin1;

CREATE TABLE `geography_dim` (
  `geo_id` int(11) NOT NULL,
  `dial_code` varchar(45) NOT NULL,
  `country_name` varchar(45) DEFAULT NULL,
  `carrier` varchar(45) DEFAULT NULL,
  `npa` char(3) DEFAULT NULL,
  `nxx` char(3) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `npanxx` char(6) DEFAULT NULL,
  `isExtendedNANP` tinyint(4) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `call_nature` varchar(45) DEFAULT NULL
) ENGINE=BRIGHTHOUSE DEFAULT CHARSET=latin1;

CREATE TABLE `release_code_dim` (
  `rel_code_id` smallint(6) NOT NULL DEFAULT '0',
  `release_code_number` smallint(6) NOT NULL,
  `release_code_description` varchar(100) NOT NULL
) ENGINE=BRIGHTHOUSE DEFAULT CHARSET=latin1;

CREATE TABLE `time_dim` (
  `time_id` int(11) NOT NULL,
  `hour_of_day` int(11) NOT NULL,
  `quarter_of_hour` int(11) NOT NULL,
  `time_window` time NOT NULL
) ENGINE=BRIGHTHOUSE DEFAULT CHARSET=latin1;

CREATE TABLE `vendor_dim` (
  `vendor_dim_id` int(11) NOT NULL,
  `vendor_trunk_id` int(11) DEFAULT NULL
) ENGINE=BRIGHTHOUSE DEFAULT CHARSET=latin1;

CREATE TABLE `customer_agg` (
  `date_id` smallint(6) NOT NULL,
  `customer_id` smallint(6) NOT NULL,
  `opportunities` int(11) NOT NULL,
  `connects` int(11) NOT NULL,
  `adj_asr` float NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=BRIGHTHOUSE DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

CREATE TABLE `geography_agg` (
  `date_id` smallint(6) NOT NULL,
  `country_name` varchar(45) COLLATE latin1_bin NOT NULL COMMENT 'lookup',
  `state` char(2) COLLATE latin1_bin NOT NULL COMMENT 'lookup',
  `npa` smallint(6) NOT NULL,
  `attempts` int(11) NOT NULL,
  `connects` int(11) NOT NULL,
  `opportunities` int(11) NOT NULL,
  `asr` float NOT NULL,
  `adj_asr` float NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=BRIGHTHOUSE DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

CREATE TABLE `vendor_agg` (
  `date_id` smallint(6) NOT NULL,
  `vendor_id` smallint(6) NOT NULL,
  `attempts` int(11) NOT NULL,
  `connects` int(11) NOT NULL,
  `asr` float NOT NULL,
  `duration` int(11) NOT NULL,
  `avg_route_position` float NOT NULL
) ENGINE=BRIGHTHOUSE DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

