use cdr;

LOAD DATA INFILE 'E:/Pervasive/call_type_dim.csv'
INTO TABLE call_type_dim
FIELDS
TERMINATED BY ',' ENCLOSED BY '"';


LOAD DATA INFILE 'E:/Pervasive/cdr_customer_agg_table.csv'
INTO TABLE customer_agg
FIELDS
TERMINATED BY ',' ENCLOSED BY '"';


LOAD DATA INFILE 'E:/Pervasive/scrubbed_customer.csv'
INTO TABLE customer_dim
FIELDS
TERMINATED BY ',' ENCLOSED BY '"';


LOAD DATA INFILE 'E:/Pervasive/date_dim.csv'
INTO TABLE date_dim
FIELDS
TERMINATED BY ',' ENCLOSED BY '"';


LOAD DATA INFILE 'E:/Pervasive/cdr_geo_agg_table.csv'
INTO TABLE geography_agg
FIELDS
TERMINATED BY ',' ENCLOSED BY '"';


LOAD DATA INFILE 'E:/Pervasive/geography_dim.csv'
INTO TABLE geography_dim
FIELDS
TERMINATED BY ',' ENCLOSED BY '"';


LOAD DATA INFILE 'E:/Pervasive/release_code_dim.csv'
INTO TABLE release_code_dim
FIELDS
TERMINATED BY ',' ENCLOSED BY '"';


LOAD DATA INFILE 'E:/Pervasive/time_dim.csv'
INTO TABLE time_dim
FIELDS
TERMINATED BY ',' ENCLOSED BY '"';


LOAD DATA INFILE 'E:/Pervasive/cdr_vendor_agg_table.csv'
INTO TABLE vendor_agg
FIELDS
TERMINATED BY ',' ENCLOSED BY '"';


LOAD DATA INFILE 'E:/Pervasive/scrubbed_vendor.csv'
INTO TABLE vendor_dim
FIELDS
TERMINATED BY ',' ENCLOSED BY '"';

LOAD DATA INFILE 'E:/Pervasive/cdr_fact_agg_oct.csv'
INTO TABLE cdr_fact_agg
FIELDS
TERMINATED BY ',' ENCLOSED BY '"';
