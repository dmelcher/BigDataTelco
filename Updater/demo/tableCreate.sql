drop table if exists test_fact_agg;

CREATE TABLE `test_fact_agg` (
  `date_id` smallint(6) DEFAULT NULL,
  `time_id` smallint(6) DEFAULT NULL,
  `customer_id` smallint(6) DEFAULT NULL,
  `vendor_id` smallint(6) DEFAULT NULL,
  `geo_id` int(11) DEFAULT NULL,
  `customer_release_code_id` smallint(6) DEFAULT NULL,
  `vendor_release_code_id` smallint(6) DEFAULT NULL,
  `call_type_id` tinyint(4) DEFAULT NULL,
  `grp_cnt` mediumint(9) DEFAULT NULL,
  `route_sum` mediumint(9) DEFAULT NULL,
  `connect_sum` smallint(6) DEFAULT NULL,
  `early_event_sum` smallint(6) DEFAULT NULL,
  `ipdd_sum` bigint(20) DEFAULT NULL,
  `epdd_sum` bigint(20) DEFAULT NULL,
  `duration_sum` decimal(11,1) DEFAULT NULL,
  `route_max` smallint(6) DEFAULT NULL,
  `ipdd_max` bigint(20) DEFAULT NULL,
  `epdd_max` bigint(20) DEFAULT NULL
) ENGINE=BRIGHTHOUSE DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
