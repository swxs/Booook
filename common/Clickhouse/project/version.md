# version

------

- [version](#version)
  - [ClickHouse Release 1.1](#clickhouse-release-11)
    - [ClickHouse Release 1.1.54245, 2017-07-04](#clickhouse-release-1154245-2017-07-04)
    - [ClickHouse Release 1.1.54276, 2017-08-16](#clickhouse-release-1154276-2017-08-16)
    - [ClickHouse Release 1.1.54289, 2017-09-13](#clickhouse-release-1154289-2017-09-13)
    - [ClickHouse Release 1.1.54292, 2017-09-20](#clickhouse-release-1154292-2017-09-20)
    - [ClickHouse Release 1.1.54304, 2017-10-19](#clickhouse-release-1154304-2017-10-19)
    - [ClickHouse Release 1.1.54310, 2017-11-01](#clickhouse-release-1154310-2017-11-01)
    - [ClickHouse Release 1.1.54337, 2018-01-18](#clickhouse-release-1154337-2018-01-18)
    - [ClickHouse Release 1.1.54362, 2018-03-11](#clickhouse-release-1154362-2018-03-11)
    - [ClickHouse Release 1.1.54370, 2018-03-16](#clickhouse-release-1154370-2018-03-16)
    - [ClickHouse Release 1.1.54378, 2018-04-16](#clickhouse-release-1154378-2018-04-16)
    - [ClickHouse Release 1.1.54380, 2018-04-21](#clickhouse-release-1154380-2018-04-21)
    - [ClickHouse Release 1.1.54388, 2018-06-28¶](#clickhouse-release-1154388-2018-06-28)
    - [ClickHouse Release 1.1.54390, 2018-07-06¶](#clickhouse-release-1154390-2018-07-06)
  - [ClickHouse Release 18.\*](#clickhouse-release-18)
    - [ClickHouse Release 18.1.0, 2018-07-23](#clickhouse-release-1810-2018-07-23)
    - [ClickHouse Release 18.4.0, 2018-07-28](#clickhouse-release-1840-2018-07-28)
    - [ClickHouse Release 18.5.1, 2018-07-31](#clickhouse-release-1851-2018-07-31)
    - [ClickHouse Release 18.6.0, 2018-08-02](#clickhouse-release-1860-2018-08-02)
    - [ClickHouse Release 18.10.3, 2018-08-13](#clickhouse-release-18103-2018-08-13)
    - [ClickHouse Release 18.12.13, 2018-09-10](#clickhouse-release-181213-2018-09-10)
    - [ClickHouse Release 18.12.14, 2018-09-13](#clickhouse-release-181214-2018-09-13)
    - [ClickHouse Release 18.12.17, 2018-09-16](#clickhouse-release-181217-2018-09-16)
    - [ClickHouse Release 18.14.9, 2018-10-16](#clickhouse-release-18149-2018-10-16)
    - [ClickHouse Release 18.16.0, 2018-12-14¶](#clickhouse-release-18160-2018-12-14)
  - [ClickHouse Release 19.\*](#clickhouse-release-19)
    - [ClickHouse Release 19.1.6, 2019-01-24¶](#clickhouse-release-1916-2019-01-24)
    - [ClickHouse Release 19.3.3, 2019-02-13](#clickhouse-release-1933-2019-02-13)
    - [ClickHouse Release 19.4.0.49, 2019-03-09](#clickhouse-release-194049-2019-03-09)
    - [ClickHouse Release 19.5.2.6, 2019-04-15](#clickhouse-release-19526-2019-04-15)
    - [ClickHouse Release 19.6.2.11, 2019-05-13](#clickhouse-release-196211-2019-05-13)
    - [ClickHouse Release 19.7.3.9, 2019-05-30](#clickhouse-release-19739-2019-05-30)
    - [ClickHouse Release 19.7.5.27, 2019-06-09¶](#clickhouse-release-197527-2019-06-09)
    - [ClickHouse Release 19.8.3.8, 2019-06-11](#clickhouse-release-19838-2019-06-11)
    - [ClickHouse Release 19.9.2.4, 2019-06-24¶](#clickhouse-release-19924-2019-06-24)
    - [ClickHouse Release 19.10.1.5, 2019-07-12](#clickhouse-release-191015-2019-07-12)
    - [ClickHouse Release 19.11.3.11, 2019-07-18](#clickhouse-release-1911311-2019-07-18)
    - [ClickHouse Release 19.13.2.19, 2019-08-14](#clickhouse-release-1913219-2019-08-14)
    - [ClickHouse Release 19.14.3.3, 2019-09-10](#clickhouse-release-191433-2019-09-10)
    - [ClickHouse Release 19.15.2.2, 2019-10-01](#clickhouse-release-191522-2019-10-01)
    - [ClickHouse Release 19.16.2.2, 2019-10-30](#clickhouse-release-191622-2019-10-30)
    - [ClickHouse Release 19.17.4.11, 2019-11-22¶](#clickhouse-release-1917411-2019-11-22)
  - [ClickHouse Release 20.\*](#clickhouse-release-20)
    - [ClickHouse release v20.1.2.4, 2020-01-22¶](#clickhouse-release-v20124-2020-01-22)
    - [ClickHouse release v20.1.6.30, 2020-03-05](#clickhouse-release-v201630-2020-03-05)
    - [ClickHouse release v20.3.2.1, 2020-03-12](#clickhouse-release-v20321-2020-03-12)
    - [ClickHouse release v20.3.6.40, 2020-04-16](#clickhouse-release-v203640-2020-04-16)
    - [ClickHouse release v20.3.11.97-lts 2020-06-10](#clickhouse-release-v2031197-lts-2020-06-10)
    - [ClickHouse release v20.4.2.9, 2020-05-12](#clickhouse-release-v20429-2020-05-12)
    - [ClickHouse release v20.5.2.7-stable 2020-07-02](#clickhouse-release-v20527-stable-2020-07-02)
    - [ClickHouse release v20.6.3.28-stable](#clickhouse-release-v206328-stable)
    - [ClickHouse release v20.7.2.30-stable, 2020-08-31](#clickhouse-release-v207230-stable-2020-08-31)
    - [ClickHouse release v20.8.2.3-stable, 2020-09-08](#clickhouse-release-v20823-stable-2020-09-08)
    - [ClickHouse release v20.9.2.20, 2020-09-22](#clickhouse-release-v209220-2020-09-22)
    - [ClickHouse release v20.10.3.30, 2020-10-28](#clickhouse-release-v2010330-2020-10-28)
    - [ClickHouse release v20.11.2.1, 2020-11-11](#clickhouse-release-v201121-2020-11-11)
    - [ClickHouse release v20.12.3.3-stable, 2020-12-13](#clickhouse-release-v201233-stable-2020-12-13)
  - [ClickHouse release 21.\*](#clickhouse-release-21)
    - [ClickHouse release v21.1.2.15-stable 2021-01-18](#clickhouse-release-v211215-stable-2021-01-18)
    - [ClickHouse release v21.2.2.8-stable, 2021-02-07](#clickhouse-release-v21228-stable-2021-02-07)
    - [ClickHouse release v21.3-lts, 2021-03-12](#clickhouse-release-v213-lts-2021-03-12)
    - [ClickHouse release 21.4.1 2021-04-12](#clickhouse-release-2141-2021-04-12)
    - [ClickHouse release 21.5, 2021-05-20](#clickhouse-release-215-2021-05-20)
    - [ClickHouse release 21.6, 2021-06-05](#clickhouse-release-216-2021-06-05)
    - [ClickHouse release v21.7, 2021-07-09](#clickhouse-release-v217-2021-07-09)
    - [ClickHouse release v21.8, 2021-08-12](#clickhouse-release-v218-2021-08-12)
    - [ClickHouse release v21.9, 2021-09-09](#clickhouse-release-v219-2021-09-09)
    - [ClickHouse release v21.10, 2021-10-16](#clickhouse-release-v2110-2021-10-16)
    - [ClickHouse release v21.11, 2021-11-09](#clickhouse-release-v2111-2021-11-09)
    - [ClickHouse release v21.12, 2021-12-15](#clickhouse-release-v2112-2021-12-15)
  - [ClickHouse Release 22.\*](#clickhouse-release-22)
    - [ClickHouse release v22.1, 2022-01-18](#clickhouse-release-v221-2022-01-18)
    - [ClickHouse release v22.2, 2022-02-17](#clickhouse-release-v222-2022-02-17)
    - [ClickHouse release v22.3-lts, 2022-03-17](#clickhouse-release-v223-lts-2022-03-17)
    - [ClickHouse release 22.4, 2022-04-19](#clickhouse-release-224-2022-04-19)
    - [ClickHouse release 22.5, 2022-05-19](#clickhouse-release-225-2022-05-19)
    - [ClickHouse release 22.6, 2022-06-16](#clickhouse-release-226-2022-06-16)
    - [ClickHouse release 22.7, 2022-07-21](#clickhouse-release-227-2022-07-21)
    - [ClickHouse release 22.8, 2022-08-18](#clickhouse-release-228-2022-08-18)
    - [ClickHouse release 22.9, 2022-09-22](#clickhouse-release-229-2022-09-22)
    - [ClickHouse release 22.10, 2022-10-25](#clickhouse-release-2210-2022-10-25)
    - [ClickHouse release 22.11, 2022-11-17](#clickhouse-release-2211-2022-11-17)

------

## ClickHouse Release 1.1
### ClickHouse Release 1.1.54245, 2017-07-04

- *Distributed DDL (for example, CREATE TABLE ON CLUSTER)*
- The replicated query ALTER TABLE CLEAR COLUMN IN PARTITION.
- The engine for Dictionary tables (access to dictionary data in the form of a table).
- Dictionary database engine (this type of database automatically has Dictionary tables available for all the connected external dictionaries).
- You can check for updates to the dictionary by sending a request to the source.
- Qualified column names
- Quoting identifiers using double quotation marks.
- Sessions in the HTTP interface.
- *The OPTIMIZE query for a Replicated table can can run not only on the leader.*
- **Removed SET GLOBAL.**


### ClickHouse Release 1.1.54276, 2017-08-16 
- *Added an optional WITH section for a SELECT query. Example query: `WITH 1+1 AS a SELECT a, a*a`*
- INSERT can be performed synchronously in a Distributed table: OK is returned only after all the data is saved on all the shards. This is activated by the setting insert_distributed_sync=1.
- Added the UUID data type for working with 16-byte identifiers.
- Added aliases of CHAR, FLOAT and other types for compatibility with the Tableau.
- Added the functions toYYYYMM, toYYYYMMDD, and toYYYYMMDDhhmmss for converting time into numbers.
- You can use IP addresses (together with the hostname) to identify servers for clustered DDL queries.
- Added support for non-constant arguments and negative offsets in the function substring(str, pos, len).
- Added the max_size parameter for the groupArray(max_size)(column) aggregate function, and optimized its performance.
- **Changed the binary format of aggregate states of groupArray(array_column) functions for arrays.**


### ClickHouse Release 1.1.54289, 2017-09-13 
- SYSTEM queries for server administration: SYSTEM RELOAD DICTIONARY, SYSTEM RELOAD DICTIONARIES, SYSTEM DROP DNS CACHE, SYSTEM SHUTDOWN, SYSTEM KILL.
- *Added functions for working with arrays: concat, arraySlice, arrayPushBack, arrayPushFront, arrayPopBack, arrayPopFront.*
- Added root and identity parameters for the ZooKeeper configuration. This allows you to isolate individual users on the same ZooKeeper cluster.
- Added aggregate functions groupBitAnd, groupBitOr, and groupBitXor (for compatibility, they are also available under the names BIT_AND, BIT_OR, and BIT_XOR).
- External dictionaries can be loaded from MySQL by specifying a socket in the filesystem.
- External dictionaries can be loaded from MySQL over SSL (ssl_cert, ssl_key, ssl_ca parameters).
- Added the max_network_bandwidth_for_user setting to restrict the overall bandwidth use for queries per user.
- Support for DROP TABLE for temporary tables.
- Support for reading DateTime values in Unix timestamp format from the CSV and JSONEachRow formats.
- Lagging replicas in distributed queries are now excluded by default (the default threshold is 5 minutes).
- FIFO locking is used during ALTER: an ALTER query isn’t blocked indefinitely for continuously running queries.
- Option to set umask in the config file.
- Improved performance for queries with DISTINCT .

### ClickHouse Release 1.1.54292, 2017-09-20
- Added the pointInPolygon function for working with coordinates on a coordinate plane.
- Added the sumMap aggregate function for calculating the sum of arrays, similar to SummingMergeTree.
- Added the trunc function. Improved performance of the rounding functions (round, floor, ceil, roundToExp2) and corrected the logic of how they work. Changed the logic of the roundToExp2 function for fractions and negative numbers.
- The ClickHouse executable file is now less dependent on the libc version. The same ClickHouse executable file can run on a wide variety of Linux systems. There is still a dependency when using compiled queries (with the setting compile = 1 , which is not used by default).
- Reduced the time needed for dynamic compilation of queries.

### ClickHouse Release 1.1.54304, 2017-10-19 
- TLS support in the native protocol (to enable, set tcp_ssl_port in config.xml ).

### ClickHouse Release 1.1.54310, 2017-11-01
- *Custom partitioning key for the MergeTree family of table engines.*
- Kafka table engine.
- Added support for loading CatBoost models and applying them to data stored in ClickHouse.
- *Added support for time zones with non-integer offsets from UTC.*
- Added support for arithmetic operations with time intervals.
- The range of values for the Date and DateTime types is extended to the year 2105.
- *Added the CREATE MATERIALIZED VIEW x TO y query (specifies an existing table for storing the data of a materialized view).*
- Added the ATTACH TABLE query without arguments.
- The processing logic for Nested columns with names ending in -Map in a SummingMergeTree table was extracted to the sumMap aggregate function. You can now specify such columns explicitly.
- Max size of the IP trie dictionary is increased to 128M entries.
- Added the getSizeOfEnumType function.
- Added the sumWithOverflow aggregate function.
- Added support for the Cap’n Proto input format.
- You can now customize compression level when using the zstd algorithm.
- **Creation of temporary tables with an engine other than Memory is not allowed.**
- **Explicit creation of tables with the View or MaterializedView engine is not allowed.**
- **During table creation, a new check verifies that the sampling key expression is included in the primary key.**

### ClickHouse Release 1.1.54337, 2018-01-18
- Added support for storage of multi-dimensional arrays and tuples (Tuple data type) in tables.
- Support for table functions for DESCRIBE and INSERT queries. Added support for subqueries in DESCRIBE. Examples: DESC TABLE remote('host', default.hits); DESC TABLE (SELECT 1); INSERT INTO TABLE FUNCTION remote('host', default.hits). Support for INSERT INTO TABLE in addition to INSERT INTO.
- Improved support for time zones. The DateTime data type can be annotated with the timezone that is used for parsing and formatting in text formats. Example: DateTime('Europe/Moscow'). When timezones are specified in functions for DateTime arguments, the return type will track the timezone, and the value will be displayed as expected.
- Added the functions toTimeZone, timeDiff, toQuarter, toRelativeQuarterNum. The toRelativeHour/Minute/Second functions can take a value of type Date as an argument. The now function name is case-sensitive.
- Added the toStartOfFifteenMinutes function (Kirill Shvakov).
- Added the clickhouse format tool for formatting queries.
- Added the format_schema_path configuration parameter (Marek Vavruşa). It is used for specifying a schema in Cap'n Proto format. Schema files can be located only in the specified directory.
- Added support for config substitutions (incl and conf.d) for configuration of external dictionaries and models (Pavel Yakunin).
- Added a column with documentation for the system.settings table (Kirill Shvakov).
- Added the system.parts_columns table with information about column sizes in each data part of MergeTree tables.
- Added the system.models table with information about loaded CatBoost machine learning models.
- Added the mysql and odbc table function and corresponding MySQL and ODBC table engines for accessing remote databases. This functionality is in the beta stage.
- Added the possibility to pass an argument of type AggregateFunction for the groupArray aggregate function (so you can create an array of states of some aggregate function).
- Removed restrictions on various combinations of aggregate function combinators. For example, you can use avgForEachIf as well as avgIfForEach aggregate functions, which have different behaviors.
- The -ForEach aggregate function combinator is extended for the case of aggregate functions of multiple arguments.
- Added support for aggregate functions of Nullable arguments even for cases when the function returns a non-Nullable result (added with the contribution of Silviu Caragea). Example: groupArray, groupUniqArray, topK.
- Added the max_client_network_bandwidth for clickhouse-client (Kirill Shvakov).
- Users with the readonly = 2 setting are allowed to work with TEMPORARY tables (CREATE, DROP, INSERT…) (Kirill Shvakov).
- Added support for using multiple consumers with the Kafka engine. Extended configuration options for Kafka (Marek Vavruša).
- Added the intExp3 and intExp4 functions.
- Added the sumKahan aggregate function.
- Added the `to * Number* OrNull` functions, where `* Number*` is a numeric type.
- Added support for WITH clauses for an INSERT SELECT query (author: zhang2014).
- Added settings: http_connection_timeout, http_send_timeout, http_receive_timeout. In particular, these settings are used for downloading data parts for replication. Changing these settings allows for faster failover if the network is overloaded.
- Added support for ALTER for tables of type Null (Anastasiya Tsarkova).
- The reinterpretAsString function is extended for all data types that are stored contiguously in memory.
- Added the --silent option for the clickhouse-local tool. It suppresses printing query execution info in stderr.
- Added support for reading values of type Date from text in a format where the month and/or day of the month is specified using a single digit instead of two digits (Amos Bird).
- **The format for marks in Log type tables that contain Nullable columns was changed in a backward incompatible way. If you have these tables, you should convert them to the TinyLog type before starting up the new server version. To do this, replace ENGINE = Log with ENGINE = TinyLog in the corresponding .sql file in the metadata directory. If your table does not have Nullable columns or if the type of your table is not Log, then you do not need to do anything.**
- **Removed the experimental_allow_extended_storage_definition_syntax setting. Now this feature is enabled by default.**
- **The runningIncome function was renamed to runningDifferenceStartingWithFirstvalue to avoid confusion.**
- **Removed the FROM ARRAY JOIN arr syntax when ARRAY JOIN is specified directly after FROM with no table (Amos Bird).**
- **Removed the BlockTabSeparated format that was used solely for demonstration purposes.**
- **Changed the state format for aggregate functions varSamp, varPop, stddevSamp, stddevPop, covarSamp, covarPop, corr. If you have stored states of these aggregate functions in tables (using the AggregateFunction data type or materialized views with corresponding states), please write to feedback@clickhouse.com.**
- **In previous server versions there was an undocumented feature: if an aggregate function depends on parameters, you can still specify it without parameters in the AggregateFunction data type. Example: AggregateFunction(quantiles, UInt64) instead of AggregateFunction(quantiles(0.5, 0.9), UInt64). This feature was lost. Although it was undocumented, we plan to support it again in future releases.**
- **Enum data types cannot be used in min/max aggregate functions. This ability will be returned in the next release.**

### ClickHouse Release 1.1.54362, 2018-03-11
- Aggregation without GROUP BY for an empty set (such as `SELECT count(*) FROM table WHERE 0`) now returns a result with one row with null values for aggregate functions, in compliance with the SQL standard. To restore the old behavior (return an empty result), set empty_result_for_aggregation_by_empty_set to 1.
- *Added type conversion for UNION ALL. Different alias names are allowed in SELECT positions in UNION ALL, in compliance with the SQL standard.*
- Arbitrary expressions are supported in LIMIT BY clauses. Previously, it was only possible to use columns resulting from SELECT.
- An index of MergeTree tables is used when IN is applied to a tuple of expressions from the columns of the primary key. Example: WHERE (UserID, EventDate) IN ((123, '2000-01-01'), ...) (Anastasiya Tsarkova).
- *Added the clickhouse-copier tool for copying between clusters and resharding data (beta).*
- Added consistent hashing functions: yandexConsistentHash, jumpConsistentHash, sumburConsistentHash. They can be used as a sharding key in order to reduce the amount of network traffic during subsequent reshardings.
- Added functions: arrayAny, arrayAll, hasAny, hasAll, arrayIntersect, arrayResize.
- Added the arrayCumSum function (Javi Santana).
- Added the parseDateTimeBestEffort, parseDateTimeBestEffortOrZero, and parseDateTimeBestEffortOrNull functions to read the DateTime from a string containing text in a wide variety of possible formats.
- Data can be partially reloaded from external dictionaries during updating (load just the records in which the value of the specified field greater than in the previous download) (Arsen Hakobyan).
- Added the cluster table function. Example: cluster(cluster_name, db, table). The remote table function can accept the cluster name as the first argument, if it is specified as an identifier.
- The remote and cluster table functions can be used in INSERT queries.
- Added the create_table_query and engine_full virtual columns to the system.tablestable . The metadata_modification_time column is virtual.
- Added the data_path and metadata_path columns to system.tablesandsystem.databases tables, and added the path column to the system.parts and system.parts_columns tables.
- Added additional information about merges in the system.part_log table.
- An arbitrary partitioning key can be used for the system.query_log table (Kirill Shvakov).
- The SHOW TABLES query now also shows temporary tables. Added temporary tables and the is_temporary column to system.tables (zhang2014).
- Added DROP TEMPORARY TABLE and EXISTS TEMPORARY TABLE queries (zhang2014).
- Support for SHOW CREATE TABLE for temporary tables (zhang2014).
- Added the system_profile configuration parameter for the settings used by internal processes.
- Support for loading object_id as an attribute in MongoDB dictionaries (Pavel Litvinenko).
- Reading null as the default value when loading data for an external dictionary with the MongoDB source (Pavel Litvinenko).
- Reading DateTime values in the Values format from a Unix timestamp without single quotes.
- Failover is supported in remote table functions for cases when some of the replicas are missing the requested table.
- Configuration settings can be overridden in the command line when you run clickhouse-server. Example: clickhouse-server -- --logger.level=information.
- Implemented the empty function from a FixedString argument: the function returns 1 if the string consists entirely of null bytes (zhang2014).
- Added the listen_tryconfiguration parameter for listening to at least one of the listen addresses without quitting, if some of the addresses can’t be listened to (useful for systems with disabled support for IPv4 or IPv6).
- Added the VersionedCollapsingMergeTree table engine.
- Support for rows and arbitrary numeric types for the library dictionary source.
- MergeTree tables can be used without a primary key (you need to specify ORDER BY tuple()).
- A Nullable type can be CAST to a non-Nullable type if the argument is not NULL.
- RENAME TABLE can be performed for VIEW.
- Added the throwIf function.
- Added the odbc_default_field_size option, which allows you to extend the maximum size of the value loaded from an ODBC source (by default, it is 1024).
- The system.processes table and SHOW PROCESSLIST now have the is_cancelled and peak_memory_usage columns.

### ClickHouse Release 1.1.54370, 2018-03-16
- Added the system.macros table and auto updating of macros when the config file is changed.
- Added the SYSTEM RELOAD CONFIG query.
- Added the maxIntersections(left_col, right_col) aggregate function, which returns the maximum number of simultaneously intersecting intervals [left; right]. The maxIntersectionsPosition(left, right) function returns the beginning of the “maximum” interval. (Michael Furmur).

### ClickHouse Release 1.1.54378, 2018-04-16
- Logging level can be changed without restarting the server.
- Added the SHOW CREATE DATABASE query.
- The query_id can be passed to clickhouse-client (elBroom).
- New setting: max_network_bandwidth_for_all_users.
- Added support for ALTER TABLE ... PARTITION ... for MATERIALIZED VIEW.
- Added information about the size of data parts in uncompressed form in the system table.
- Server-to-server encryption support for distributed tables (<secure>1</secure> in the replica config in <remote_servers>).
- Configuration of the table level for the ReplicatedMergeTree family in order to minimize the amount of data stored in Zookeeper: : use_minimalistic_checksums_in_zookeeper = 1
- Configuration of the clickhouse-client prompt. By default, server names are now output to the prompt. The server’s display name can be changed. It’s also sent in the X-ClickHouse-Display-Name HTTP header (Kirill Shvakov).
- Multiple comma-separated topics can be specified for the Kafka engine (Tobias Adamson)
- When a query is stopped by KILL QUERY or replace_running_query, the client receives the Query was canceled exception instead of an incomplete result.


### ClickHouse Release 1.1.54380, 2018-04-21
- Added the table function file(path, format, structure). An example reading bytes from /dev/urandom: ln -s /dev/urandom /var/lib/clickhouse/user_files/random`clickhouse-client -q "SELECT * FROM file('random', 'RowBinary', 'd UInt8') LIMIT 10"`.

### ClickHouse Release 1.1.54388, 2018-06-28¶
- Support for the ALTER TABLE t DELETE WHERE query for replicated tables. Added the system.mutations table to track progress of this type of queries.
- Support for the ALTER TABLE t [REPLACE|ATTACH] PARTITION query for `*MergeTree` tables.
- Support for the TRUNCATE TABLE query (Winter Zhang)
- Several new SYSTEM queries for replicated tables (RESTART REPLICAS, SYNC REPLICA, [STOP|START] [MERGES|FETCHES|SENDS REPLICATED|REPLICATION QUEUES]).
- Added the ability to write to a table with the MySQL engine and the corresponding table function (sundy-li).
- Added the url() table function and the URL table engine (Alexander Sapin).
- Added the windowFunnel aggregate function (sundy-li).
- New startsWith and endsWith functions for strings (Vadim Plakhtinsky).
- The numbers() table function now allows you to specify the offset (Winter Zhang).
- The password to clickhouse-client can be entered interactively.
- Server logs can now be sent to syslog (Alexander Krasheninnikov).
- Support for logging in dictionaries with a shared library source (Alexander Sapin).
- Support for custom CSV delimiters (Ivan Zhukov)
- Added the date_time_input_format setting. If you switch this setting to 'best_effort', DateTime values will be read in a wide range of formats.
- Added the clickhouse-obfuscator utility for data obfuscation. Usage example: publishing data used in performance tests.

### ClickHouse Release 1.1.54390, 2018-07-06¶
- Queries can be sent in multipart/form-data format (in the query field), which is useful if external data is also sent for query processing (Olga Hvostikova).
- Added the ability to enable or disable processing single or double quotes when reading data in CSV format. You can configure this in the format_csv_allow_single_quotes and format_csv_allow_double_quotes settings (Amos Bird).
- Now OPTIMIZE TABLE ... FINAL can be used without specifying the partition for non-replicated variants of MergeTree (Amos Bird).


## ClickHouse Release 18.*
### ClickHouse Release 18.1.0, 2018-07-23 
- Support for the ALTER TABLE t DELETE WHERE query for non-replicated MergeTree tables (#2634).
- Support for arbitrary types for the `uniq*` family of aggregate functions (#2010).
- Support for arbitrary types in comparison operators (#2026).
- The users.xml file allows setting a subnet mask in the format 10.0.0.1/255.255.255.0. This is necessary for using masks for IPv6 networks with zeros in the middle (#2637).
- Added the arrayDistinct function (#2670).
- The SummingMergeTree engine can now work with AggregateFunction type columns (Constantin S. Pan).


### ClickHouse Release 18.4.0, 2018-07-28
- Added system tables: formats, data_type_families, aggregate_function_combinators, table_functions, table_engines, collations #2721.
- Added the ability to use a table function instead of a table as an argument of a remote or cluster table function #2708.
- Support for HTTP Basic authentication in the replication protocol #2727.
- The has function now allows searching for a numeric value in an array of Enum values Maxim Khrisanfov.
- Support for adding arbitrary message separators when reading from Kafka Amos Bird.


### ClickHouse Release 18.5.1, 2018-07-31 
- Added the hash function murmurHash2_32 #2756.


### ClickHouse Release 18.6.0, 2018-08-02 
- Added support for ON expressions for the JOIN ON syntax:
- JOIN ON Expr([table.]column ...) = Expr([table.]column, ...) [AND Expr([table.]column, ...) = Expr([table.]column, ...) ...]
- The expression must be a chain of equalities joined by the AND operator. Each side of the equality can be an arbitrary expression over the columns of one of the tables. The use of fully qualified column names is supported (table.name, database.table.name, table_alias.name, subquery_alias.name) for the right table. #2742
- HTTPS can be enabled for replication. #2760


### ClickHouse Release 18.10.3, 2018-08-13 
- HTTPS can be used for replication. #2760
- Added the functions murmurHash2_64, murmurHash3_32, murmurHash3_64, and murmurHash3_128 in addition to the existing murmurHash2_32. #2791
- Support for Nullable types in the ClickHouse ODBC driver (ODBCDriver2 output format). #2834
- Support for UUID in the key columns.


### ClickHouse Release 18.12.13, 2018-09-10 
- Added the DECIMAL(digits, scale) data type (Decimal32(scale), Decimal64(scale), Decimal128(scale)). To enable it, use the setting allow_experimental_decimal_type. #2846 #2970 #3008 #3047
- New WITH ROLLUP modifier for GROUP BY (alternative syntax: GROUP BY ROLLUP(...)). #2948
- In queries with JOIN, the star character expands to a list of columns in all tables, in compliance with the SQL standard. You can restore the old behavior by setting asterisk_left_columns_only to 1 on the user configuration level. Winter Zhang
- Added support for JOIN with table functions. Winter Zhang
- Autocomplete by pressing Tab in clickhouse-client. Sergey Shcherbin
- Ctrl+C in clickhouse-client clears a query that was entered. #2877
- Added the join_default_strictness setting (values: ", 'any', 'all'). This allows you to not specify ANY or ALL for JOIN. #2982
- Each line of the server log related to query processing shows the query ID. #2482
- Now you can get query execution logs in clickhouse-client (use the send_logs_level setting). With distributed query processing, logs are cascaded from all the servers. #2482
- The system.query_log and system.processes (SHOW PROCESSLIST) tables now have information about all changed settings when you run a query (the nested structure of the Settings data). Added the log_query_settings setting. #2482
- The system.query_log and system.processes tables now show information about the number of threads that are participating in query execution (see the thread_numbers column). #2482
- Added ProfileEvents counters that measure the time spent on reading and writing over the network and reading and writing to disk, the number of network errors, and the time spent waiting when network bandwidth is limited. #2482
- Added ProfileEventscounters that contain the system metrics from rusage (you can use them to get information about CPU usage in userspace and the kernel, page faults, and context switches), as well as taskstats metrics (use these to obtain information about I/O wait time, CPU wait time, and the amount of data read and recorded, both with and without page cache). #2482
- The ProfileEvents counters are applied globally and for each query, as well as for each query execution thread, which allows you to profile resource consumption by query in detail. #2482
- Added the system.query_thread_log table, which contains information about each query execution thread. Added the log_query_threads setting. #2482
- The system.metrics and system.events tables now have built-in documentation. #3016
- Added the arrayEnumerateDense function. Amos Bird
- Added the arrayCumSumNonNegative and arrayDifference functions. Aleksey Studnev
- Added the retention aggregate function. Sundy Li
- Now you can add (merge) states of aggregate functions by using the plus operator, and multiply the states of aggregate functions by a nonnegative constant. #3062 #3034
- Tables in the MergeTree family now have the virtual column _partition_id. #3089


### ClickHouse Release 18.12.14, 2018-09-13
- Added support for ALTER UPDATE queries. #3035
- Added the allow_ddl option, which restricts the user’s access to DDL queries. #3104
- Added the min_merge_bytes_to_use_direct_io option for MergeTree engines, which allows you to set a threshold for the total size of the merge (when above the threshold, data part files will be handled using O_DIRECT). #3117
- The system.merges system table now contains the partition_id column. #3099



### ClickHouse Release 18.12.17, 2018-09-16 
- invalidate_query (the ability to specify a query to check whether an external dictionary needs to be updated) is implemented for the clickhouse source. #3126
- Added the ability to use `UInt*`, `Int*`, and DateTime data types (along with the Date type) as a range_hashed external dictionary key that defines the boundaries of ranges. Now NULL can be used to designate an open range. Vasily Nemkov
- The Decimal type now supports `var*` and `stddev*` aggregate functions. #3129
- The Decimal type now supports mathematical functions (exp, sin and so on.) #3129
- The system.part_log table now has the partition_id column. #3089


### ClickHouse Release 18.14.9, 2018-10-16
- The WITH CUBE modifier for GROUP BY (the alternative syntax GROUP BY CUBE(...) is also available). #3172
- Added the formatDateTime function. Alexandr Krasheninnikov
- Added the JDBC table engine and jdbc table function (requires installing clickhouse-jdbc-bridge). Alexandr Krasheninnikov
- Added functions for working with the ISO week number: toISOWeek, toISOYear, toStartOfISOYear, and toDayOfYear. #3146
- Now you can use Nullable columns for MySQL and ODBC tables. #3362
- Nested data structures can be read as nested objects in JSONEachRow format. Added the input_format_import_nested_json setting. Veloman Yunkan
- Parallel processing is available for many MATERIALIZED VIEWs when inserting data. See the parallel_view_processing setting. Marek Vavruša
- Added the SYSTEM FLUSH LOGS query (forced log flushes to system tables such as query_log) #3321
- Now you can use pre-defined database and table macros when declaring Replicated tables. #3251
- Added the ability to read Decimal type values in engineering notation (indicating powers of ten). #3153


### ClickHouse Release 18.16.0, 2018-12-14¶
- DEFAULT expressions are evaluated for missing fields when loading data in semi-structured input formats (JSONEachRow, TSKV). The feature is enabled with the insert_sample_with_metadata setting. #3555
- The ALTER TABLE query now has the MODIFY ORDER BY action for changing the sorting key when adding or removing a table column. This is useful for tables in the MergeTree family that perform additional tasks when merging based on this sorting key, such as SummingMergeTree, AggregatingMergeTree, and so on. #3581 #3755
- For tables in the MergeTree family, now you can specify a different sorting key (ORDER BY) and index (PRIMARY KEY). The sorting key can be longer than the index. #3581
- Added the hdfs table function and the HDFS table engine for importing and exporting data to HDFS. chenxing-xc
- Added functions for working with base64: base64Encode, base64Decode, tryBase64Decode. Alexander Krasheninnikov
- Now you can use a parameter to configure the precision of the uniqCombined aggregate function (select the number of HyperLogLog cells). #3406
- Added the system.contributors table that contains the names of everyone who made commits in ClickHouse. #3452
- Added the ability to omit the partition for the ALTER TABLE ... FREEZE query in order to back up all partitions at once. #3514
- Added dictGet and dictGetOrDefault functions that do not require specifying the type of return value. The type is determined automatically from the dictionary description. Amos Bird
- Now you can specify comments for a column in the table description and change it using ALTER. #3377
- Reading is supported for Join type tables with simple keys. Amos Bird
- Now you can specify the options join_use_nulls, max_rows_in_join, max_bytes_in_join, and join_overflow_mode when creating a Join type table. Amos Bird
- Added the joinGet function that allows you to use a Join type table like a dictionary. Amos Bird
- Added the partition_key, sorting_key, primary_key, and sampling_key columns to the system.tables table in order to provide information about table keys. #3609
- Added the is_in_partition_key, is_in_sorting_key, is_in_primary_key, and is_in_sampling_key columns to the system.columns table. #3609
- Added the min_time and max_time columns to the system.parts table. These columns are populated when the partitioning key is an expression consisting of DateTime columns. Emmanuel Donin de Rosière


## ClickHouse Release 19.*
### ClickHouse Release 19.1.6, 2019-01-24¶
- Custom per column compression codecs for tables. #3899 #4111 (alesapin, Winter Zhang, Anatoly)
- Added compression codec Delta. #4052 (alesapin)
- Allow to ALTER compression codecs. #4054 (alesapin)
- Added functions left, right, trim, ltrim, rtrim, timestampadd, timestampsub for SQL standard compatibility. #3826 (Ivan Blinkov)
- Support for write in HDFS tables and hdfs table function. #4084 (alesapin)
- Added functions to search for multiple constant strings from big haystack: multiPosition, multiSearch ,firstMatch also with -UTF8, -CaseInsensitive, and -CaseInsensitiveUTF8 variants. #4053 (Danila Kutenin)
- Pruning of unused shards if SELECT query filters by sharding key (setting optimize_skip_unused_shards). #3851 (Gleb Kanterov, Ivan)
- Allow Kafka engine to ignore some number of parsing errors per block. #4094 (Ivan)
- Added support for CatBoost multiclass models evaluation. Function modelEvaluate returns tuple with per-class raw predictions for multiclass models. libcatboostmodel.so should be built with #607. #3959 (KochetovNicolai)
- Added functions filesystemAvailable, filesystemFree, filesystemCapacity. #4097 (Boris Granveaud)
- Added hashing functions xxHash64 and xxHash32. #3905 (filimonov)
- Added gccMurmurHash hashing function (GCC flavoured Murmur hash) which uses the same hash seed as gcc #4000 (sundyli)
- Added hashing functions javaHash, hiveHash. #3811 (shangshujie365)
- Added table function remoteSecure. Function works as remote, but uses secure connection. #4088 (proller)


### ClickHouse Release 19.3.3, 2019-02-13 
- Added the KILL MUTATION statement that allows removing mutations that are for some reasons stuck. Added latest_failed_part, latest_fail_time, latest_fail_reason fields to the system.mutations table for easier troubleshooting. #4287 (Alex Zatelepin)
- Added aggregate function entropy which computes Shannon entropy. #4238 (Quid37)
- Added ability to send queries INSERT INTO tbl VALUES (.... to server without splitting on query and data parts. #4301 (alesapin)
- Generic implementation of arrayWithConstant function was added. #4322 (alexey-milovidov)
- Implemented NOT BETWEEN comparison operator. #4228 (Dmitry Naumov)
- Implement sumMapFiltered in order to be able to limit the number of keys for which values will be summed by sumMap. #4129 (Léo Ercolanelli)
- Added support of Nullable types in mysql table function. #4198 (Emmanuel Donin de Rosière)
- Support for arbitrary constant expressions in LIMIT clause. #4246 (k3box)
- Added topKWeighted aggregate function that takes additional argument with (unsigned integer) weight. #4245 (Andrew Golman)
- StorageJoin now supports join_any_take_last_row setting that allows overwriting existing values of the same key. #3973 (Amos Bird
- Added function toStartOfInterval. #4304 (Vitaly Baranov)
- Added RowBinaryWithNamesAndTypes format. #4200 (Oleg V. Kozlyuk)
- Added IPv4 and IPv6 data types. More effective implementations of `IPv*` functions. #3669 (Vasily Nemkov)
- Added function toStartOfTenMinutes(). #4298 (Vitaly Baranov)
- Added Protobuf output format. #4005 #4158 (Vitaly Baranov)
- Added brotli support for HTTP interface for data import (INSERTs). #4235 (Mikhail)
- Added hints while user make typo in function name or type in command line client. #4239 (Danila Kutenin)
- Added Query-Id to Server’s HTTP Response header. #4231 (Mikhail)


### ClickHouse Release 19.4.0.49, 2019-03-09 
- Added full support for Protobuf format (input and output, nested data structures). #4174 #4493 (Vitaly Baranov)
- Added bitmap functions with Roaring Bitmaps. #4207 (Andy Yang) #4568 (Vitaly Baranov)
- Parquet format support. #4448 (proller)
- N-gram distance was added for fuzzy string comparison. It is similar to q-gram metrics in R language. #4466 (Danila Kutenin)
- Combine rules for graphite rollup from dedicated aggregation and retention patterns. #4426 (Mikhail f. Shiryaev)
- Added max_execution_speed and max_execution_speed_bytes to limit resource usage. Added min_execution_speed_bytes setting to complement the min_execution_speed. #4430 (Winter Zhang)
- Implemented function flatten. #4555 #4409 (alexey-milovidov, kzon)
- Added functions arrayEnumerateDenseRanked and arrayEnumerateUniqRanked (it’s like arrayEnumerateUniq but allows to fine tune array depth to look inside multidimensional arrays). #4475 (proller) #4601 (alexey-milovidov)
- Multiple JOINS with some restrictions: no asterisks, no complex aliases in ON/WHERE/GROUP BY/… #4462 (Artem Zuikov)


### ClickHouse Release 19.5.2.6, 2019-04-15 
- Hyperscan multiple regular expression matching was added (functions multiMatchAny, multiMatchAnyIndex, multiFuzzyMatchAny, multiFuzzyMatchAnyIndex). #4780, #4841 (Danila Kutenin)
- multiSearchFirstPosition function was added. #4780 (Danila Kutenin)
- Implement the predefined expression filter per row for tables. #4792 (Ivan)
- A new type of data skipping indices based on bloom filters (can be used for equal, in and like functions). #4499 (Nikita Vasilev)
- Added ASOF JOIN which allows to run queries that join to the most recent value known. #4774 #4867 #4863 #4875 (Martijn Bakker, Artem Zuikov)
- Rewrite multiple COMMA JOIN to CROSS JOIN. Then rewrite them to INNER JOIN if possible. #4661 (Artem Zuikov)


### ClickHouse Release 19.6.2.11, 2019-05-13 
- TTL expressions for columns and tables. #4212 (Anton Popov)
- Added support for brotli compression for HTTP responses (Accept-Encoding: br) #4388 (Mikhail)
- Added new function isValidUTF8 for checking whether a set of bytes is correctly utf-8 encoded. #4934 (Danila Kutenin)
- Add new load balancing policy first_or_random which sends queries to the first specified host and if it’s inaccessible send queries to random hosts of shard. Useful for cross-replication topology setups. #5012 (nvartolomei)


### ClickHouse Release 19.7.3.9, 2019-05-30 
- Allow to limit the range of a setting that can be specified by user.These constraints can be set up in user settings profile.#4931 (VitalyBaranov)
- Add a second version of the function groupUniqArray with an optional max_size parameter that limits the size of the resulting array. This behavior is similar to groupArray(max_size)(x) function.#5026 (GuillaumeTassery)
- For TSVWithNames/CSVWithNames input file formats, column order can now be determined from file header. This is controlled by input_format_with_names_use_header parameter.#5081(Alexander)

### ClickHouse Release 19.7.5.27, 2019-06-09¶
- Added bitmap related functions bitmapHasAny and bitmapHasAll analogous to hasAny and hasAll functions for arrays. #5279 (Sergi Vladykin)


### ClickHouse Release 19.8.3.8, 2019-06-11 
- Added functions to work with JSON #4686 (hcz) #5124. (Vitaly Baranov)
- Add a function basename, with a similar behaviour to a basename function, which exists in a lot of languages (os.path.basename in python, basename in PHP, etc…). Work with both an UNIX-like path or a Windows path. #5136 (Guillaume Tassery)
- Added LIMIT n, m BY or LIMIT m OFFSET n BY syntax to set offset of n for LIMIT BY clause. #5138 (Anton Popov)
- Added new data type SimpleAggregateFunction, which allows to have columns with light aggregation in an AggregatingMergeTree. This can only be used with simple functions like any, anyLast, sum, min, max. #4629 (Boris Granveaud)
- Added support for non-constant arguments in function ngramDistance #5198 (Danila Kutenin)
- Added functions skewPop, skewSamp, kurtPop and kurtSamp to compute for sequence skewness, sample skewness, kurtosis and sample kurtosis respectively. #5200 (hcz)
- Support rename operation for MaterializeView storage. #5209 (Guillaume Tassery)
- Added server which allows connecting to ClickHouse using MySQL client. #4715 (Yuriy Baranov)
- Add toDecimal*OrZero and toDecimal*OrNull functions. #5291 (Artem Zuikov)
- Support Decimal types in functions: quantile, quantiles, median, quantileExactWeighted, quantilesExactWeighted, medianExactWeighted. #5304 (Artem Zuikov)
- Added toValidUTF8 function, which replaces all invalid UTF-8 characters by replacement character � (U+FFFD). #5322 (Danila Kutenin)
- Added format function. Formatting constant pattern (simplified Python format pattern) with the strings listed in the arguments. #5330 (Danila Kutenin)
- Added system.detached_parts table containing information about detached parts of MergeTree tables. #5353 (akuzm)
- Added ngramSearch function to calculate the non-symmetric difference between needle and haystack. #5418#5422 (Danila Kutenin)
- Implementation of basic machine learning methods (stochastic linear regression and logistic regression) using aggregate functions interface. Has different strategies for updating model weights (simple gradient descent, momentum method, Nesterov method). Also supports mini-batches of custom size. #4943 (Quid37)
- Implementation of geohashEncode and geohashDecode functions. #5003 (Vasily Nemkov)
- Added aggregate function timeSeriesGroupSum, which can aggregate different time series that sample timestamp not alignment. It will use linear interpolation between two sample timestamp and then sum time-series together. Added aggregate function timeSeriesGroupRateSum, which calculates the rate of time-series and then sum rates together. #4542 (Yangkuan Liu)
- Added functions IPv4CIDRtoIPv4Range and IPv6CIDRtoIPv6Range to calculate the lower and higher bounds for an IP in the subnet using a CIDR. #5095 (Guillaume Tassery)
- Add a X-ClickHouse-Summary header when we send a query using HTTP with enabled setting send_progress_in_http_headers. Return the usual information of X-ClickHouse-Progress, with additional information like how many rows and bytes were inserted in the query. #5116 (Guillaume Tassery)


### ClickHouse Release 19.9.2.4, 2019-06-24¶
- Print information about frozen parts in system.parts table. #5471 (proller)
- Ask client password on clickhouse-client start on tty if not set in arguments #5092 (proller)
- Implement dictGet and dictGetOrDefault functions for Decimal types. #5394 (Artem Zuikov)

### ClickHouse Release 19.10.1.5, 2019-07-12 
- Add new column codec: T64. Made for (U)IntX/EnumX/Data(Time)/DecimalX columns. It should be good for columns with constant or small range values. Codec itself allows enlarge or shrink data type without re-compression. #5557 (Artem Zuikov)
- Add database engine MySQL that allow to view all the tables in remote MySQL server #5599 (Winter Zhang)
- bitmapContains implementation. It’s 2x faster than bitmapHasAny if the second bitmap contains one element. #5535 (Zhichang Yu)
- Support for crc32 function (with behaviour exactly as in MySQL or PHP). Do not use it if you need a hash function. #5661 (Remen Ivan)
- Implemented SYSTEM START/STOP DISTRIBUTED SENDS queries to control asynchronous inserts into Distributed tables. #4935 (Winter Zhang)


### ClickHouse Release 19.11.3.11, 2019-07-18 
- Added support for prepared statements. #5331 (Alexander) #5630 (alexey-milovidov)
- DoubleDelta and Gorilla column codecs #5600 (Vasily Nemkov)
- Added os_thread_priority setting that allows to control the “nice” value of query processing threads that is used by OS to adjust dynamic scheduling priority. It requires CAP_SYS_NICE capabilities to work. This implements #5858 #5909 (alexey-milovidov)
- Implement _topic, _offset, _key columns for Kafka engine #5382 (Ivan) Note that Kafka is broken in this version.
- Add aggregate function combinator -Resample #5590 (hcz)
- Aggregate functions groupArrayMovingSum(win_size)(x) and groupArrayMovingAvg(win_size)(x), which calculate moving sum/avg with or without window-size limitation. #5595 (inv2004)
- Add synonim arrayFlatten \<-> flatten #5764 (hcz)
- Intergate H3 function geoToH3 from Uber. #4724 (Remen Ivan) #5805 (alexey-milovidov)


### ClickHouse Release 19.13.2.19, 2019-08-14 
- Sampling profiler on query level. Example. #4247 (laplab) #6124 (alexey-milovidov) #6250 #6283 #6386
- Allow to specify a list of columns with COLUMNS('regexp') expression that works like a more sophisticated variant of * asterisk. #5951 (mfridental), (alexey-milovidov)
- CREATE TABLE AS table_function() is now possible #6057 (dimarub2000)
- Adam optimizer for stochastic gradient descent is used by default in stochasticLinearRegression() and stochasticLogisticRegression() aggregate functions, because it shows good quality without almost any tuning. #6000 (Quid37)
- Added functions for working with the сustom week number #5212 (Andy Yang)
- RENAME queries now work with all storages. #5953 (Ivan)
- Now client receive logs from server with any desired level by setting send_logs_level regardless to the log level specified in server settings. #5964 (Nikita Mikhaylov)


### ClickHouse Release 19.14.3.3, 2019-09-10 
- WITH FILL modifier for ORDER BY. (continuation of #5069) #6610 (Anton Popov)
- WITH TIES modifier for LIMIT. (continuation of #5069) #6610 (Anton Popov)
- Parse unquoted NULL literal as NULL (if setting format_csv_unquoted_null_literal_as_null=1). Initialize null fields with default values if data type of this field is not nullable (if setting input_format_null_as_default=1). #5990 #6055 (tavplubix)
- Support for wildcards in paths of table functions file and hdfs. If the path contains wildcards, the table will be readonly. Example of usage: select * from hdfs('hdfs://hdfs1:9000/some_dir/another_dir/*/file{0..9}{0..9}') and select * from file('some_dir/{some_file,another_file,yet_another}.tsv', 'TSV', 'value UInt32'). #6092 (Olga Khvostikova)
- New system.metric_log table which stores values of system.events and system.metrics with specified time interval. #6363 #6467 (Nikita Mikhaylov) #6530 (alexey-milovidov)
- Allow to write ClickHouse text logs to system.text_log table. #6037 #6103 (Nikita Mikhaylov) #6164 (alexey-milovidov)
- Show private symbols in stack traces (this is done via parsing symbol tables of ELF files). Added information about file and line number in stack traces if debug info is present. Speedup symbol name lookup with indexing symbols present in program. Added new SQL functions for introspection: demangle and addressToLine. Renamed function symbolizeAddress to addressToSymbol for consistency. Function addressToSymbol will return mangled name for performance reasons and you have to apply demangle. Added setting allow_introspection_functions which is turned off by default. #6201 (alexey-milovidov)
- Table function values (the name is case-insensitive). It allows to read from VALUES list proposed in #5984. Example: SELECT * FROM VALUES('a UInt64, s String', (1, 'one'), (2, 'two'), (3, 'three')). #6217. #6209 (dimarub2000)
- Added an ability to alter storage settings. Syntax: ALTER TABLE <table> MODIFY SETTING <setting> = <value>. #6366 #6669 #6685 (alesapin)
- Support for removing of detached parts. Syntax: ALTER TABLE <table_name> DROP DETACHED PART '<part_id>'. #6158 (tavplubix)
- Table constraints. Allows to add constraint to table definition which will be checked at insert. #5273 (Gleb Novikov) #6652 (alexey-milovidov)
- Suppport for cascaded materialized views. #6324 (Amos Bird)
- Turn on query profiler by default to sample every query execution thread once a second. #6283 (alexey-milovidov)
- Input format ORC. #6454 #6703 (akonyaev90)
- Added two new functions: sigmoid and tanh (that are useful for machine learning applications). #6254 (alexey-milovidov)
- Function hasToken(haystack, token), hasTokenCaseInsensitive(haystack, token) to check if given token is in haystack. Token is a maximal length substring between two non alphanumeric ASCII characters (or boundaries of haystack). Token must be a constant string. Supported by tokenbf_v1 index specialization. #6596, #6662 (Vasily Nemkov)
- New function neighbor(value, offset[, default_value]). Allows to reach prev/next value within column in a block of data. #5925 (Alex Krash) 6685365ab8c5b74f9650492c88a012596eb1b0c6 341e2e4587a18065c2da1ca888c73389f48ce36c Alexey Milovidov
- Created a function currentUser(), returning login of authorized user. Added alias user() for compatibility with MySQL. #6470 (Alex Krash)
- New aggregate functions quantilesExactInclusive and quantilesExactExclusive which were proposed in #5885. #6477 (dimarub2000)
- Function bitmapRange(bitmap, range_begin, range_end) which returns new set with specified range (not include the range_end). #6314 (Zhichang Yu)
- Function geohashesInBox(longitude_min, latitude_min, longitude_max, latitude_max, precision) which creates array of precision-long strings of geohash-boxes covering provided area. #6127 (Vasily Nemkov)
- Implement support for INSERT query with Kafka tables. #6012 (Ivan)
- Added support for _partition and _timestamp virtual columns to Kafka engine. #6400 (Ivan)
- Possibility to remove sensitive data from query_log, server logs, process list with regexp-based rules. #5710 (filimonov)
- Experimental Feature 
- Input and output data format Template. It allows to specify custom format string for input and output. #4354 #6727 (tavplubix)
- Implementation of LIVE VIEW tables that were originally proposed in #2898, prepared in #3925, and then updated in #5541. See #5541 for detailed description. #5541 (vzakaznikov) #6425 (Nikolai Kochetov) #6656 (vzakaznikov) Note that LIVE VIEW feature may be removed in next versions.


### ClickHouse Release 19.15.2.2, 2019-10-01 
- Tiered storage: support to use multiple storage volumes for tables with MergeTree engine. It’s possible to store fresh data on SSD and automatically move old data to HDD. (example). #4918 (Igr) #6489 (alesapin)
- Add table function input for reading incoming data in INSERT SELECT query. #5450 (palasonic1) #6832 (Anton Popov)
- Add a sparse_hashed dictionary layout, that is functionally equivalent to the hashed layout, but is more memory efficient. It uses about twice as less memory at the cost of slower value retrieval. #6894 (Azat Khuzhin)
- Implement ability to define list of users for access to dictionaries. Only current connected database using. #6907 (Guillaume Tassery)
- Add LIMIT option to SHOW query. #6944 (Philipp Malkovsky)
- Add bitmapSubsetLimit(bitmap, range_start, limit) function, that returns subset of the smallest limit values in set that is no smaller than range_start. #6957 (Zhichang Yu)
- Add bitmapMin and bitmapMax functions. #6970 (Zhichang Yu)
- Add function repeat related to issue-6648 #6999 (flynn)
- Experimental Feature 
- Implement (in memory) Merge Join variant that does not change current pipeline. Result is partially sorted by merge key. Set partial_merge_join = 1 to use this feature. The Merge Join is still in development. #6940 (Artem Zuikov)
- Add S3 engine and table function. It is still in development (no authentication support yet). #5596 (Vladimir Chebotarev)


### ClickHouse Release 19.16.2.2, 2019-10-30 
- Add missing arity validation for count/counIf.#7095,#7298 (Vdimir)
- Remove legacy asterisk_left_columns_only setting (it was disabled by default).#7335 (Artem Zuikov)
- Format strings for Template data format are now specified in files.#7118 (tavplubix)
- Introduce uniqCombined64() to calculate cardinality greater than UINT_MAX.#7213,#7222 (Azat Khuzhin)
- Support Bloom filter indexes on Array columns.#6984 (achimbab)
- Add a function getMacro(name) that returns String with the value of corresponding <macros> from server configuration. #7240 (alexey-milovidov)
- Set two configuration options for a dictionary based on an HTTP source: credentials and http-headers. #7092 (Guillaume Tassery)
- Add a new ProfileEvent Merge that counts the number of launched background merges.#7093 (Mikhail Korotov)
- Add fullHostName function that returns a fully qualified domain name.#7263, #7291 (sundyli)
- Add function arraySplit and arrayReverseSplit which split an array by “cut off” conditions. They are useful in time sequence handling.#7294 (hcz)
- Add new functions that return the Array of all matched indices in multiMatch family of functions.#7299 (Danila Kutenin)
- Add a new database engine Lazy that is optimized for storing a large number of small -Log tables. #7171 (Nikita Vasilev)
- Add aggregate functions groupBitmapAnd, -Or, -Xor for bitmap columns. #7109 (Zhichang Yu)
- Add aggregate function combinators -OrNull and -OrDefault, which return null or default values when there is nothing to aggregate.#7331 (hcz)
- Introduce CustomSeparated data format that supports custom escaping and delimiter rules. #7118 (tavplubix)
- Support Redis as source of external dictionary. #4361 #6962 (comunodi, Anton Popov)


### ClickHouse Release 19.17.4.11, 2019-11-22¶
- Using column instead of AST to store scalar subquery results for better performance. Setting enable_scalar_subquery_optimization was added in 19.17 and it was enabled by default. It leads to errors like this during upgrade to 19.17.2 or 19.17.3 from previous versions. This setting was disabled by default in 19.17.4, to make possible upgrading from 19.16 and older versions without errors. #7392 (Amos Bird)
- Add the ability to create dictionaries with DDL queries. #7360 (alesapin)
- Make bloom_filter type of index supporting LowCardinality and Nullable #7363 #7561 (Nikolai Kochetov)
- Add function isValidJSON to check that passed string is a valid json. #5910 #7293 (Vdimir)
- Implement arrayCompact function #7328 (Memo)
- Created function hex for Decimal numbers. It works like hex(reinterpretAsString()), but does not delete last zero bytes. #7355 (Mikhail Korotov)
- Add arrayFill and arrayReverseFill functions, which replace elements by other elements in front/back of them in the array. #7380 (hcz)
- Add CRC32IEEE()/CRC64() support #7480 (Azat Khuzhin)
- Implement char function similar to one in mysql #7486 (sundyli)
- Add bitmapTransform function. It transforms an array of values in a bitmap to another array of values, the result is a new bitmap #7598 (Zhichang Yu)
- Implemented javaHashUTF16LE() function #7651 (achimbab)
- Add _shard_num virtual column for the Distributed engine #7624 (Azat Khuzhin)
- Support for processors (new query execution pipeline) in MergeTree. #7181 (Nikolai Kochetov)


## ClickHouse Release 20.*

### ClickHouse release v20.1.2.4, 2020-01-22¶
- Make the setting merge_tree_uniform_read_distribution obsolete. The server still recognizes this setting but it has no effect. #8308 (alexey-milovidov)
- Changed return type of the function greatCircleDistance to Float32 because now the result of calculation is Float32. #7993 (alexey-milovidov)
- Now it's expected that query parameters are represented in "escaped" format. For example, to pass string a<tab>b you have to write a\tb or a\<tab>b and respectively, a%5Ctb or a%5C%09b in URL. This is needed to add the possibility to pass NULL as \N. This fixes #7488. #8517 (alexey-milovidov)
- Enable use_minimalistic_part_header_in_zookeeper setting for ReplicatedMergeTree by default. This will significantly reduce amount of data stored in ZooKeeper. This setting is supported since version 19.1 and we already use it in production in multiple services without any issues for more than half a year. Disable this setting if you have a chance to downgrade to versions older than 19.1. #6850 (alexey-milovidov)
- Data skipping indices are production ready and enabled by default. The settings allow_experimental_data_skipping_indices, allow_experimental_cross_to_join_conversion and allow_experimental_multiple_joins_emulation are now obsolete and do nothing. #7974 (alexey-milovidov)
- Add new ANY JOIN logic for StorageJoin consistent with JOIN operation. To upgrade without changes in behaviour you need add SETTINGS any_join_distinct_right_table_keys = 1 to Engine Join tables metadata or recreate these tables after upgrade. #8400 (Artem Zuikov)
- Require server to be restarted to apply the changes in logging configuration. This is a temporary workaround to avoid the bug where the server logs to a deleted log file (see #8696). #8707 (Alexander Kuzmenkov)
- Added information about part paths to system.merges. #8043 (Vladimir Chebotarev)
- Add ability to execute SYSTEM RELOAD DICTIONARY query in ON CLUSTER mode. #8288 (Guillaume Tassery)
- Add ability to execute CREATE DICTIONARY queries in ON CLUSTER mode. #8163 (alesapin)
- Now user's profile in users.xml can inherit multiple profiles. #8343 (Mikhail f. Shiryaev)
- Added system.stack_trace table that allows to look at stack traces of all server threads. This is useful for developers to introspect server state. This fixes #7576. #8344 (alexey-milovidov)
- Add DateTime64 datatype with configurable sub-second precision. #7170 (Vasily Nemkov)
- Add table function clusterAllReplicas which allows to query all the nodes in the cluster. #8493 (kiran sunkari)
- Add aggregate function categoricalInformationValue which calculates the information value of a discrete feature. #8117 (hcz)
- Speed up parsing of data files in CSV, TSV and JSONEachRow format by doing it in parallel. #7780 (Alexander Kuzmenkov)
- Add function bankerRound which performs banker's rounding. #8112 (hcz)
- Support more languages in embedded dictionary for region names: 'ru', 'en', 'ua', 'uk', 'by', 'kz', 'tr', 'de', 'uz', 'lv', 'lt', 'et', 'pt', 'he', 'vi'. #8189 (alexey-milovidov)
- Improvements in consistency of ANY JOIN logic. Now t1 ANY LEFT JOIN t2 equals t2 ANY RIGHT JOIN t1. #7665 (Artem Zuikov)
- Add setting any_join_distinct_right_table_keys which enables old behaviour for ANY INNER JOIN. #7665 (Artem Zuikov)
- Add new SEMI and ANTI JOIN. Old ANY INNER JOIN behaviour now available as SEMI LEFT JOIN. #7665 (Artem Zuikov)
- Added Distributed format for File engine and file table function which allows to read from .bin files generated by asynchronous inserts into Distributed table. #8535 (Nikolai Kochetov)
- Add optional reset column argument for runningAccumulate which allows to reset aggregation results for each new key value. #8326 (Sergey Kononenko)
- Add ability to use ClickHouse as Prometheus endpoint. #7900 (vdimir)
- Add section <remote_url_allow_hosts> in config.xml which restricts allowed hosts for remote table engines and table functions URL, S3, HDFS. #7154 (Mikhail Korotov)
- Added function greatCircleAngle which calculates the distance on a sphere in degrees. #8105 (alexey-milovidov)
- Changed Earth radius to be consistent with H3 library. #8105 (alexey-milovidov)
- Added JSONCompactEachRow and JSONCompactEachRowWithNamesAndTypes formats for input and output. #7841 (Mikhail Korotov)
- Added feature for file-related table engines and table functions (File, S3, URL, HDFS) which allows to read and write gzip files based on additional engine parameter or file extension. #7840 (Andrey Bodrov)
- Added the randomASCII(length) function, generating a string with a random set of ASCII printable characters. #8401 (BayoNet)
- Added function JSONExtractArrayRaw which returns an array on unparsed json array elements from JSON string. #8081 (Oleg Matrokhin)
- Add arrayZip function which allows to combine multiple arrays of equal lengths into one array of tuples. #8149 (Winter Zhang)
- Add ability to move data between disks according to configured TTL-expressions for *MergeTree table engines family. #8140 (Vladimir Chebotarev)
- Added new aggregate function avgWeighted which allows to calculate weighted average. #7898 (Andrey Bodrov)
- Now parallel parsing is enabled by default for TSV, TSKV, CSV and JSONEachRow formats. #7894 (Nikita Mikhaylov)
- Add several geo functions from H3 library: h3GetResolution, h3EdgeAngle, h3EdgeLength, h3IsValid and h3kRing. #8034 (Konstantin Malanchev)
- Added support for brotli (br) compression in file-related storages and table functions. This fixes #8156. #8526 (alexey-milovidov)
- Add groupBit* functions for the SimpleAggregationFunction type. #8485 (Guillaume Tassery)

### ClickHouse release v20.1.6.30, 2020-03-05
- Add deduplicate_blocks_in_dependent_materialized_views option to control the behaviour of idempotent inserts into tables with materialized views. This new feature was added to the bugfix release by a special request from Altinity.#9070 (urykhy)


### ClickHouse release v20.3.2.1, 2020-03-12
- Fixed the issue file name too long when sending data for Distributed tables for a large number of replicas. Fixed the issue that replica credentials were exposed in the server log. The format of directory name on disk was changed to [shard{shard_index}[_replica{replica_index}]]. #8911 (Mikhail Korotov) After you upgrade to the new version, you will not be able to downgrade without manual intervention, because old server version does not recognize the new directory format. If you want to downgrade, you have to manually rename the corresponding directories to the old format. This change is relevant only if you have used asynchronous INSERTs to Distributed tables. In the version 20.3.3 we will introduce a setting that will allow you to enable the new format gradually.
- Changed the format of replication log entries for mutation commands. You have to wait for old mutations to process before installing the new version.
- Implement simple memory profiler that dumps stacktraces to system.trace_log every N bytes over soft allocation limit #8765 (Ivan) #9472 (alexey-milovidov) The column of system.trace_log was renamed from timer_type to trace_type. This will require changes in third-party performance analysis and flamegraph processing tools.
- Use OS thread id everywhere instead of internal thread number. This fixes #7477 Old clickhouse-client cannot receive logs that are send from the server when the setting send_logs_level is enabled, because the names and types of the structured log messages were changed. On the other hand, different server versions can send logs with different types to each other. When you don't use the send_logs_level setting, you should not care. #8954 (alexey-milovidov)
- Remove indexHint function #9542 (alexey-milovidov)
- Remove findClusterIndex, findClusterValue functions. This fixes #8641. If you were using these functions, send an email to clickhouse-feedback@yandex-team.com #9543 (alexey-milovidov)
- Now it's not allowed to create columns or add columns with SELECT subquery as default expression. #9481 (alesapin)
- Require aliases for subqueries in JOIN. #9274 (Artem Zuikov)
- Improved ALTER MODIFY/ADD queries logic. Now you cannot ADD column without type, MODIFY default expression does not change type of column and MODIFY type does not loose default expression value. Fixes #8669. #9227 (alesapin)
- Require server to be restarted to apply the changes in logging configuration. This is a temporary workaround to avoid the bug where the server logs to a deleted log file (see #8696). #8707 (Alexander Kuzmenkov)
- The setting experimental_use_processors is enabled by default. This setting enables usage of the new query pipeline. This is internal refactoring and we expect no visible changes. If you will see any issues, set it to back zero. #8768 (alexey-milovidov)
- Add Avro and AvroConfluent input/output formats #8571 (Andrew Onyshchuk) #8957 (Andrew Onyshchuk) #8717 (alexey-milovidov)
- Multi-threaded and non-blocking updates of expired keys in cache dictionaries (with optional permission to read old ones). #8303 (Nikita Mikhaylov)
- Add query ALTER ... MATERIALIZE TTL. It runs mutation that forces to remove expired data by TTL and recalculates meta-information about TTL in all parts. #8775 (Anton Popov)
- *Switch from HashJoin to MergeJoin (on disk) if needed #9082 (Artem Zuikov)*
- Added MOVE PARTITION command for ALTER TABLE #4729 #6168 (Guillaume Tassery)
- Reloading storage configuration from configuration file on the fly. #8594 (Vladimir Chebotarev)
- Allowed to change storage_policy to not less rich one. #8107 (Vladimir Chebotarev)
- Added support for globs/wildcards for S3 storage and table function. #8851 (Vladimir Chebotarev)
- Implement bitAnd, bitOr, bitXor, bitNot for FixedString(N) datatype. #9091 (Guillaume Tassery)
- Added function bitCount. This fixes #8702. #8708 (alexey-milovidov) #8749 (ikopylov)
- Add generateRandom table function to generate random rows with given schema. Allows to populate arbitrary test table with data. #8994 (Ilya Yatsishin)
- JSONEachRowFormat: support special case when objects enclosed in top-level array. #8860 (Kruglov Pavel)
- Now it's possible to create a column with DEFAULT expression which depends on a column with default ALIAS expression. #9489 (alesapin)
- Allow to specify --limit more than the source data size in clickhouse-obfuscator. The data will repeat itself with different random seed. #9155 (alexey-milovidov)
- Added groupArraySample function (similar to groupArray) with reservior sampling algorithm. #8286 (Amos Bird)
- Now you can monitor the size of update queue in cache/complex_key_cache dictionaries via system metrics. #9413 (Nikita Mikhaylov)
- Allow to use CRLF as a line separator in CSV output format with setting output_format_csv_crlf_end_of_line is set to 1 #8934 #8935 #8963 (Mikhail Korotov)
- Implement more functions of the H3 API: h3GetBaseCell, h3HexAreaM2, h3IndexesAreNeighbors, h3ToChildren, h3ToString and stringToH3 #8938 (Nico Mandery)
- New setting introduced: max_parser_depth to control maximum stack size and allow large complex queries. This fixes #6681 and #7668. #8647 (Maxim Smirnov)
- Add a setting force_optimize_skip_unused_shards setting to throw if skipping of unused shards is not possible #8805 (Azat Khuzhin)
- Allow to configure multiple disks/volumes for storing data for send in Distributed engine #8756 (Azat Khuzhin)
- Support storage policy (<tmp_policy>) for storing temporary data. #8750 (Azat Khuzhin)
- Added X-ClickHouse-Exception-Code HTTP header that is set if exception was thrown before sending data. This implements #4971. #8786 (Mikhail Korotov)
- Added function ifNotFinite. It is just a syntactic sugar: ifNotFinite(x, y) = isFinite(x) ? x : y. #8710 (alexey-milovidov)
- Added last_successful_update_time column in system.dictionaries table #9394 (Nikita Mikhaylov)
- Add blockSerializedSize function (size on disk without compression) #8952 (Azat Khuzhin)
- Add function moduloOrZero #9358 (hcz)
- Added system tables system.zeros and system.zeros_mt as well as tale functions zeros() and zeros_mt(). Tables (and table functions) contain single column with name zero and type UInt8. This column contains zeros. It is needed for test purposes as the fastest method to generate many rows. This fixes #6604 #9593 (Nikolai Kochetov)
- Add new compact format of parts in MergeTree-family tables in which all columns are stored in one file. It helps to increase performance of small and frequent inserts. The old format (one file per column) is now called wide. Data storing format is controlled by settings min_bytes_for_wide_part and min_rows_for_wide_part. #8290 (Anton Popov)
- Support for S3 storage for Log, TinyLog and StripeLog tables. #8862 (Pavel Kovalenko)

### ClickHouse release v20.3.6.40, 2020-04-16
- Added function isConstant. This function checks whether its argument is constant expression and returns 1 or 0. It is intended for development, debugging and demonstration purposes. #10198 (alexey-milovidov).

### ClickHouse release v20.3.11.97-lts 2020-06-10
- Now ClickHouse controls timeouts of dictionary sources on its side. Two new settings added to cache dictionary configuration: strict_max_lifetime_seconds, which is max_lifetime by default and query_wait_timeout_milliseconds, which is one minute by default. The first settings is also useful with allow_read_expired_keys settings (to forbid reading very expired keys). #10337 (Nikita Mikhaylov).


### ClickHouse release v20.4.2.9, 2020-05-12 
- System tables (e.g. system.query_log, system.trace_log, system.metric_log) are using compact data part format for parts smaller than 10 MiB in size. Compact data part format is supported since version 20.3. If you are going to downgrade to version less than 20.3, you should manually delete table data for system logs in /var/lib/clickhouse/data/system/.
- When string comparison involves FixedString and compared arguments are of different sizes, do comparison as if smaller string is padded to the length of the larger. This is intented for SQL compatibility if we imagine that FixedString data type corresponds to SQL CHAR. This closes #9272. #10363 (alexey-milovidov)
- Make SHOW CREATE TABLE multiline. Now it is more readable and more like MySQL. #10049 (Azat Khuzhin)
- Added a setting validate_polygons that is used in pointInPolygon function and enabled by default. #9857 (alexey-milovidov)
- Add support for secured connection from ClickHouse to Zookeeper #10184 (Konstantin Lebedev)
- Support custom HTTP handlers. See #5436 for description. #7572 (Winter Zhang)
- Add MessagePack Input/Output format. #9889 (Kruglov Pavel)
- Add Regexp input format. #9196 (Kruglov Pavel)
- Added output format Markdown for embedding tables in markdown documents. #10317 (Kruglov Pavel)
- Added support for custom settings section in dictionaries. Also fixes issue #2829. #10137 (Artem Streltsov)
- Added custom settings support in DDL-queries for CREATE DICTIONARY #10465 (Artem Streltsov)
- Add simple server-wide memory profiler that will collect allocation contexts when server memory usage becomes higher than the next allocation threshold. #10444 (alexey-milovidov)
- Add setting always_fetch_merged_part which restrict replica to merge parts by itself and always prefer dowloading from other replicas. #10379 (alesapin)
- Add function JSONExtractKeysAndValuesRaw which extracts raw data from JSON objects #10378 (hcz)
- Add memory usage from OS to system.asynchronous_metrics. #10361 (alexey-milovidov)
- Added generic variants for functions least and greatest. Now they work with arbitrary number of arguments of arbitrary types. This fixes #4767 #10318 (alexey-milovidov)
- Now ClickHouse controls timeouts of dictionary sources on its side. Two new settings added to cache dictionary configuration: strict_max_lifetime_seconds, which is max_lifetime by default, and query_wait_timeout_milliseconds, which is one minute by default. The first settings is also useful with allow_read_expired_keys settings (to forbid reading very expired keys). #10337 (Nikita Mikhaylov)
- Add log_queries_min_type to filter which entries will be written to query_log #10053 (Azat Khuzhin)
- Added function isConstant. This function checks whether its argument is constant expression and returns 1 or 0. It is intended for development, debugging and demonstration purposes. #10198 (alexey-milovidov)
- add joinGetOrNull to return NULL when key is missing instead of returning the default value. #10094 (Amos Bird)
- Consider NULL to be equal to NULL in IN operator, if the option transform_null_in is set. #10085 (achimbab)
- Add ALTER TABLE ... RENAME COLUMN for MergeTree table engines family. #9948 (alesapin)
- Support parallel distributed INSERT SELECT. #9759 (vxider)
- Add ability to query Distributed over Distributed (w/o distributed_group_by_no_merge) ... #9923 (Azat Khuzhin)
- Add function arrayReduceInRanges which aggregates array elements in given ranges. #9598 (hcz)
- Add Dictionary Status on prometheus exporter. #9622 (Guillaume Tassery)
- Add function arrayAUC #8698 (taiyang-li)
- Support DROP VIEW statement for better TPC-H compatibility. #9831 (Amos Bird)
- Add 'strict_order' option to windowFunnel() #9773 (achimbab)
- Support DATE and TIMESTAMP SQL operators, e.g. SELECT date '2001-01-01' #9691 (Artem Zuikov)


### ClickHouse release v20.5.2.7-stable 2020-07-02 
- Return non-Nullable result from COUNT(DISTINCT), and uniq aggregate functions family. If all passed values are NULL, return zero instead. This improves SQL compatibility. #11661 (alexey-milovidov).
- Added a check for the case when user-level setting is specified in a wrong place. User-level settings should be specified in users.xml inside <profile> section for specific user profile (or in <default> for default settings). The server won't start with exception message in log. This fixes #9051. If you want to skip the check, you can either move settings to the appropriate place or add <skip_check_for_incorrect_settings>1</skip_check_for_incorrect_settings> to config.xml. #11449 (alexey-milovidov).
- The setting input_format_with_names_use_header is enabled by default. It will affect parsing of input formats -WithNames and -WithNamesAndTypes. #10937 (alexey-milovidov).
- Remove experimental_use_processors setting. It is enabled by default. #10924 (Nikolai Kochetov).
- Update zstd to 1.4.4. It has some minor improvements in performance and compression ratio. If you run replicas with different versions of ClickHouse you may see reasonable error messages Data after merge is not byte-identical to data on another replicas. with explanation. These messages are Ok and you should not worry. This change is backward compatible but we list it here in changelog in case you will wonder about these messages. #10663 (alexey-milovidov).
- Added a check for meaningless codecs and a setting allow_suspicious_codecs to control this check. This closes #4966. #10645 (alexey-milovidov).
- Several Kafka setting changes their defaults. See #11388.
- When upgrading from versions older than 20.5, if rolling update is performed and cluster contains both versions 20.5 or greater and less than 20.5, if ClickHouse nodes with old versions are restarted and old version has been started up in presence of newer versions, it may lead to Part ... intersects previous part errors. To prevent this error, first install newer clickhouse-server packages on all cluster nodes and then do restarts (so, when clickhouse-server is restarted, it will start up with the new version).
- TTL DELETE WHERE and TTL GROUP BY for automatic data coarsening and rollup in tables. #10537 (expl0si0nn).
- Implementation of PostgreSQL wire protocol. #10242 (Movses).
- Added system tables for users, roles, grants, settings profiles, quotas, row policies; added commands SHOW USER, SHOW [CURRENT|ENABLED] ROLES, SHOW SETTINGS PROFILES. #10387 (Vitaly Baranov).
- Support writes in ODBC Table function #10554 (ageraab). #10901 (tavplubix).
- Add query performance metrics based on Linux perf_events (these metrics are calculated with hardware CPU counters and OS counters). It is optional and requires CAP_SYS_ADMIN to be set on clickhouse binary. #9545 Andrey Skobtsov. #11226 (Alexander Kuzmenkov).
- Now support NULL and NOT NULL modifiers for data types in CREATE query. #11057 (Павел Потемкин).
- Add ArrowStream input and output format. #11088 (hcz).
- Support Cassandra as external dictionary source. #4978 (favstovol).
- Added a new layout direct which loads all the data directly from the source for each query, without storing or caching data. #10622 (Artem Streltsov).
- Added new complex_key_direct layout to dictionaries, that does not store anything locally during query execution. #10850 (Artem Streltsov).
- Added support for MySQL style global variables syntax (stub). This is needed for compatibility of MySQL protocol. #11832 (alexey-milovidov).
- Added syntax highligting to clickhouse-client using replxx. #11422 (Tagir Kuskarov).
- minMap and maxMap functions were added. #11603 (Ildus Kurbangaliev).
- Add the system.asynchronous_metric_log table that logs historical metrics from system.asynchronous_metrics. #11588 (Alexander Kuzmenkov).
- Add functions extractAllGroupsHorizontal(haystack, re) and extractAllGroupsVertical(haystack, re). #11554 (Vasily Nemkov).
- *Add SHOW CLUSTER(S) queries. #11467 (hexiaoting).*
- Add netloc function for extracting network location, similar to urlparse(url), netloc in python. #11356 (Guillaume Tassery).
- Add 2 more virtual columns for engine=Kafka to access message headers. #11283 (filimonov).
- Add _timestamp_ms virtual column for Kafka engine (type is Nullable(DateTime64(3))). #11260 (filimonov).
- Add function randomFixedString. #10866 (Andrei Nekrashevich).
- Add function fuzzBits that randomly flips bits in a string with given probability. #11237 (Andrei Nekrashevich).
- Allow comparison of numbers with constant string in comparison operators, IN and VALUES sections. #11647 (alexey-milovidov).
- Add round_robin load_balancing mode. #11645 (Azat Khuzhin).
- Add cast_keep_nullable setting. If set CAST(something_nullable AS Type) return Nullable(Type). #11733 (Artem Zuikov).
- Added column position to system.columns table and column_position to system.parts_columns table. It contains ordinal position of a column in a table starting with 1. This closes #7744. #11655 (alexey-milovidov).
- ON CLUSTER support for SYSTEM {FLUSH DISTRIBUTED,STOP/START DISTRIBUTED SEND}. #11415 (Azat Khuzhin).
- Add system.distribution_queue table. #11394 (Azat Khuzhin).
- Support for all format settings in Kafka, expose some setting on table level, adjust the defaults for better performance. #11388 (filimonov).
- Add port function (to extract port from URL). #11120 (Azat Khuzhin).
- Now dictGet* functions accept table names. #11050 (Vitaly Baranov).
- The clickhouse-format tool is now able to format multiple queries when the -n argument is used. #10852 (Darío).
- Possibility to configure proxy-resolver for DiskS3. #10744 (Pavel Kovalenko).
- Make pointInPolygon work with non-constant polygon. PointInPolygon now can take Array(Array(Tuple(..., ...))) as second argument, array of polygon and holes. #10623 (Alexey Ilyukhov) #11421 (Alexey Ilyukhov).
- Added move_ttl_info to system.parts in order to provide introspection of move TTL functionality. #10591 (Vladimir Chebotarev).
- Possibility to work with S3 through proxies. #10576 (Pavel Kovalenko).
- Add NCHAR and NVARCHAR synonims for data types. #11025 (alexey-milovidov).
- Resolved #7224: added FailedQuery, FailedSelectQuery and FailedInsertQuery metrics to system.events table. #11151 (Nikita Orlov).
- Add more jemalloc statistics to system.asynchronous_metrics, and ensure that we see up-to-date values for them. #11748 (Alexander Kuzmenkov).
- Allow to specify default S3 credentials and custom auth headers. #11134 (Grigory Pervakov).
- Added new functions to import/export DateTime64 as Int64 with various precision: to-/fromUnixTimestamp64Milli/-Micro/-Nano. #10923 (Vasily Nemkov).
- Allow specifying mongodb:// URI for MongoDB dictionaries. #10915 (Alexander Kuzmenkov).
- OFFSET keyword can now be used without an affiliated LIMIT clause. #10802 (Guillaume Tassery).
- Added system.licenses table. This table contains licenses of third-party libraries that are located in contrib directory. This closes #2890. #10795 (alexey-milovidov).
- New function function toStartOfSecond(DateTime64) -> DateTime64 that nullifies sub-second part of DateTime64 value. #10722 (Vasily Nemkov).
- Add new input format JSONAsString that accepts a sequence of JSON objects separated by newlines, spaces and/or commas. #10607 (Kruglov Pavel).
- Allowed to profile memory with finer granularity steps than 4 MiB. Added sampling memory profiler to capture random allocations/deallocations. #10598 (alexey-milovidov).
- SimpleAggregateFunction now also supports sumMap. #10000 (Ildus Kurbangaliev).
- Support ALTER RENAME COLUMN for the distributed table engine. Continuation of #10727. Fixes #10747. #10887 (alesapin).


### ClickHouse release v20.6.3.28-stable
- When upgrading from versions older than 20.5, if rolling update is performed and cluster contains both versions 20.5 or greater and less than 20.5, if ClickHouse nodes with old versions are restarted and old version has been started up in presence of newer versions, it may lead to Part ... intersects previous part errors. To prevent this error, first install newer clickhouse-server packages on all cluster nodes and then do restarts (so, when clickhouse-server is restarted, it will start up with the new version).
- Added an initial implementation of EXPLAIN query. Syntax: EXPLAIN SELECT .... This fixes #1118. #11873 (Nikolai Kochetov).
- Added storage RabbitMQ. #11069 (Kseniia Sumarokova).
- Implemented PostgreSQL-like ILIKE operator for #11710. #12125 (Mike).
- Supported RIGHT and FULL JOIN with SET join_algorithm = 'partial_merge'. Only ALL strictness is allowed (ANY, SEMI, ANTI, ASOF are not). #12118 (Artem Zuikov).
- Added a function initializeAggregation to initialize an aggregation based on a single value. #12109 (Guillaume Tassery).
- Supported ALTER TABLE ... [ADD|MODIFY] COLUMN ... FIRST #4006. #12073 (Winter Zhang).
- Added function parseDateTimeBestEffortUS. #12028 (flynn).
- Support format ORC for output (was supported only for input). #11662 (Kruglov Pavel).


### ClickHouse release v20.7.2.30-stable, 2020-08-31
- Function modulo (operator %) with at least one floating point number as argument will calculate remainder of division directly on floating point numbers without converting both arguments to integers. It makes behaviour compatible with most of DBMS. This also applicable for Date and DateTime data types. Added alias mod. This closes #7323. #12585 (alexey-milovidov).
- Deprecate special printing of zero Date/DateTime values as 0000-00-00 and 0000-00-00 00:00:00. #12442 (alexey-milovidov).
- The function groupArrayMoving* was not working for distributed queries. It's result was calculated within incorrect data type (without promotion to the largest type). The function groupArrayMovingAvg was returning integer number that was inconsistent with the avg function. This fixes #12568. #12622 (alexey-milovidov).
- Add sanity check for MergeTree settings. If the settings are incorrect, the server will refuse to start or to create a table, printing detailed explanation to the user. #13153 (alexey-milovidov).
- Protect from the cases when user may set background_pool_size to value lower than number_of_free_entries_in_pool_to_execute_mutation or number_of_free_entries_in_pool_to_lower_max_size_of_merge. In these cases ALTERs won't work or the maximum size of merge will be too limited. It will throw exception explaining what to do. This closes #10897. #12728 (alexey-milovidov).
- When upgrading from versions older than 20.5, if rolling update is performed and cluster contains both versions 20.5 or greater and less than 20.5, if ClickHouse nodes with old versions are restarted and old version has been started up in presence of newer versions, it may lead to Part ... intersects previous part errors. To prevent this error, first install newer clickhouse-server packages on all cluster nodes and then do restarts (so, when clickhouse-server is restarted, it will start up with the new version).
- Polygon dictionary type that provides efficient "reverse geocoding" lookups - to find the region by coordinates in a dictionary of many polygons (world map). It is using carefully optimized algorithm with recursive grids to maintain low CPU and memory usage. #9278 (achulkov2).
- Added support of LDAP authentication for preconfigured users ("Simple Bind" method). #11234 (Denis Glazachev).
- Introduce setting alter_partition_verbose_result which outputs information about touched parts for some types of ALTER TABLE ... PARTITION ... queries (currently ATTACH and FREEZE). Closes #8076. #13017 (alesapin).
- Add bayesAB function for bayesian-ab-testing. #12327 (achimbab).
- Added system.crash_log table into which stack traces for fatal errors are collected. This table should be empty. #12316 (alexey-milovidov).
- Added http headers X-ClickHouse-Database and X-ClickHouse-Format which may be used to set default database and output format. #12981 (hcz).
- Add minMap and maxMap functions support to SimpleAggregateFunction. #12662 (Ildus Kurbangaliev).
- Add setting allow_non_metadata_alters which restricts to execute ALTER queries which modify data on disk. Disabled be default. Closes #11547. #12635 (alesapin).
- A function formatRow is added to support turning arbitrary expressions into a string via given format. It's useful for manipulating SQL outputs and is quite versatile combined with the columns function. #12574 (Amos Bird).
- Add FROM_UNIXTIME function for compatibility with MySQL, related to 12149. #12484 (flynn).
- Allow Nullable types as keys in MergeTree tables if allow_nullable_key table setting is enabled. Closes #5319. #12433 (Amos Bird).
- Integration with COS. #12386 (fastio).
- Add mapAdd and mapSubtract functions for adding/subtracting key-mapped values. #11735 (Ildus Kurbangaliev).


### ClickHouse release v20.8.2.3-stable, 2020-09-08
- *Now OPTIMIZE FINAL query does not recalculate TTL for parts that were added before TTL was created. Use ALTER TABLE ... MATERIALIZE TTL once to calculate them, after that OPTIMIZE FINAL will evaluate TTL's properly. This behavior never worked for replicated tables. #14220 (alesapin).*
- Extend parallel_distributed_insert_select setting, adding an option to run INSERT into local table. The setting changes type from Bool to UInt64, so the values false and true are no longer supported. If you have these values in server configuration, the server will not start. Please replace them with 0 and 1, respectively. #14060 (Azat Khuzhin).
- Remove support for the ODBCDriver input/output format. This was a deprecated format once used for communication with the ClickHouse ODBC driver, now long superseded by the ODBCDriver2 format. Resolves #13629. #13847 (hexiaoting).
- When upgrading from versions older than 20.5, if rolling update is performed and cluster contains both versions 20.5 or greater and less than 20.5, if ClickHouse nodes with old versions are restarted and old version has been started up in presence of newer versions, it may lead to Part ... intersects previous part errors. To prevent this error, first install newer clickhouse-server packages on all cluster nodes and then do restarts (so, when clickhouse-server is restarted, it will start up with the new version).
- Add the ability to specify Default compression codec for columns that correspond to settings specified in config.xml. Implements: #9074. #14049 (alesapin).
- Support Kerberos authentication in Kafka, using krb5 and cyrus-sasl libraries. #12771 (Ilya Golshtein).
- Add function normalizeQuery that replaces literals, sequences of literals and complex aliases with placeholders. Add function normalizedQueryHash that returns identical 64bit hash values for similar queries. It helps to analyze query log. This closes #11271. #13816 (alexey-milovidov).
- Add time_zones table. #13880 (Bharat Nallan).
- Add function defaultValueOfTypeName that returns the default value for a given type. #13877 (hcz).
- Add countDigits(x) function that count number of decimal digits in integer or decimal column. Add isDecimalOverflow(d, [p]) function that checks if the value in Decimal column is out of its (or specified) precision. #14151 (Artem Zuikov).
- Add quantileExactLow and quantileExactHigh implementations with respective aliases for medianExactLow and medianExactHigh. #13818 (Bharat Nallan).
- Added date_trunc function that truncates a date/time value to a specified date/time part. #13888 (Vladimir Golovchenko).
- Add new optional section <user_directories> to the main config. #13425 (Vitaly Baranov).
- Add ALTER SAMPLE BY statement that allows to change table sample clause. #13280 (Amos Bird).
- Function position now supports optional start_pos argument. #13237 (vdimir).


### ClickHouse release v20.9.2.20, 2020-09-22 
- When upgrading from versions older than 20.5, if rolling update is performed and cluster contains both versions 20.5 or greater and less than 20.5, if ClickHouse nodes with old versions are restarted and old version has been started up in presence of newer versions, it may lead to Part ... intersects previous part errors. To prevent this error, first install newer clickhouse-server packages on all cluster nodes and then do restarts (so, when clickhouse-server is restarted, it will start up with the new version).
- Added column transformers EXCEPT, REPLACE, APPLY, which can be applied to the list of selected columns (after * or COLUMNS(...)). For example, you can write SELECT * EXCEPT(URL) REPLACE(number + 1 AS number). Another example: select * apply(length) apply(max) from wide_string_table to find out the maxium length of all string columns. #14233 (Amos Bird).
- Added an aggregate function rankCorr which computes a rank correlation coefficient. #11769 (antikvist) #14411 (Nikita Mikhaylov).
- Added table function view which turns a subquery into a table object. This helps passing queries around. For instance, it can be used in remote/cluster table functions. #12567 (Amos Bird).


### ClickHouse release v20.10.3.30, 2020-10-28
- Make multiple_joins_rewriter_version obsolete. Remove first version of joins rewriter. #15472 (Artem Zuikov).
- Change default value of format_regexp_escaping_rule setting (it's related to Regexp format) to Raw (it means - read whole subpattern as a value) to make the behaviour more like to what users expect. #15426 (alexey-milovidov).
- Add support for nested multiline comments /* comment /* comment */ */ in SQL. This conforms to the SQL standard. #14655 (alexey-milovidov).
- Added MergeTree settings (max_replicated_merges_with_ttl_in_queue and max_number_of_merges_with_ttl_in_pool) to control the number of merges with TTL in the background pool and replicated queue. This change breaks compatibility with older versions only if you use delete TTL. Otherwise, replication will stay compatible. You can avoid incompatibility issues if you update all shard replicas at once or execute SYSTEM STOP TTL MERGES until you finish the update of all replicas. If you'll get an incompatible entry in the replication queue, first of all, execute SYSTEM STOP TTL MERGES and after ALTER TABLE ... DETACH PARTITION ... the partition where incompatible TTL merge was assigned. Attach it back on a single replica. #14490 (alesapin).
- When upgrading from versions older than 20.5, if rolling update is performed and cluster contains both versions 20.5 or greater and less than 20.5, if ClickHouse nodes with old versions are restarted and old version has been started up in presence of newer versions, it may lead to Part ... intersects previous part errors. To prevent this error, first install newer clickhouse-server packages on all cluster nodes and then do restarts (so, when clickhouse-server is restarted, it will start up with the new version).
- Background data recompression. Add the ability to specify TTL ... RECOMPRESS codec_name for MergeTree table engines family. #14494 (alesapin).
- Add parallel quorum inserts. This closes #15601. #15601 (Latysheva Alexandra).
- Settings for additional enforcement of data durability. Useful for non-replicated setups. #11948 (Anton Popov).
- When duplicate block is written to replica where it does not exist locally (has not been fetched from replicas), don't ignore it and write locally to achieve the same effect as if it was successfully replicated. #11684 (alexey-milovidov).
- Now we support WITH <identifier> AS (subquery) ... to introduce named subqueries in the query context. This closes #2416. This closes #4967. #14771 (Amos Bird).
- Introduce enable_global_with_statement setting which propagates the first select's WITH statements to other select queries at the same level, and makes aliases in WITH statements visible to subqueries. #15451 (Amos Bird).
- Secure inter-cluster query execution (with initial_user as current query user). #13156 (Azat Khuzhin). #15551 (Azat Khuzhin).
- Add the ability to remove column properties and table TTLs. Introduced queries ALTER TABLE MODIFY COLUMN col_name REMOVE what_to_remove and ALTER TABLE REMOVE TTL. Both operations are lightweight and executed at the metadata level. #14742 (alesapin).
- Added format RawBLOB. It is intended for input or output a single value without any escaping and delimiters. This closes #15349. #15364 (alexey-milovidov).
- Add the reinterpretAsUUID function that allows to convert a big-endian byte string to UUID. #15480 (Alexander Kuzmenkov).
- Implement force_data_skipping_indices setting. #15642 (Azat Khuzhin).
- Add a setting output_format_pretty_row_numbers to numerate the result in Pretty formats. This closes #15350. #15443 (flynn).
- Added query obfuscation tool. It allows to share more queries for better testing. This closes #15268. #15321 (alexey-milovidov).
- Add table function null('structure'). #14797 (vxider).
- Added formatReadableQuantity function. It is useful for reading big numbers by human. #14725 (Artem Hnilov).
- Add format LineAsString that accepts a sequence of lines separated by newlines, every line is parsed as a whole as a single String field. #14703 (Nikita Mikhaylov), #13846 (hexiaoting).
- Add JSONStrings format which output data in arrays of strings. #14333 (hcz).
- Add support for "Raw" column format for Regexp format. It allows to simply extract subpatterns as a whole without any escaping rules. #15363 (alexey-milovidov).
- Allow configurable NULL representation for TSV output format. It is controlled by the setting output_format_tsv_null_representation which is \N by default. This closes #9375. Note that the setting only controls output format and \N is the only supported NULL representation for TSV input format. #14586 (Kruglov Pavel).
- Support Decimal data type for MaterializeMySQL. MaterializeMySQL is an experimental feature. #14535 (Winter Zhang).
- Add new feature: SHOW DATABASES LIKE 'xxx'. #14521 (hexiaoting).
- Added a script to import (arbitrary) git repository to ClickHouse as a sample dataset. #14471 (alexey-milovidov).
- Now insert statements can have asterisk (or variants) with column transformers in the column list. #14453 (Amos Bird).
- New query complexity limit settings max_rows_to_read_leaf, max_bytes_to_read_leaf for distributed queries to limit max rows/bytes read on the leaf nodes. Limit is applied for local reads only, excluding the final merge stage on the root node. #14221 (Roman Khavronenko).
- Allow user to specify settings for ReplicatedMergeTree* storage in <replicated_merge_tree> section of config file. It works similarly to <merge_tree> section. For ReplicatedMergeTree* storages settings from <merge_tree> and <replicated_merge_tree> are applied together, but settings from <replicated_merge_tree> has higher priority. Added system.replicated_merge_tree_settings table. #13573 (Amos Bird).
- Add mapPopulateSeries function. #13166 (Ildus Kurbangaliev).
- Supporting MySQL types: decimal (as ClickHouse Decimal) and datetime with sub-second precision (as DateTime64). #11512 (Vasily Nemkov).
- Introduce event_time_microseconds field to system.text_log, system.trace_log, system.query_log and system.query_thread_log tables. #14760 (Bharat Nallan).
- Add event_time_microseconds to system.asynchronous_metric_log & system.metric_log tables. #14514 (Bharat Nallan).
- Add query_start_time_microseconds field to system.query_log & system.query_thread_log tables. #14252 (Bharat Nallan).


### ClickHouse release v20.11.2.1, 2020-11-11
- If some profile was specified in distributed_ddl config section, then this profile could overwrite settings of default profile on server startup. It's fixed, now settings of distributed DDL queries should not affect global server settings. #16635 (tavplubix).
- Restrict to use of non-comparable data types (like AggregateFunction) in keys (Sorting key, Primary key, Partition key, and so on). #16601 (alesapin).
- Remove ANALYZE and AST queries, and make the setting enable_debug_queries obsolete since now it is the part of full featured EXPLAIN query. #16536 (Ivan).
- Aggregate functions boundingRatio, rankCorr, retention, timeSeriesGroupSum, timeSeriesGroupRateSum, windowFunnel were erroneously made case-insensitive. Now their names are made case sensitive as designed. Only functions that are specified in SQL standard or made for compatibility with other DBMS or functions similar to those should be case-insensitive. #16407 (alexey-milovidov).
- Make rankCorr function return nan on insufficient data #16124. #16135 (hexiaoting).
- When upgrading from versions older than 20.5, if rolling update is performed and cluster contains both versions 20.5 or greater and less than 20.5, if ClickHouse nodes with old versions are restarted and old version has been started up in presence of newer versions, it may lead to Part ... intersects previous part errors. To prevent this error, first install newer clickhouse-server packages on all cluster nodes and then do restarts (so, when clickhouse-server is restarted, it will start up with the new version).
- Added support of LDAP as a user directory for locally non-existent users. #12736 (Denis Glazachev).
- Add system.replicated_fetches table which shows currently running background fetches. #16428 (alesapin).
- Added setting date_time_output_format. #15845 (Maksim Kita).
- Added minimal web UI to ClickHouse. #16158 (alexey-milovidov).
- Allows to read/write Single protobuf message at once (w/o length-delimiters). #15199 (filimonov).
- Added initial OpenTelemetry support. ClickHouse now accepts OpenTelemetry traceparent headers over Native and HTTP protocols, and passes them downstream in some cases. The trace spans for executed queries are saved into the system.opentelemetry_span_log table. #14195 (Alexander Kuzmenkov).
- Allow specify primary key in column list of CREATE TABLE query. This is needed for compatibility with other SQL dialects. #15823 (Maksim Kita).
- Implement OFFSET offset_row_count {ROW | ROWS} FETCH {FIRST | NEXT} fetch_row_count {ROW | ROWS} {ONLY | WITH TIES} in SELECT query with ORDER BY. This is the SQL-standard way to specify LIMIT. #15855 (hexiaoting).
- errorCodeToName function - return variable name of the error (useful for analyzing query_log and similar). system.errors table - shows how many times errors has been happened (respects system_events_show_zero_values). #16438 (Azat Khuzhin).
- Added function untuple which is a special function which can introduce new columns to the SELECT list by expanding a named tuple. #16242 (Nikolai Kochetov, Amos Bird).
- Now we can provide identifiers via query parameters. And these parameters can be used as table objects or columns. #16594 (Amos Bird).
- Added big integers (UInt256, Int128, Int256) and UUID data types support for MergeTree BloomFilter index. Big integers is an experimental feature. #16642 (Maksim Kita).
- Add farmFingerprint64 function (non-cryptographic string hashing). #16570 (Jacob Hayes).
- Add log_queries_min_query_duration_ms, only queries slower than the value of this setting will go to query_log/query_thread_log (i.e. something like slow_query_log in mysql). #16529 (Azat Khuzhin).
- Ability to create a docker image on the top of Alpine. Uses precompiled binary and glibc components from ubuntu 20.04. #16479 (filimonov).
- Added toUUIDOrNull, toUUIDOrZero cast functions. #16337 (Maksim Kita).
- Add max_concurrent_queries_for_all_users setting, see #6636 for use cases. #16154 (nvartolomei).
- Add a new option print_query_id to clickhouse-client. It helps generate arbitrary strings with the current query id generated by the client. Also print query id in clickhouse-client by default. #15809 (Amos Bird).
- Add tid and logTrace functions. This closes #9434. #15803 (flynn).
- Add function formatReadableTimeDelta that format time delta to human readable string ... #15497 (Filipe Caixeta).
- Added disable_merges option for volumes in multi-disk configuration. #13956 (Vladimir Chebotarev).


### ClickHouse release v20.12.3.3-stable, 2020-12-13 
- Enable use_compact_format_in_distributed_parts_names by default (see the documentation for the reference). #16728 (Azat Khuzhin).
- Accept user settings related to file formats (e.g. format_csv_delimiter) in the SETTINGS clause when creating a table that uses File engine, and use these settings in all INSERTs and SELECTs. The file format settings changed in the current user session, or in the SETTINGS clause of a DML query itself, no longer affect the query. #16591 (Alexander Kuzmenkov).
- add *.xz compression/decompression support.It enables using *.xz in file() function. This closes #8828. #16578 (Abi Palagashvili).
- Introduce the query ALTER TABLE ... DROP|DETACH PART 'part_name'. #15511 (nvartolomei).
- Added new ALTER UPDATE/DELETE IN PARTITION syntax. #13403 (Vladimir Chebotarev).
- Allow formatting named tuples as JSON objects when using JSON input/output formats, controlled by the output_format_json_named_tuples_as_objects setting, disabled by default. #17175 (Alexander Kuzmenkov).
- Add a possibility to input enum value as it's id in TSV and CSV formats by default. #16834 (Kruglov Pavel).
- Add COLLATE support for Nullable, LowCardinality, Array and Tuple, where nested type is String. Also refactor the code associated with collations in ColumnString.cpp. #16273 (Kruglov Pavel).
- New tcpPort function returns TCP port listened by this server. #17134 (Ivan).
- Add new math functions: acosh, asinh, atan2, atanh, cosh, hypot, log1p, sinh. #16636 (Konstantin Malanchev).
- Possibility to distribute the merges between different replicas. Introduces the execute_merges_on_single_replica_time_threshold mergetree setting. #16424 (filimonov).
- Add setting aggregate_functions_null_for_empty for SQL standard compatibility. This option will rewrite all aggregate functions in a query, adding -OrNull suffix to them. Implements 10273. #16123 (flynn).
- Updated DateTime, DateTime64 parsing to accept string Date literal format. #16040 (Maksim Kita).
- Make it possible to change the path to history file in clickhouse-client using the --history_file parameter. #15960 (Maksim Kita).

## ClickHouse release 21.*
### ClickHouse release v21.1.2.15-stable 2021-01-18 
- The setting input_format_null_as_default is enabled by default. #17525 (alexey-milovidov).
- Check settings constraints for profile settings from config. Server will fail to start if users.xml contain settings that do not meet corresponding constraints. #18486 (tavplubix).
- Restrict ALTER MODIFY SETTING from changing storage settings that affects data parts (write_final_mark and enable_mixed_granularity_parts). #18306 (Amos Bird).
- Set insert_quorum_parallel to 1 by default. It is significantly more convenient to use than "sequential" quorum inserts. But if you rely to sequential consistency, you should set the setting back to zero. #17567 (alexey-milovidov).
- Remove sumburConsistentHash function. This closes #18120. #18656 (alexey-milovidov).
- Removed aggregate functions timeSeriesGroupSum, timeSeriesGroupRateSum because a friend of mine said they never worked. This fixes #16869. If you have luck using these functions, write a email to clickhouse-feedback@yandex-team.com. #17423 (alexey-milovidov).
- Prohibit toUnixTimestamp(Date()) (before it just returns UInt16 representation of Date). #17376 (Azat Khuzhin).
- Allow using extended integer types (Int128, Int256, UInt256) in avg and avgWeighted functions. Also allow using different types (integer, decimal, floating point) for value and for weight in avgWeighted function. This is a backward-incompatible change: now the avg and avgWeighted functions always return Float64 (as documented). Before this change the return type for Decimal arguments was also Decimal. #15419 (Mike).
- Expression toUUID(N) no longer works. Replace with toUUID('00000000-0000-0000-0000-000000000000'). This change is motivated by non-obvious results of toUUID(N) where N is non zero.
- SSL Certificates with incorrect "key usage" are rejected. In previous versions they are used to work. See #19262.
- incl references to substitutions file (/etc/metrika.xml) were removed from the default config (<remote_servers>, <zookeeper>, <macros>, <compression>, <networks>). If you were using substitutions file and were relying on those implicit references, you should put them back manually and explicitly by adding corresponding sections with incl="..." attributes before the update. See #18740 (alexey-milovidov).
- Implement gRPC protocol in ClickHouse. #15111 (Vitaly Baranov).
- Allow to use multiple zookeeper clusters. #17070 (fastio).
- Implemented REPLACE TABLE and CREATE OR REPLACE TABLE queries. #18521 (tavplubix).
- Implement UNION DISTINCT and treat the plain UNION clause as UNION DISTINCT by default. Add a setting union_default_mode that allows to treat it as UNION ALL or require explicit mode specification. #16338 (flynn).
- Added function accurateCastOrNull. This closes #10290. Add type conversions in x IN (subquery) expressions. This closes #10266. #16724 (Maksim Kita).
- IP Dictionary supports IPv4 / IPv6 types directly. #17571 (vdimir).
- IP Dictionary supports key fetching. Resolves #18241. #18480 (vdimir).
- Add *.zst compression/decompression support for data import and export. It enables using *.zst in file() function and Content-encoding: zstd in HTTP client. This closes #16791 . #17144 (Abi Palagashvili).
- Added mannWitneyUTest, studentTTest and welchTTest aggregate functions. Refactored rankCorr a bit. #16883 (Nikita Mikhaylov).
- Add functions countMatches/countMatchesCaseInsensitive. #17459 (Azat Khuzhin).
- Implement countSubstrings()/countSubstringsCaseInsensitive()/countSubstringsCaseInsensitiveUTF8() (Count the number of substring occurrences). #17347 (Azat Khuzhin).
- Add information about used databases, tables and columns in system.query_log. Add query_kind and normalized_query_hash fields. #17726 (Amos Bird).
- Add a setting optimize_on_insert. When enabled, do the same transformation for INSERTed block of data as if merge was done on this block (e.g. Replacing, Collapsing, Aggregating...). This setting is enabled by default. This can influence Materialized View and MaterializeMySQL behaviour (see detailed description). This closes #10683. #16954 (Kruglov Pavel).
- Kerberos Authenticaiton for HDFS. #16621 (Ilya Golshtein).
- Support SHOW SETTINGS statement to show parameters in system.settings. SHOW CHANGED SETTINGS and LIKE/ILIKE clause are also supported. #18056 (Jianmei Zhang).
- Function position now supports POSITION(needle IN haystack) synax for SQL compatibility. This closes #18701. ... #18779 (Jianmei Zhang).
- Now we have a new storage setting max_partitions_to_read for tables in the MergeTree family. It limits the max number of partitions that can be accessed in one query. A user setting force_max_partition_limit is also added to enforce this constraint. #18712 (Amos Bird).
- Add query_id column to system.part_log for inserted parts. Closes #10097. #18644 (flynn).
- Allow create table as select with columns specification. Example CREATE TABLE t1 (x String) ENGINE = Memory AS SELECT 1;. #18060 (Maksim Kita).
- Added arrayMin, arrayMax, arrayAvg aggregation functions. #18032 (Maksim Kita).
- Implemented ATTACH TABLE name FROM 'path/to/data/' (col1 Type1, ... query. It creates new table with provided structure and attaches table data from provided directory in user_files. #17903 (tavplubix).
- Add mutation support for StorageMemory. This closes #9117. #15127 (flynn).
- Support syntax EXISTS DATABASE name. #18458 (Du Chuan).
- Support builtin function isIPv4String && isIPv6String like MySQL. #18349 (Du Chuan).
- Add a new setting insert_distributed_one_random_shard = 1 to allow insertion into multi-sharded distributed table without any distributed key. #18294 (Amos Bird).
- Add settings min_compress_block_size and max_compress_block_size to MergeTreeSettings, which have higher priority than the global settings and take effect when they are set. close 13890. #17867 (flynn).
- Add support for 64bit roaring bitmaps. #17858 (Andy Yang).
- Extended OPTIMIZE ... DEDUPLICATE syntax to allow explicit (or implicit with asterisk/column transformers) list of columns to check for duplicates on. ... #17846 (Vasily Nemkov).
- Added functions toModifiedJulianDay, fromModifiedJulianDay, toModifiedJulianDayOrNull, and fromModifiedJulianDayOrNull. These functions convert between Proleptic Gregorian calendar date and Modified Julian Day number. #17750 (PHO).
- Add ability to use custom TLD list: added functions firstSignificantSubdomainCustom, cutToFirstSignificantSubdomainCustom. #17748 (Azat Khuzhin).
- Add support for PROXYv1 protocol to wrap native TCP interface. Allow quotas to be keyed by proxy-forwarded IP address (applied for PROXYv1 address and for X-Forwarded-For from HTTP interface). This is useful when you provide access to ClickHouse only via trusted proxy (e.g. CloudFlare) but want to account user resources by their original IP addresses. This fixes #17268. #17707 (alexey-milovidov).
- Now clickhouse-client supports opening EDITOR to edit commands. Alt-Shift-E. #17665 (Amos Bird).
- Add function encodeXMLComponent to escape characters to place string into XML text node or attribute. #17659 (nauta).
- Introduce DETACH TABLE/VIEW ... PERMANENTLY syntax, so that after restarting the table does not reappear back automatically on restart (only by explicit request). The table can still be attached back using the short syntax ATTACH TABLE. Implements #5555. Fixes #13850. #17642 (filimonov).
- Add asynchronous metrics on total amount of rows, bytes and parts in MergeTree tables. This fix #11714. #17639 (flynn).
- Add settings limit and offset for out-of-SQL pagination: #16176 They are useful for building APIs. These two settings will affect SELECT query as if it is added like select * from (your_original_select_query) t limit xxx offset xxx;. #17633 (hexiaoting).
- Provide a new aggregator combinator : -SimpleState to build SimpleAggregateFunction types via query. It's useful for defining MaterializedView of AggregatingMergeTree engine, and will benefit projections too. #16853 (Amos Bird).
- Added queries-file parameter for clickhouse-client and clickhouse-local. #15930 (Maksim Kita).
- Added query parameter for clickhouse-benchmark. #17832 (Maksim Kita).
- EXPLAIN AST now support queries other then SELECT. #18136 (taiyang-li).
- Experimental Feature 
- Added functions for calculation of minHash and simHash of text n-grams and shingles. They are intended for semi-duplicate search. Also functions bitHammingDistance and tupleHammingDistance are added. #7649 (flynn).
- Add new data type Map. See #1841. First version for Map only supports String type of key and value. #15806 (hexiaoting).
- Implement alternative SQL parser based on ANTLR4 runtime and generated from EBNF grammar. #11298 (Ivan).


### ClickHouse release v21.2.2.8-stable, 2021-02-07
- Bitwise functions (bitAnd, bitOr, etc) are forbidden for floating point arguments. Now you have to do explicit cast to integer. #19853 (Azat Khuzhin).
- Forbid lcm/gcd for floats. #19532 (Azat Khuzhin).
- Fix memory tracking for OPTIMIZE TABLE/merges; account query memory limits and sampling for OPTIMIZE TABLE/merges. #18772 (Azat Khuzhin).
- Disallow floating point column as partition key, see #18421. #18464 (hexiaoting).
- Excessive parenthesis in type definitions no longer supported, example: Array((UInt8)).
- Added PostgreSQL table engine (both select/insert, with support for multidimensional arrays), also as table function. Added PostgreSQL dictionary source. Added PostgreSQL database engine. #18554 (Kseniia Sumarokova).
- Data type Nested now supports arbitrary levels of nesting. Introduced subcolumns of complex types, such as size0 in Array, null in Nullable, names of Tuple elements, which can be read without reading of whole column. #17310 (Anton Popov).
- Added Nullable support for FlatDictionary, HashedDictionary, ComplexKeyHashedDictionary, DirectDictionary, ComplexKeyDirectDictionary, RangeHashedDictionary. #18236 (Maksim Kita).
- Adds a new table called system.distributed_ddl_queue that displays the queries in the DDL worker queue. #17656 (Bharat Nallan).
- Added support of mapping LDAP group names, and attribute values in general, to local roles for users from ldap user directories. #17211 (Denis Glazachev).
- Support insert into table function cluster, and for both table functions remote and cluster, support distributing data across nodes by specify sharding key. Close #16752. #18264 (flynn).
- Add function decodeXMLComponent to decode characters for XML. Example: SELECT decodeXMLComponent('Hello,&quot;world&quot;!') #17659. #18542 (nauta).
- Added functions parseDateTimeBestEffortUSOrZero, parseDateTimeBestEffortUSOrNull. #19712 (Maksim Kita).
- Add sign math function. #19527 (flynn).
- Add information about used features (functions, table engines, etc) into system.query_log. #18495. #19371 (Kseniia Sumarokova).
- Function formatDateTime support the %Q modification to format date to quarter. #19224 (Jianmei Zhang).
- Support MetaKey+Enter hotkey binding in play UI. #19012 (sundyli).
- Add three functions for map data type: 1. mapContains(map, key) to check weather map.keys include the second parameter key. 2. mapKeys(map) return all the keys in Array format 3. mapValues(map) return all the values in Array format. #18788 (hexiaoting).
- Add log_comment setting related to #18494. #18549 (Zijie Lu).
- Add support of tuple argument to argMin and argMax functions. #17359 (Ildus Kurbangaliev).
- Support EXISTS VIEW syntax. #18552 (Du Chuan).
- Add SELECT ALL syntax. closes #18706. #18723 (flynn).


### ClickHouse release v21.3-lts, 2021-03-12
- Now it's not allowed to create MergeTree tables in old syntax with table TTL because it's just ignored. Attach of old tables is still possible. #20282 (alesapin).
- Now all case-insensitive function names will be rewritten to their canonical representations. This is needed for projection query routing (the upcoming feature). #20174 (Amos Bird).
- Fix creation of TTL in cases, when its expression is a function and it is the same as ORDER BY key. Now it's allowed to set custom aggregation to primary key columns in TTL with GROUP BY. Backward incompatible: For primary key columns, which are not in GROUP BY and aren't set explicitly now is applied function any instead of max, when TTL is expired. Also if you use TTL with WHERE or GROUP BY you can see exceptions at merges, while making rolling update. #15450 (Anton Popov).
- Add file engine settings: engine_file_empty_if_not_exists and engine_file_truncate_on_insert. #20620 (M0r64n).
- Add aggregate function deltaSum for summing the differences between consecutive rows. #20057 (Russ Frank).
- New event_time_microseconds column in system.part_log table. #20027 (Bharat Nallan).
- Added timezoneOffset(datetime) function which will give the offset from UTC in seconds. This close #issue:19850. #19962 (keenwolf).
- Add setting insert_shard_id to support insert data into specific shard from distributed table. #19961 (flynn).
- Function reinterpretAs updated to support big integers. Fixes #19691. #19858 (Maksim Kita).
- Added Server Side Encryption Customer Keys (the x-amz-server-side-encryption-customer-(key/md5) header) support in S3 client. See the link. Closes #19428. #19748 (Vladimir Chebotarev).
- Added implicit_key option for executable dictionary source. It allows to avoid printing key for every record if records comes in the same order as the input keys. Implements #14527. #19677 (Maksim Kita).
- Add quota type query_selects and query_inserts. #19603 (JackyWoo).
- Add function extractTextFromHTML #19600 (zlx19950903), (alexey-milovidov).
- Tables with MergeTree* engine now have two new table-level settings for query concurrency control. Setting max_concurrent_queries limits the number of concurrently executed queries which are related to this table. Setting min_marks_to_honor_max_concurrent_queries tells to apply previous setting only if query reads at least this number of marks. #19544 (Amos Bird).
- Added file function to read file from user_files directory as a String. This is different from the file table function. This implements #issue:18851. #19204 (keenwolf).
- Add experimental Replicated database engine. It replicates DDL queries across multiple hosts. #16193 (tavplubix).
- Introduce experimental support for window functions, enabled with allow_experimental_window_functions = 1. This is a preliminary, alpha-quality implementation that is not suitable for production use and will change in backward-incompatible ways in future releases. Please see the documentation for the list of supported features. #20337 (Alexander Kuzmenkov).
- Add the ability to backup/restore metadata files for DiskS3. #18377 (Pavel Kovalenko).


### ClickHouse release 21.4.1 2021-04-12 
- The toStartOfIntervalFunction will align hour intervals to the midnight (in previous versions they were aligned to the start of unix epoch). For example, toStartOfInterval(x, INTERVAL 11 HOUR) will split every day into three intervals: 00:00:00..10:59:59, 11:00:00..21:59:59 and 22:00:00..23:59:59. This behaviour is more suited for practical needs. This closes #9510. #22060 (alexey-milovidov).
- Age and Precision in graphite rollup configs should increase from retention to retention. Now it's checked and the wrong config raises an exception. #21496 (Mikhail f. Shiryaev).
- Fix cutToFirstSignificantSubdomainCustom()/firstSignificantSubdomainCustom() returning wrong result for 3+ level domains present in custom top-level domain list. For input domains matching these custom top-level domains, the third-level domain was considered to be the first significant one. This is now fixed. This change may introduce incompatibility if the function is used in e.g. the sharding key. #21946 (Azat Khuzhin).
- Column keys in table system.dictionaries was replaced to columns key.names and key.types. Columns key.names, key.types, attribute.names, attribute.types from system.dictionaries table does not require dictionary to be loaded. #21884 (Maksim Kita).
- Now replicas that are processing the ALTER TABLE ATTACH PART[ITION] command search in their detached/ folders before fetching the data from other replicas. As an implementation detail, a new command ATTACH_PART is introduced in the replicated log. Parts are searched and compared by their checksums. #18978 (Mike Kot). Note:
- ATTACH PART[ITION] queries may not work during cluster upgrade.
- It's not possible to rollback to older ClickHouse version after executing ALTER ... ATTACH query in new version as the old servers would fail to pass the ATTACH_PART entry in the replicated log.
- In this version, empty <remote_url_allow_hosts></remote_url_allow_hosts> will block all access to remote hosts while in previous versions it did nothing. If you want to keep old behaviour and you have empty remote_url_allow_hosts element in configuration file, remove it. #20058 (Vladimir Chebotarev).
- Extended range of DateTime64 to support dates from year 1925 to 2283. Improved support of DateTime around zero date (1970-01-01). #9404 (alexey-milovidov, Vasily Nemkov). Not every time and date functions are working for extended range of dates.
- Added support of Kerberos authentication for preconfigured users and HTTP requests (GSS-SPNEGO). #14995 (Denis Glazachev).
- Add prefer_column_name_to_alias setting to use original column names instead of aliases. it is needed to be more compatible with common databases' aliasing rules. This is for #9715 and #9887. #22044 (Amos Bird).
- Added functions dictGetChildren(dictionary, key), dictGetDescendants(dictionary, key, level). Function dictGetChildren return all children as an array if indexes. It is a inverse transformation for dictGetHierarchy. Function dictGetDescendants return all descendants as if dictGetChildren was applied level times recursively. Zero level value is equivalent to infinity. Closes #14656. #22096 (Maksim Kita).
- Added executable_pool dictionary source. Close #14528. #21321 (Maksim Kita).
- Added table function dictionary. It works the same way as Dictionary engine. Closes #21560. #21910 (Maksim Kita).
- Support Nullable type for PolygonDictionary attribute. #21890 (Maksim Kita).
- Functions dictGet, dictHas use current database name if it is not specified for dictionaries created with DDL. Closes #21632. #21859 (Maksim Kita).
- Added function dictGetOrNull. It works like dictGet, but return Null in case key was not found in dictionary. Closes #22375. #22413 (Maksim Kita).
- Added async update in ComplexKeyCache, SSDCache, SSDComplexKeyCache dictionaries. Added support for Nullable type in Cache, ComplexKeyCache, SSDCache, SSDComplexKeyCache dictionaries. Added support for multiple attributes fetch with dictGet, dictGetOrDefault functions. Fixes #21517. #20595 (Maksim Kita).
- Support dictHas function for RangeHashedDictionary. Fixes #6680. #19816 (Maksim Kita).
- Add function timezoneOf that returns the timezone name of DateTime or DateTime64 data types. This does not close #9959. Fix inconsistencies in function names: add aliases timezone and timeZone as well as toTimezone and toTimeZone and timezoneOf and timeZoneOf. #22001 (alexey-milovidov).
- Add new optional clause GRANTEES for CREATE/ALTER USER commands. It specifies users or roles which are allowed to receive grants from this user on condition this user has also all required access granted with grant option. By default GRANTEES ANY is used which means a user with grant option can grant to anyone. Syntax: CREATE USER ... GRANTEES {user | role | ANY | NONE} [,...] [EXCEPT {user | role} [,...]]. #21641 (Vitaly Baranov).
- Add new column slowdowns_count to system.clusters. When using hedged requests, it shows how many times we switched to another replica because this replica was responding slowly. Also show actual value of errors_count in system.clusters. #21480 (Kruglov Pavel).
- Add _partition_id virtual column for MergeTree* engines. Allow to prune partitions by _partition_id. Add partitionID() function to calculate partition id string. #21401 (Amos Bird).
- Add function isIPAddressInRange to test if an IPv4 or IPv6 address is contained in a given CIDR network prefix. #21329 (PHO).
- Added new SQL command ALTER TABLE 'table_name' UNFREEZE [PARTITION 'part_expr'] WITH NAME 'backup_name'. This command is needed to properly remove 'freezed' partitions from all disks. #21142 (Pavel Kovalenko).
- Supports implicit key type conversion for JOIN. #19885 (Vladimir).
- Support RANGE OFFSET frame (for window functions) for floating point types. Implement lagInFrame/leadInFrame window functions, which are analogous to lag/lead, but respect the window frame. They are identical when the frame is between unbounded preceding and unbounded following. This closes #5485. #21895 (Alexander Kuzmenkov).
- Zero-copy replication for ReplicatedMergeTree over S3 storage. #16240 (ianton-ru).
- Added possibility to migrate existing S3 disk to the schema with backup-restore capabilities. #22070 (Pavel Kovalenko).


### ClickHouse release 21.5, 2021-05-20
- Change comparison of integers and floating point numbers when integer is not exactly representable in the floating point data type. In new version comparison will return false as the rounding error will occur. Example: 9223372036854775808.0 != 9223372036854775808, because the number 9223372036854775808 is not representable as floating point number exactly (and 9223372036854775808.0 is rounded to 9223372036854776000.0). But in previous version the comparison will return as the numbers are equal, because if the floating point number 9223372036854776000.0 get converted back to UInt64, it will yield 9223372036854775808. For the reference, the Python programming language also treats these numbers as equal. But this behaviour was dependend on CPU model (different results on AMD64 and AArch64 for some out-of-range numbers), so we make the comparison more precise. It will treat int and float numbers equal only if int is represented in floating point type exactly. #22595 (alexey-milovidov).
- Remove support for argMin and argMax for single Tuple argument. The code was not memory-safe. The feature was added by mistake and it is confusing for people. These functions can be reintroduced under different names later. This fixes #22384 and reverts #17359. #23393 (alexey-milovidov).
- Added functions dictGetChildren(dictionary, key), dictGetDescendants(dictionary, key, level). Function dictGetChildren return all children as an array if indexes. It is a inverse transformation for dictGetHierarchy. Function dictGetDescendants return all descendants as if dictGetChildren was applied level times recursively. Zero level value is equivalent to infinity. Improved performance of dictGetHierarchy, dictIsIn functions. Closes #14656. #22096 (Maksim Kita).
- Added function dictGetOrNull. It works like dictGet, but return Null in case key was not found in dictionary. Closes #22375. #22413 (Maksim Kita).
- Added a table function s3Cluster, which allows to process files from s3 in parallel on every node of a specified cluster. #22012 (Nikita Mikhaylov).
- Added support for replicas and shards in MySQL/PostgreSQL table engine / table function. You can write SELECT * FROM mysql('host{1,2}-{1|2}', ...). Closes #20969. #22217 (Kseniia Sumarokova).
- Added ALTER TABLE ... FETCH PART ... query. It's similar to FETCH PARTITION, but fetches only one part. #22706 (turbo jason).
- Added a setting max_distributed_depth that limits the depth of recursive queries to Distributed tables. Closes #20229. #21942 (flynn).


### ClickHouse release 21.6, 2021-06-05 
- Add Postgres-like cast operator (::). E.g.: [1, 2]::Array(UInt8), 0.1::Decimal(4, 4), number::UInt16. #23871 (Anton Popov).
- Make big integers production ready. Add support for UInt128 data type. Fix known issues with the Decimal256 data type. Support big integers in dictionaries. Support gcd/lcm functions for big integers. Support big integers in array search and conditional functions. Support LowCardinality(UUID). Support big integers in generateRandom table function and clickhouse-obfuscator. Fix error with returning UUID from scalar subqueries. This fixes #7834. This fixes #23936. This fixes #4176. This fixes #24018. Backward incompatible change: values of UUID type cannot be compared with integer. For example, instead of writing uuid != 0 type uuid != '00000000-0000-0000-0000-000000000000'. #23631 (alexey-milovidov).
- Support Array data type for inserting and selecting data in Arrow, Parquet and ORC formats. #21770 (taylor12805).
- Implement table comments. Closes #23225. #23548 (flynn).
- Support creating dictionaries with DDL queries in clickhouse-local. Closes #22354. Added support for DETACH DICTIONARY PERMANENTLY. Added support for EXCHANGE DICTIONARIES for Atomic database engine. Added support for moving dictionaries between databases using RENAME DICTIONARY. #23436 (Maksim Kita).
- Add aggregate function uniqTheta to support Theta Sketch in ClickHouse. #23894. #22609 (Ping Yu).
- Add function splitByRegexp. #24077 (abel-cheng).
- Add function arrayProduct which accept an array as the parameter, and return the product of all the elements in array. Closes #21613. #23782 (Maksim Kita).
- Add thread_name column in system.stack_trace. This closes #23256. #24124 (abel-cheng).
- If insert_null_as_default = 1, insert default values instead of NULL in INSERT ... SELECT and INSERT ... SELECT ... UNION ALL ... queries. Closes #22832. #23524 (Kseniia Sumarokova).
- Add support for progress indication in clickhouse-local with --progress option. #23196 (Egor Savin).
- Add support for HTTP compression (determined by Content-Encoding HTTP header) in http dictionary source. This fixes #8912. #23946 (FArthur-cmd).
- Added SYSTEM QUERY RELOAD MODEL, SYSTEM QUERY RELOAD MODELS. Closes #18722. #23182 (Maksim Kita).
- Add setting json (boolean, 0 by default) for EXPLAIN PLAN query. When enabled, query output will be a single JSON row. It is recommended to use TSVRaw format to avoid unnecessary escaping. #23082 (Nikolai Kochetov).
- Add setting indexes (boolean, disabled by default) to EXPLAIN PIPELINE query. When enabled, shows used indexes, number of filtered parts and granules for every index applied. Supported for MergeTree* tables. #22352 (Nikolai Kochetov).
- LDAP: implemented user DN detection functionality to use when mapping Active Directory groups to ClickHouse roles. #22228 (Denis Glazachev).
- New aggregate function deltaSumTimestamp for summing the difference between consecutive rows while maintaining ordering during merge by storing timestamps. #21888 (Russ Frank).
- Added less secure IMDS credentials provider for S3 which works under docker correctly. #21852 (Vladimir Chebotarev).
- Add back indexHint function. This is for #21238. This reverts #9542. This fixes #9540. #21304 (Amos Bird).
- Add PROJECTION support for MergeTree* tables. #20202 (Amos Bird).
  
### ClickHouse release v21.7, 2021-07-09
- **Improved performance of queries with explicitly defined large sets. Added compatibility setting legacy_column_name_of_tuple_literal. It makes sense to set it to true, while doing rolling update of cluster from version lower than 21.7 to any higher version. Otherwise distributed queries with explicitly defined sets at IN clause may fail during update. #25371 (Anton Popov).**
- **Forward/backward incompatible change of maximum buffer size in clickhouse-keeper (an experimental alternative to ZooKeeper). Better to do it now (before production), than later. #25421 (alesapin).**
- Support configuration in YAML format as alternative to XML. This closes #3607. #21858 (BoloniniD).
- Provides a way to restore replicated table when the data is (possibly) present, but the ZooKeeper metadata is lost. Resolves #13458. #13652 (Mike Kot).
- Support structs and maps in Arrow/Parquet/ORC and dictionaries in Arrow input/output formats. Present new setting output_format_arrow_low_cardinality_as_dictionary. #24341 (Kruglov Pavel).
- Added support for Array type in dictionaries. #25119 (Maksim Kita).
- Added function bitPositionsToArray. Closes #23792. Author [Kevin Wan] (@MaxWk). #25394 (Maksim Kita).
- Added function dateName to return names like 'Friday' or 'April'. Author [Daniil Kondratyev] (@dankondr). #25372 (Maksim Kita).
- Add toJSONString function to serialize columns to their JSON representations. #25164 (Amos Bird).
- Now query_log has two new columns: initial_query_start_time, initial_query_start_time_microsecond that record the starting time of a distributed query if any. #25022 (Amos Bird).
- Add aggregate function segmentLengthSum. #24250 (flynn).
- Add a new boolean setting prefer_global_in_and_join which defaults all IN/JOIN as GLOBAL IN/JOIN. #23434 (Amos Bird).
- Support ALTER DELETE queries for Join table engine. #23260 (foolchi).
- Add quantileBFloat16 aggregate function as well as the corresponding quantilesBFloat16 and medianBFloat16. It is very simple and fast quantile estimator with relative error not more than 0.390625%. This closes #16641. #23204 (Ivan Novitskiy).
- Implement sequenceNextNode() function useful for flow analysis. #19766 (achimbab).

### ClickHouse release v21.8, 2021-08-12
- Add support for a part of SQL/JSON standard. #24148 (l1tsolaiki, Kseniia Sumarokova).
- Collect common system metrics (in system.asynchronous_metrics and system.asynchronous_metric_log) on CPU usage, disk usage, memory usage, IO, network, files, load average, CPU frequencies, thermal sensors, EDAC counters, system uptime; also added metrics about the scheduling jitter and the time spent collecting the metrics. It works similar to atop in ClickHouse and allows access to monitoring data even if you have no additional tools installed. Close #9430. #24416 (alexey-milovidov, Yegor Levankov).
- Add MaterializedPostgreSQL table engine and database engine. This database engine allows replicating a whole database or any subset of database tables. #20470 (Kseniia Sumarokova).
- Add new functions leftPad(), rightPad(), leftPadUTF8(), rightPadUTF8(). #26075 (Vitaly Baranov).
- Add the FIRST keyword to the ADD INDEX command to be able to add the index at the beginning of the indices list. #25904 (xjewer).
- Introduce system.data_skipping_indices table containing information about existing data skipping indices. Close #7659. #25693 (Dmitry Novik).
- Add bin/unbin functions. #25609 (zhaoyu).
- Support Map and UInt128, Int128, UInt256, Int256 types in mapAdd and mapSubtract functions. #25596 (Ildus Kurbangaliev).
- Support DISTINCT ON (columns) expression, close #25404. #25589 (Zijie Lu).
- Add an ability to reset a custom setting to default and remove it from the table's metadata. It allows rolling back the change without knowing the system/config's default. Closes #14449. #17769 (xjewer).
- Render pipelines as graphs in Web UI if EXPLAIN PIPELINE graph = 1 query is submitted. #26067 (alexey-milovidov).

### ClickHouse release v21.9, 2021-09-09
- **Do not output trailing zeros in text representation of Decimal types. Example: 1.23 will be printed instead of 1.230000 for decimal with scale 6. This closes #15794. It may introduce slight incompatibility if your applications somehow relied on the trailing zeros. Serialization in output formats can be controlled with the setting output_format_decimal_trailing_zeros. Implementation of toString and casting to String is changed unconditionally. #27680 (alexey-milovidov).**
- **Do not allow to apply parametric aggregate function with -Merge combinator to aggregate function state if state was produced by aggregate function with different parameters. For example, state of fooState(42)(x) cannot be finalized with fooMerge(s) or fooMerge(123)(s), parameters must be specified explicitly like fooMerge(42)(s) and must be equal. It does not affect some special aggregate functions like `quantile` and `sequence*` that use parameters for finalization only. #26847 (tavplubix).**
- **Under clickhouse-local, always treat local addresses with a port as remote. #26736 (Raúl Marín).**
- **Fix the issue that in case of some sophisticated query with column aliases identical to the names of expressions, bad cast may happen. This fixes #25447. This fixes #26914. This fix may introduce backward incompatibility: if there are different expressions with identical names, exception will be thrown. It may break some rare cases when enable_optimize_predicate_expression is set. #26639 (alexey-milovidov).**
- **Now, scalar subquery always returns Nullable result if it's type can be Nullable. It is needed because in case of empty subquery it's result should be Null. Previously, it was possible to get error about incompatible types (type deduction does not execute scalar subquery, and it could use not-nullable type). Scalar subquery with empty result which can't be converted to Nullable (like Array or Tuple) now throws error. Fixes #25411. #26423 (Nikolai Kochetov).**
- **Introduce syntax for here documents. Example SELECT $doc$ VALUE $doc$. #26671 (Maksim Kita). This change is backward incompatible if in query there are identifiers that contain $ #28768.**
- **Now indices can handle Nullable types, including isNull and isNotNull. #12433 and #12455 (Amos Bird) and #27250 (Azat Khuzhin). But this was done with on-disk format changes, and even though new server can read old data, old server cannot. Also, in case you have MINMAX data skipping indices, you may get Data after mutation/merge is not byte-identical error, since new index will have .idx2 extension while before it was .idx. That said, that you should not delay updating all existing replicas, in this case, otherwise, if old replica (<21.9) will download data from new replica with 21.9+ it will not be able to apply index for downloaded part.**
- Implementation of short circuit function evaluation, closes #12587. Add settings short_circuit_function_evaluation to configure short circuit function evaluation. #23367 (Kruglov Pavel).
- Add support for INTERSECT, EXCEPT, ANY, ALL operators. #24757 (Kirill Ershov). (Kseniia Sumarokova).
- Add support for encryption at the virtual file system level (data encryption at rest) using AES-CTR algorithm. #24206 (Latysheva Alexandra). (Vitaly Baranov) #26733 #26377 #26465.
- Added natural language processing (NLP) functions for tokenization, stemming, lemmatizing and search in synonyms extensions. #24997 (Nikolay Degterinsky).
- Added integration with S2 geometry library. #24980 (Andr0901). (Nikita Mikhaylov).
- Add SQLite table engine, table function, database engine. #24194 (Arslan Gumerov). (Kseniia Sumarokova).
- Added support for custom query for MySQL, PostgreSQL, ClickHouse, JDBC, Cassandra dictionary source. Closes #1270. #26995 (Maksim Kita).
- Add shared (replicated) storage of user, roles, row policies, quotas and settings profiles through ZooKeeper. #27426 (Kevin Michel).
- Add compression for INTO OUTFILE that automatically choose compression algorithm. Closes #3473. #27134 (Filatenkov Artur).
- Add INSERT ... FROM INFILE similarly to SELECT ... INTO OUTFILE. #27655 (Filatenkov Artur).
- Added complex_key_range_hashed dictionary. Closes #22029. #27629 (Maksim Kita).
- Support expressions in JOIN ON section. Close #21868. #24420 (Vladimir C).
- When client connects to server, it receives information about all warnings that are already were collected by server. (It can be disabled by using option --no-warnings). Add system.warnings table to collect warnings about server configuration. #26246 (Filatenkov Artur). #26282 (Filatenkov Artur).
- Allow using constant expressions from with and select in aggregate function parameters. Close #10945. #27531 (abel-cheng).
- Add tupleToNameValuePairs, a function that turns a named tuple into an array of pairs. #27505 (Braulio Valdivielso Martínez).
- Add support for bzip2 compression method for import/export. Closes #22428. #27377 (Nikolay Degterinsky).
- Added bitmapSubsetOffsetLimit(bitmap, offset, cardinality_limit) function. It creates a subset of bitmap limit the results to cardinality_limit with offset of offset. #27234 (DHBin).
- Add column default_database to system.users. #27054 (kevin wan).
- Supported cluster macros inside table functions 'cluster' and 'clusterAllReplicas'. #26913 (polyprogrammist).
- Add new functions currentRoles(), enabledRoles(), defaultRoles(). #26780 (Vitaly Baranov).
- New functions currentProfiles(), enabledProfiles(), defaultProfiles(). #26714 (Vitaly Baranov).
- Add functions that return (initial_)query_id of the current query. This closes #23682. #26410 (Alexey Boykov).
- Add REPLACE GRANT feature. #26384 (Caspian).
- EXPLAIN query now has EXPLAIN ESTIMATE ... mode that will show information about read rows, marks and parts from MergeTree tables. Closes #23941. #26131 (fastio).
- Added system.zookeeper_log table. All actions of ZooKeeper client are logged into this table. Implements #25449. #26129 (tavplubix).
- *Zero-copy replication for ReplicatedMergeTree over HDFS storage. #25918 (Zhichang Yu).*
- Allow to insert Nested type as array of structs in Arrow, ORC and Parquet input format. #25902 (Kruglov Pavel).
- Add a new datatype Date32 (store data as Int32), support date range same with DateTime64 support load parquet date32 to ClickHouse Date32 Add new function toDate32 like toDate. #25774 (LiuNeng).
- Allow setting default database for users. #25268. #25687 (kevin wan).
- Add an optional parameter to MongoDB engine to accept connection string options and support SSL connection. Closes #21189. Closes #21041. #22045 (Omar Bazaraa).

### ClickHouse release v21.10, 2021-10-16
- **Now the following MergeTree table-level settings: replicated_max_parallel_sends, replicated_max_parallel_sends_for_table, replicated_max_parallel_fetches, replicated_max_parallel_fetches_for_table do nothing. They never worked well and were replaced with max_replicated_fetches_network_bandwidth, max_replicated_sends_network_bandwidth and background_fetches_pool_size. #28404 (alesapin).**
- Add feature for creating user-defined functions (UDF) as lambda expressions. Syntax CREATE FUNCTION {function_name} as ({parameters}) -> {function core}. Example CREATE FUNCTION plus_one as (a) -> a + 1. Authors @Realist007. #27796 (Maksim Kita) #23978 (Realist007).
- Added Executable storage engine and executable table function. It enables data processing with external scripts in streaming fashion. #28102 (Maksim Kita) (ruct).
- Added ExecutablePool storage engine. Similar to Executable but it's using a pool of long running processes. #28518 (Maksim Kita).
- Add ALTER TABLE ... MATERIALIZE COLUMN query. #27038 (Vladimir Chebotarev).
- Support for partitioned write into s3 table function. #23051 (Vladimir Chebotarev).
- Support lz4 compression format (in addition to gz, bz2, xz, zstd) for data import / export. #25310 (Bharat Nallan).
- Allow positional arguments under setting enable_positional_arguments. Closes #2592. #27530 (Kseniia Sumarokova).
- Accept user settings related to file formats in SETTINGS clause in CREATE query for s3 tables. This closes #27580. #28037 (Nikita Mikhaylov).
- Allow SSL connection for RabbitMQ engine. #28365 (Kseniia Sumarokova).
- Add getServerPort function to allow getting server port. When the port is not used by the server, throw an exception. #27900 (Amos Bird).
- Add conversion functions between "snowflake id" and DateTime, DateTime64. See #27058. #27704 (jasine).
- Add function SHA512. #27830 (zhanglistar).
- Add log_queries_probability setting that allows user to write to query_log only a sample of queries. Closes #16609. #27527 (Nikolay Degterinsky).

### ClickHouse release v21.11, 2021-11-09
- **Change order of json_path and json arguments in SQL/JSON functions (to be consistent with the standard). Closes #30449. #30474 (Kseniia Sumarokova).**
- **Remove MergeTree table setting write_final_mark. It will be always true. #30455 (Kseniia Sumarokova). No actions required, all tables are compatible with the new version.**
- **Function bayesAB is removed. Please help to return this function back, refreshed. This closes #26233. #29934 (alexey-milovidov).**
- **This is relevant only if you already started using the experimental clickhouse-keeper support. Now ClickHouse Keeper snapshots compressed with ZSTD codec by default instead of custom ClickHouse LZ4 block compression. This behavior can be turned off with compress_snapshots_with_zstd_format coordination setting (must be equal on all quorum replicas). Backward incompatibility is quite rare and may happen only when new node will send snapshot (happens in case of recovery) to the old node which is unable to read snapshots in ZSTD format. #29417 (alesapin).**
- *New asynchronous INSERT mode allows to accumulate inserted data and store it in a single batch in background. On client it can be enabled by setting async_insert for INSERT queries with data inlined in query or in separate buffer (e.g. for INSERT queries via HTTP protocol). If wait_for_async_insert is true (by default) the client will wait until data will be flushed to table. On server-side it controlled by the settings async_insert_threads, async_insert_max_data_size and async_insert_busy_timeout_ms. Implements #18282. #27537 (Anton Popov). #20557 (Ivan). Notes on performance: with asynchronous inserts you can do up to around 10 000 individual INSERT queries per second, so it is still recommended to insert in batches if you want to achieve performance up to millions inserted rows per second.*
- Add interactive mode for clickhouse-local. So, you can just run clickhouse-local to get a command line ClickHouse interface without connecting to a server and process data from files and external data sources. Also merge the code of clickhouse-client and clickhouse-local together. Closes #7203. Closes #25516. Closes #22401. #26231 (Kseniia Sumarokova).
- Added support for executable (scriptable) user defined functions. These are UDFs that can be written in any programming language. #28803 (Maksim Kita).
- Allow predefined connections to external data sources. This allows to avoid specifying credentials or addresses while using external data sources, they can be referenced by names instead. Closes #28367. #28577 (Kseniia Sumarokova).
- Added INFORMATION_SCHEMA database with SCHEMATA, TABLES, VIEWS and COLUMNS views to the corresponding tables in system database. Closes #9770. #28691 (tavplubix).
- Support EXISTS (subquery). Closes #6852. #29731 (Kseniia Sumarokova).
- Session logging for audit. Logging all successful and failed login and logout events to a new system.session_log table. #22415 (Vasily Nemkov) (Vitaly Baranov).
- Support multidimensional cosine distance and euclidean distance functions; L1, L2, Lp, Linf distances and norms. Scalar product on tuples and various arithmetic operators on tuples. This fully closes #4509 and even more. #27933 (Alexey Boykov).
- Add support for compression and decompression for INTO OUTFILE and FROM INFILE (with autodetect or with additional optional parameter). #27135 (Filatenkov Artur).
- Add CORS (Cross Origin Resource Sharing) support with HTTP OPTIONS request. It means, now Grafana will work with serverless requests without a kludges. Closes #18693. #29155 (Filatenkov Artur).
- Queries with JOIN ON now supports disjunctions (OR). #21320 (Ilya Golshtein).
- Added function tokens. That allow to split string into tokens using non-alpha numeric ASCII characters as separators. #29981 (Maksim Kita). Added function ngrams to extract ngrams from text. Closes #29699. #29738 (Maksim Kita).
- Add functions for Unicode normalization: normalizeUTF8NFC, normalizeUTF8NFD, normalizeUTF8NFKC, normalizeUTF8NFKD functions. #28633 (darkkeks).
- Streaming consumption of application log files in ClickHouse with FileLog table engine. It's like Kafka or RabbitMQ engine but for append-only and rotated logs in local filesystem. Closes #6953. #25969 (flynn) (Kseniia Sumarokova).
- Add CapnProto output format, refactor CapnProto input format. #29291 (Kruglov Pavel).
- Allow to write number in query as binary literal. Example SELECT 0b001;. #29304 (Maksim Kita).
- Added hashed_array dictionary type. It saves memory when using dictionaries with multiple attributes. Closes #30236. #30242 (Maksim Kita).
- Added JSONExtractKeys function. #30056 (Vitaly).
- Add a function getOSKernelVersion - it returns a string with OS kernel version. #29755 (Memo).
- Added MD4 and SHA384 functions. MD4 is an obsolete and insecure hash function, it can be used only in rare cases when MD4 is already being used in some legacy system and you need to get exactly the same result. #29602 (Nikita Tikhomirov).
- HSTS can be enabled for ClickHouse HTTP server by setting hsts_max_age in configuration file with a positive number. #29516 (凌涛).
- Huawei OBS Storage support. Closes #24294. #29511 (kevin wan).
- New function mapContainsKeyLike to get the map that key matches a simple regular expression. #29471 (凌涛). New function mapExtractKeyLike to get the map only kept elements matched specified pattern. #30793 (凌涛).
- Implemented ALTER TABLE x MODIFY COMMENT. #29264 (Vasily Nemkov).
- Adds H3 inspection functions that are missing from ClickHouse but are available via the H3 api: https://h3geo.org/docs/api/inspection. #29209 (Bharat Nallan).
- Allow non-replicated ALTER TABLE FETCH and ATTACH in Replicated databases. #29202 (Kevin Michel).
- Added a setting output_format_csv_null_representation: This is the same as output_format_tsv_null_representation but is for CSV output. #29123 (PHO).
- Added function zookeeperSessionUptime() which returns uptime of current ZooKeeper session in seconds. #28983 (tavplubix).
- Implements the h3ToGeoBoundary function. #28952 (Ivan Veselov).
- Add aggregate function exponentialMovingAverage that can be used as window function. This closes #27511. #28914 (alexey-milovidov).
- Allow to include subcolumns of table columns into DESCRIBE query result (can be enabled by setting describe_include_subcolumns). #28905 (Anton Popov).
- Executable, ExecutablePool added option send_chunk_header. If this option is true then chunk rows_count with line break will be sent to client before chunk. #28833 (Maksim Kita).
- tokenbf_v1 and ngram support Map with key of String of FixedSring type. It enhance data skipping in query with map key filter. sql CREATE TABLE map_tokenbf ( row_id UInt32, map Map(String, String), INDEX map_tokenbf map TYPE ngrambf_v1(4,256,2,0) GRANULARITY 1 ) Engine=MergeTree() Order by id With table above, the query select * from map_tokebf where map['K']='V' will skip the granule that doesn't contain key A . Of course, how many rows will skipped is depended on the granularity and index_granularity you set. #28511 (凌涛).
- Send profile events from server to client. New packet type ProfileEvents was introduced. Closes #26177. #28364 (Dmitry Novik).
- Bit shift operations for FixedString and String data types. This closes #27763. #28325 (小路).
- Support adding / deleting tables to replication from PostgreSQL dynamically in database engine MaterializedPostgreSQL. Support alter for database settings. Closes #27573. #28301 (Kseniia Sumarokova).
- Added function accurateCastOrDefault(x, T). Closes #21330. Authors @taiyang-li. #23028 (Maksim Kita).
- Add Function toUUIDOrDefault, toUInt8/16/32/64/256OrDefault, toInt8/16/32/64/128/256OrDefault, which enables user defining default value(not null) when string parsing is failed. #21330 (taiyang-li).

### ClickHouse release v21.12, 2021-12-15
- **A fix for a feature that previously had unwanted behaviour. Do not allow direct select for Kafka/RabbitMQ/FileLog. Can be enabled by setting stream_like_engine_allow_direct_select. Direct select will be not allowed even if enabled by setting, in case there is an attached materialized view. For Kafka and RabbitMQ direct selectm if allowed, will not commit massages by default. To enable commits with direct select, user must use storage level setting kafka{rabbitmq}_commit_on_select=1 (default 0). #31053 (Kseniia Sumarokova).**
- **A slight change in behaviour of a new function. Return unquoted string in JSON_VALUE. Closes #27965. #31008 (Kseniia Sumarokova).**
- **Setting rename. Add custom null representation support for TSV/CSV input formats. Fix deserialing Nullable(String) in TSV/CSV/JSONCompactStringsEachRow/JSONStringsEachRow input formats. Rename output_format_csv_null_representation and output_format_tsv_null_representation to format_csv_null_representation and format_tsv_null_representation accordingly. #30497 (Kruglov Pavel).**
- **Further deprecation of already unused code. This is relevant only for users of ClickHouse versions older than 20.6. A "leader election" mechanism is removed from ReplicatedMergeTree, because multiple leaders are supported since 20.6. If you are upgrading from an older version and some replica with an old version is a leader, then server will fail to start after upgrade. Stop replicas with old version to make new version start. After that it will not be possible to downgrade to version older than 20.6. #32140 (tavplubix).**
- Implemented more of the ZooKeeper Four Letter Words commands in clickhouse-keeper: https://zookeeper.apache.org/doc/r3.4.8/zookeeperAdmin.html#sc_zkCommands. #28981 (JackyWoo). Now clickhouse-keeper is feature complete.
- Support for Bool data type. #31072 (kevin wan).
- Support for PARTITION BY in File, URL, HDFS storages and with INSERT INTO table function. Closes #30273. #30690 (Kseniia Sumarokova).
- Added CONSTRAINT ... ASSUME ... (without checking during INSERT). Added query transformation to CNF (https://github.com/ClickHouse/ClickHouse/issues/11749) for more convenient optimization. Added simple query rewriting using constraints (only simple matching now, will be improved to support <,=,>... later). Added ability to replace heavy columns with light columns if it's possible. #18787 (Nikita Vasilev).
- Basic access authentication for http/url functions. #31648 (michael1589).
- Support INTERVAL type in STEP clause for WITH FILL modifier. #30927 (Anton Popov).
- Add support for parallel reading from multiple files and support globs in FROM INFILE clause. #30135 (Filatenkov Artur).
- Add support for Identifier table and database query parameters. Closes #27226. #28668 (Nikolay Degterinsky).
- TLDR: Major improvements of completeness and consistency of text formats. Refactor formats TSV, TSVRaw, CSV and JSONCompactEachRow, JSONCompactStringsEachRow, remove code duplication, add base interface for formats with -WithNames and -WithNamesAndTypes suffixes. Add formats CSVWithNamesAndTypes, TSVRawWithNames, TSVRawWithNamesAndTypes, JSONCompactEachRowWIthNames, JSONCompactStringsEachRowWIthNames, RowBinaryWithNames. Support parallel parsing for formats TSVWithNamesAndTypes, TSVRaw(WithNames/WIthNamesAndTypes), CSVWithNamesAndTypes, JSONCompactEachRow(WithNames/WIthNamesAndTypes), JSONCompactStringsEachRow(WithNames/WIthNamesAndTypes). Support columns mapping and types checking for RowBinaryWithNamesAndTypes format. Add setting input_format_with_types_use_header which specify if we should check that types written in <format_name>WIthNamesAndTypes format matches with table structure. Add setting input_format_csv_empty_as_default and use it in CSV format instead of input_format_defaults_for_omitted_fields (because this setting should not control csv_empty_as_default). Fix usage of setting input_format_defaults_for_omitted_fields (it was used only as csv_empty_as_default, but it should control calculation of default expressions for omitted fields). Fix Nullable input/output in TSVRaw format, make this format fully compatible with inserting into TSV. Fix inserting NULLs in LowCardinality(Nullable) when input_format_null_as_default is enabled (previously default values was inserted instead of actual NULLs). Fix strings deserialization in JSONStringsEachRow/JSONCompactStringsEachRow formats (strings were parsed just until first '\n' or '\t'). Add ability to use Raw escaping rule in Template input format. Add diagnostic info for JSONCompactEachRow(WithNames/WIthNamesAndTypes) input format. Fix bug with parallel parsing of -WithNames formats in case when setting min_chunk_bytes_for_parallel_parsing is less than bytes in a single row. #30178 (Kruglov Pavel). Allow to print/parse names and types of colums in CustomSeparated input/output format. Add formats CustomSeparatedWithNames/WithNamesAndTypes similar to TSVWithNames/WithNamesAndTypes. #31434 (Kruglov Pavel).
- Aliyun OSS Storage support. #31286 (cfcz48).
- Exposes all settings of the global thread pool in the configuration file. #31285 (Tomáš Hromada).
- Introduced window functions exponentialTimeDecayedSum, exponentialTimeDecayedMax, exponentialTimeDecayedCount and exponentialTimeDecayedAvg which are more effective than exponentialMovingAverage for bigger windows. Also more use-cases were covered. #29799 (Vladimir Chebotarev).
- Add option to compress logs before writing them to a file using LZ4. Closes #23860. #29219 (Nikolay Degterinsky).
- Support JOIN ON 1 = 1 that have CROSS JOIN semantic. This closes #25578. #25894 (Vladimir C).
- Add Map combinator for Map type. - Rename old sum-, min-, max- Map for mapped arrays to sum-, min-, max- MappedArrays. #24539 (Ildus Kurbangaliev).
- Make reading from HTTP retriable. Closes #29696. #29894 (Kseniia Sumarokova).

## ClickHouse Release 22.*

### ClickHouse release v22.1, 2022-01-18
- Implement data schema inference for input formats. Allow to skip structure (or write just auto) in table functions file, url, s3, hdfs and in parameters of clickhouse-local . Allow to skip structure in create query for table engines File, HDFS, S3, URL, Merge, Buffer, Distributed and ReplicatedMergeTree (if we add new replicas). #32455 (Kruglov Pavel).
- Detect format by file extension in file/hdfs/s3/url table functions and HDFS/S3/URL table engines and also for SELECT INTO OUTFILE and INSERT FROM INFILE #33565 (Kruglov Pavel). Close #30918. #33443 (OnePiece).
- A tool for collecting diagnostics data if you need support. #33175 (Alexander Burmak).
- Automatic cluster discovery via Zoo/Keeper. It allows to add replicas to the cluster without changing configuration on every server. #31442 (vdimir).
- Implement hive table engine to access apache hive from clickhouse. This implements: #29245. #31104 (taiyang-li).
- Add aggregate functions cramersV, cramersVBiasCorrected, theilsU and contingency. These functions calculate dependency (measure of association) between categorical values. All these functions are using cross-tab (histogram on pairs) for implementation. You can imagine it like a correlation coefficient but for any discrete values (not necessary numbers). #33366 (alexey-milovidov). Initial implementation by Vanyok-All-is-OK and antikvist.
- Added table function hdfsCluster which allows processing files from HDFS in parallel from many nodes in a specified cluster, similarly to s3Cluster. #32400 (Zhichang Yu).
- Adding support for disks backed by Azure Blob Storage, in a similar way it has been done for disks backed by AWS S3. #31505 (Jakub Kuklis).
- Allow COMMENT in CREATE VIEW (for all VIEW kinds). #31062 (Vasily Nemkov).
- Dynamically reinitialize listening ports and protocols when configuration changes. #30549 (Kevin Michel).
- Added left, right, leftUTF8, rightUTF8 functions. Fix error in implementation of substringUTF8 function with negative offset (offset from the end of string). #33407 (alexey-milovidov).
- Add new functions for H3 coordinate system: h3HexAreaKm2, h3CellAreaM2, h3CellAreaRads2. #33479 (Bharat Nallan).
- Add MONTHNAME function. #33436 (usurai).
- Added function arrayLast. Closes #33390. #33415 Added function arrayLastIndex. #33465 (Maksim Kita).
- Add function decodeURLFormComponent slightly different to decodeURLComponent. Close #10298. #33451 (SuperDJY).
- Allow to split GraphiteMergeTree rollup rules for plain/tagged metrics (optional rule_type field). #33494 (Michail Safronov).

### ClickHouse release v22.2, 2022-02-17
- Projections are production ready. Set allow_experimental_projection_optimization by default and deprecate this setting. #34456 (Nikolai Kochetov).
- An option to create a new files on insert for File/S3/HDFS engines. Allow to overwrite a file in HDFS. Throw an exception in attempt to overwrite a file in S3 by default. Throw an exception in attempt to append data to file in formats that have a suffix (and thus don't support appends, like Parquet, ORC). Closes #31640 Closes #31622 Closes #23862 Closes #15022 Closes #16674. #33302 (Kruglov Pavel).
- Add a setting that allows a user to provide own deduplication semantic in MergeTree/ReplicatedMergeTree If provided, it's used instead of data digest to generate block ID. So, for example, by providing a unique value for the setting in each INSERT statement, the user can avoid the same inserted data being deduplicated. This closes: #7461. #32304 (Igor Nikonov).
- Add support of DEFAULT keyword for INSERT statements. Closes #6331. #33141 (Andrii Buriachevskyi).
- EPHEMERAL column specifier is added to CREATE TABLE query. Closes #9436. #34424 (yakov-olkhovskiy).
- Support IF EXISTS clause for TTL expr TO [DISK|VOLUME] [IF EXISTS] 'xxx' feature. Parts will be moved to disk or volume only if it exists on replica, so MOVE TTL rules will be able to behave differently on replicas according to the existing storage policies. Resolves #34455. #34504 (Anton Popov).
- Allow set default table engine and to create tables without specifying ENGINE. #34187 (Ilya Yatsishin).
- Add table function format(format_name, data). #34125 (Kruglov Pavel).
- Detect format in clickhouse-local by file name even in the case when it is passed to stdin. #33829 (Kruglov Pavel).
- Add schema inference for values table function. Closes #33811. #34017 (Kruglov Pavel).
- Dynamic reload of server TLS certificates on config reload. Closes #15764. #15765 (johnskopis). #31257 (Filatenkov Artur).
- Now ReplicatedMergeTree can recover data when some of its disks are broken. #13544 (Amos Bird).
- Fault-tolerant connections in clickhouse-client: clickhouse-client ... --host host1 --host host2 --port port2 --host host3 --port port --host host4. #34490 (Kruglov Pavel). #33824 (Filippov Denis).
- Add DEGREES and RADIANS functions for MySQL compatibility. #33769 (Bharat Nallan).
- Add h3ToCenterChild function. #33313 (Bharat Nallan). Add new h3 miscellaneous functions: edgeLengthKm,exactEdgeLengthKm,exactEdgeLengthM,exactEdgeLengthRads,numHexagons. #33621 (Bharat Nallan).
- Add function bitSlice to extract bit subsequences from String/FixedString. #33360 (RogerYK).
- Implemented meanZTest aggregate function. #33354 (achimbab).
- Add confidence intervals to T-tests aggregate functions. #33260 (achimbab).
- Add function addressToLineWithInlines. Close #26211. #33467 (SuperDJY).
- Added #! and # as a recognised start of a single line comment. Closes #34138. #34230 (Aaron Katz).


### ClickHouse release v22.3-lts, 2022-03-17
- **Make arrayCompact function behave as other higher-order functions: perform compaction not of lambda function results but on the original array. If you're using nontrivial lambda functions in arrayCompact you may restore old behaviour by wrapping arrayCompact arguments into arrayMap. Closes #34010 #18535 #14778. #34795 (Alexandre Snarskii).**
- **Change implementation specific behavior on overflow of function toDatetime. It will be saturated to the nearest min/max supported instant of datetime instead of wraparound. This change is highlighted as "backward incompatible" because someone may unintentionally rely on the old behavior. #32898 (HaiBo Li).**
- **Make function cast(value, 'IPv4'), cast(value, 'IPv6') behave same as toIPv4, toIPv6 functions. Changed behavior of incorrect IP address passed into functions toIPv4, toIPv6, now if invalid IP address passes into this functions exception will be raised, before this function return default value. Added functions IPv4StringToNumOrDefault, IPv4StringToNumOrNull, IPv6StringToNumOrDefault, IPv6StringOrNull toIPv4OrDefault, toIPv4OrNull, toIPv6OrDefault, toIPv6OrNull. Functions IPv4StringToNumOrDefault , toIPv4OrDefault , toIPv6OrDefault should be used if previous logic relied on IPv4StringToNum, toIPv4, toIPv6 returning default value for invalid address. Added setting cast_ipv4_ipv6_default_on_conversion_error, if this setting enabled, then IP address conversion functions will behave as before. Closes #22825. Closes #5799. Closes #35156. #35240 (Maksim Kita).**
- Support for caching data locally for remote filesystems. It can be enabled for s3 disks. Closes #28961. #33717 (Kseniia Sumarokova). In the meantime, we enabled the test suite on s3 filesystem and no more known issues exist, so it is started to be production ready.
- Add new table function hive. It can be used as follows hive('<hive metastore url>', '<hive database>', '<hive table name>', '<columns definition>', '<partition columns>') for example SELECT * FROM hive('thrift://hivetest:9083', 'test', 'demo', 'id Nullable(String), score Nullable(Int32), day Nullable(String)', 'day'). #34946 (lgbo).
- Support authentication of users connected via SSL by their X.509 certificate. #31484 (eungenue).
- Support schema inference for inserting into table functions file/hdfs/s3/url. #34732 (Kruglov Pavel).
- Now you can read system.zookeeper table without restrictions on path or using like expression. This reads can generate quite heavy load for zookeeper so to enable this ability you have to enable setting allow_unrestricted_reads_from_keeper. #34609 (Sergei Trifonov).
- Display CPU and memory metrics in clickhouse-local. Close #34545. #34605 (李扬).
- Implement startsWith and endsWith function for arrays, closes #33982. #34368 (usurai).
- Add three functions for Map data type: 1. mapReplace(map1, map2) - replaces values for keys in map1 with the values of the corresponding keys in map2; adds keys from map2 that don't exist in map1. 2. mapFilter 3. mapMap. mapFilter and mapMap are higher order functions, accepting two arguments, the first argument is a lambda function with k, v pair as arguments, the second argument is a column of type Map. #33698 (hexiaoting).
- Allow getting default user and password for clickhouse-client from the CLICKHOUSE_USER and CLICKHOUSE_PASSWORD environment variables. Close #34538. #34947 (DR).

### ClickHouse release 22.4, 2022-04-19
- **Do not allow SETTINGS after FORMAT for INSERT queries (there is compatibility setting parser_settings_after_format_compact to accept such queries, but it is turned OFF by default). #35883 (Azat Khuzhin).**
- **Function yandexConsistentHash (consistent hashing algorithm by Konstantin "kostik" Oblakov) is renamed to kostikConsistentHash. The old name is left as an alias for compatibility. Although this change is backward compatible, we may remove the alias in subsequent releases, that's why it's recommended to update the usages of this function in your apps. #35553 (Alexey Milovidov).**
- Added INTERPOLATE extension to the ORDER BY ... WITH FILL. Closes #34903. #35349 (Yakov Olkhovskiy).
- Profiling on Processors level (under log_processors_profiles setting, ClickHouse will write time that processor spent during execution/waiting for data to system.processors_profile_log table). #34355 (Azat Khuzhin).
- Added functions makeDate(year, month, day), makeDate32(year, month, day). #35628 (Alexander Gololobov). Implementation of makeDateTime() and makeDateTIme64(). #35934 (Alexander Gololobov).
- Support new type of quota WRITTEN BYTES to limit amount of written bytes during insert queries. #35736 (Anton Popov).
- Added function flattenTuple. It receives nested named Tuple as an argument and returns a flatten Tuple which elements are the paths from the original Tuple. E.g.: Tuple(a Int, Tuple(b Int, c Int)) -> Tuple(a Int, b Int, c Int). flattenTuple can be used to select all paths from type Object as separate columns. #35690 (Anton Popov).
- Added functions arrayFirstOrNull, arrayLastOrNull. Closes #35238. #35414 (Maksim Kita).
- Added functions minSampleSizeContinous and minSampleSizeConversion. Author achimbab. #35360 (Maksim Kita).
- New functions minSampleSizeContinous and minSampleSizeConversion. #34354 (achimbab).
- Introduce format ProtobufList (all records as repeated messages in out Protobuf). Closes #16436. #35152 (Nikolai Kochetov).
- Add h3PointDistM, h3PointDistKm, h3PointDistRads, h3GetRes0Indexes, h3GetPentagonIndexes functions. #34568 (Bharat Nallan).
- Add toLastDayOfMonth function which rounds up a date or date with time to the last day of the month. #33501. #34394 (Habibullah Oladepo).
- Added load balancing setting for [Zoo]Keeper client. Closes #29617. #30325 (小路).
- Add a new kind of row policies named simple. Before this PR we had two kinds or row policies: permissive and restrictive. A simple row policy adds a new filter on a table without any side-effects like it was for permissive and restrictive policies. #35345 (Vitaly Baranov).
- Added an ability to specify cluster secret in replicated database. #35333 (Nikita Mikhaylov).
- Added sanity checks on server startup (available memory and disk space, max thread count, etc). #34566 (Sergei Trifonov).
- INTERVAL improvement - can be used with [MILLI|MICRO|NANO]SECOND. Added toStartOf[Milli|Micro|Nano]second() functions. Added [add|subtract][Milli|Micro|Nano]seconds(). #34353 (Andrey Zvonov).

### ClickHouse release 22.5, 2022-05-19
- Enable memory overcommit by default. #35921 (Dmitry Novik).
- Add support of GROUPING SETS in GROUP BY clause. This implementation supports a parallel processing of grouping sets. #33631 (Dmitry Novik).
- Added system.certificates table. #37142 (Yakov Olkhovskiy).
- Adds h3Line, h3Distance and h3HexRing functions. #37030 (Bharat Nallan).
- New single binary based diagnostics tool (clickhouse-diagnostics). #36705 (Dale McDiarmid).
- Add output format Prometheus #36051. #36206 (Vladimir C).
- Add MySQLDump input format. It reads all data from INSERT queries belonging to one table in dump. If there are more than one table, by default it reads data from the first one. #36667 (Kruglov Pavel).
- Show the total_rows and total_bytes fields in system.tables for temporary tables. #36401. #36439 (xiedeyantu).
- Allow to override parts_to_delay_insert and parts_to_throw_insert with query-level settings. If they are defined, they will override table-level settings. #36371 (Memo).

### ClickHouse release 22.6, 2022-06-16
- **Remove support for octal number literals in SQL. In previous versions they were parsed as Float64. #37765 (Yakov Olkhovskiy).**
- **Changes how settings using seconds as type are parsed to support floating point values (for example: max_execution_time=0.5). Infinity or NaN values will throw an exception. #37187 (Raúl Marín).**
- **Changed format of binary serialization of columns of experimental type Object. New format is more convenient to implement by third-party clients. #37482 (Anton Popov).**
- **Turn on setting output_format_json_named_tuples_as_objects by default. It allows to serialize named tuples as JSON objects in JSON formats. #37756 (Anton Popov).**
- **LIKE patterns with trailing escape symbol ('\') are now disallowed (as mandated by the SQL standard). #37764 (Robert Schulze).**
- **If you run different ClickHouse versions on a cluster with AArch64 CPU or mix AArch64 and amd64 on a cluster, and use distributed queries with GROUP BY multiple keys of fixed-size type that fit in 256 bits but don't fit in 64 bits, and the size of the result is huge, the data will not be fully aggregated in the result of these queries during upgrade. Workaround: upgrade with downtime instead of a rolling upgrade.**
- Add GROUPING function. It allows to disambiguate the records in the queries with ROLLUP, CUBE or GROUPING SETS. Closes #19426. #37163 (Dmitry Novik).
- A new codec FPC algorithm for floating point data compression. #37553 (Mikhail Guzov).
- Add new columnar JSON formats: JSONColumns, JSONCompactColumns, JSONColumnsWithMetadata. Closes #36338 Closes #34509. #36975 (Kruglov Pavel).
- Added open telemetry traces visualizing tool based on d3js. #37810 (Sergei Trifonov).
- Support INSERTs into system.zookeeper table. Closes #22130. #37596 (Han Fei).
- Support non-constant pattern argument for LIKE, ILIKE and match functions. #37251 (Robert Schulze).
- Executable user defined functions now support parameters. Example: SELECT test_function(parameters)(arguments). Closes #37578. #37720 (Maksim Kita).
- Add merge_reason column to system.part_log table. #36912 (Sema Checherinda).
- Add support for Maps and Records in Avro format. Add new setting input_format_avro_null_as_default that allow to insert null as default in Avro format. Closes #18925 Closes #37378 Closes #32899. #37525 (Kruglov Pavel).
- Add clickhouse-disks tool to introspect and operate on virtual filesystems configured for ClickHouse. #36060 (Artyom Yurkov).
- Adds H3 unidirectional edge functions. #36843 (Bharat Nallan).
- Add support for calculating hashids from unsigned integers. #37013 (Michael Nutt).
- Explicit SALT specification is allowed for CREATE USER <user> IDENTIFIED WITH sha256_hash. #37377 (Yakov Olkhovskiy).
- Add two new settings input_format_csv_skip_first_lines/input_format_tsv_skip_first_lines to allow skipping specified number of lines in the beginning of the file in CSV/TSV formats. #37537 (Kruglov Pavel).
- showCertificate function shows current server's SSL certificate. #37540 (Yakov Olkhovskiy).
- HTTP source for Data Dictionaries in Named Collections is supported. #37581 (Yakov Olkhovskiy).
- Added a new window function nonNegativeDerivative(metric_column, timestamp_column[, INTERVAL x SECOND]). #37628 (Andrey Zvonov).
- Implemented changing the comment for ReplicatedMergeTree tables. #37416 (Vasily Nemkov).
- Added SYSTEM UNFREEZE query that deletes the whole backup regardless if the corresponding table is deleted or not. #36424 (Vadim Volodin).

### ClickHouse release 22.7, 2022-07-21
- Support expressions with window functions. Closes #19857. #37848 (Dmitry Novik).
- Add new direct join algorithm for EmbeddedRocksDB tables, see #33582. #35363 (Vladimir C).
- Added full sorting merge join algorithm. #35796 (Vladimir C).
- Implement NATS table engine, which allows to pub/sub to NATS. Closes #32388. #37171 (tchepavel). (Kseniia Sumarokova)
- Implement table function mongodb. Allow writes into MongoDB storage / table function. #37213 (aaapetrenko). (Kseniia Sumarokova)
- Add SQLInsert output format. Closes #38441. #38477 (Kruglov Pavel).
- Introduced settings additional_table_filters. Using this setting, you can specify additional filtering condition for a table which will be applied directly after reading. Example: select number, x, y from (select number from system.numbers limit 5) f any left join (select x, y from table_1) s on f.number = s.x settings additional_table_filters={'system.numbers : 'number != 3', 'table_1' : 'x != 2'}. Introduced setting additional_result_filter which specifies additional filtering condition for query result. Closes #37918. #38475 (Nikolai Kochetov).
- Add compatibility setting and system.settings_changes system table that contains information about changes in settings through ClickHouse versions. Closes #35972. #38957 (Kruglov Pavel).
- Add functions translate(string, from_string, to_string) and translateUTF8(string, from_string, to_string). It translates some characters to another. #38935 (Nikolay Degterinsky).
- Support parseTimeDelta function. It can be used like ;-+,: can be used as separators, eg. 1yr-2mo, 2m:6s: SELECT parseTimeDelta('1yr-2mo-4w + 12 days, 3 hours : 1 minute ; 33 seconds'). #39071 (jiahui-97).
- Added CREATE TABLE ... EMPTY AS SELECT query. It automatically deduces table structure from the SELECT query, but does not fill the table after creation. Resolves #38049. #38272 (Alexander Tokmakov).
- Added options to limit IO operations with remote storage: max_remote_read_network_bandwidth_for_server and max_remote_write_network_bandwidth_for_server. #39095 (Sergei Trifonov).
- Add group_by_use_nulls setting to make aggregation key columns nullable in the case of ROLLUP, CUBE and GROUPING SETS. Closes #37359. #38642 (Dmitry Novik).
- Add the ability to specify compression level during data export. #38907 (Nikolay Degterinsky).
- Add an option to require explicit grants to SELECT from the system database. Details: #38970 (Vitaly Baranov).
- Functions multiMatchAny, multiMatchAnyIndex, multiMatchAllIndices and their fuzzy variants now accept non-const pattern array argument. #38485 (Robert Schulze). SQL function multiSearchAllPositions now accepts non-const needle arguments. #39167 (Robert Schulze).
- Add a setting zstd_window_log_max to configure max memory usage on zstd decoding when importing external files. Closes #35693. #37015 (wuxiaobai24).
- Add send_logs_source_regexp setting. Send server text logs with specified regexp to match log source name. Empty means all sources. #39161 (Amos Bird).
- Support ALTER for Hive tables. #38214 (lgbo).
- Support isNullable function. This function checks whether it's argument is nullable and return 1 or 0. Closes #38611. #38841 (lokax).
- Added functions for base58 encoding/decoding. #38159 (Andrey Zvonov).
- Add chart visualization to Play UI. #38197 (Alexey Milovidov).
- Added L2 Squared distance and norm functions for both arrays and tuples. #38545 (Julian Gilyadov).
- Add ability to pass HTTP headers to the url table function / storage via SQL. Closes #37897. #38176 (Kseniia Sumarokova).
- Add clickhouse-diagnostics binary to the packages. #38647 (Mikhail f. Shiryaev).

### ClickHouse release 22.8, 2022-08-18
- **Extended range of Date32 and DateTime64 to support dates from the year 1900 to 2299. In previous versions, the supported interval was only from the year 1925 to 2283. The implementation is using the proleptic Gregorian calendar (which is conformant with ISO 8601:2004 (clause 3.2.1 The Gregorian calendar)) instead of accounting for historical transitions from the Julian to the Gregorian calendar. This change affects implementation-specific behavior for out-of-range arguments. E.g. if in previous versions the value of 1899-01-01 was clamped to 1925-01-01, in the new version it will be clamped to 1900-01-01. It changes the behavior of rounding with toStartOfInterval if you pass INTERVAL 3 QUARTER up to one quarter because the intervals are counted from an implementation-specific point of time. Closes #28216, improves #38393. #39425 (Roman Vasin).**
- **Now, all relevant dictionary sources respect remote_url_allow_hosts setting. It was already done for HTTP, Cassandra, Redis. Added ClickHouse, MongoDB, MySQL, PostgreSQL. Host is checked only for dictionaries created from DDL. #39184 (Nikolai Kochetov).**
- **Prebuilt ClickHouse x86 binaries now require support for AVX instructions, i.e. a CPU not older than Intel Sandy Bridge / AMD Bulldozer, both released in 2011. #39000 (Robert Schulze).**
- **Make the remote filesystem cache composable, allow not to evict certain files (regarding idx, mrk, ..), delete old cache version. Now it is possible to configure cache over Azure blob storage disk, over Local disk, over StaticWeb disk, etc. This PR is marked backward incompatible because cache configuration changes and in order for cache to work need to update the config file. Old cache will still be used with new configuration. The server will startup fine with the old cache configuration. Closes https://github.com/ClickHouse/ClickHouse/issues/36140. Closes https://github.com/ClickHouse/ClickHouse/issues/37889. (Kseniia Sumarokova). #36171)**
- Support SQL standard DELETE FROM syntax on merge tree tables and lightweight delete implementation for merge tree families. #37893 (Jianmei Zhang) (Alexander Gololobov). Note: this new feature does not make ClickHouse an HTAP DBMS.
- Query parameters can be set in interactive mode as SET param_abc = 'def' and transferred via the native protocol as settings. #39906 (Nikita Taranov).
- Quota key can be set in the native protocol (Yakov Olkhovsky).
- Added a setting exact_rows_before_limit (0/1). When enabled, ClickHouse will provide exact value for rows_before_limit_at_least statistic, but with the cost that the data before limit will have to be read completely. This closes #6613. #25333 (kevin wan).
- Added support for parallel distributed insert select with s3Cluster table function into tables with Distributed and Replicated engine #34670. #39107 (Nikita Mikhaylov).
- Add new settings to control schema inference from text formats: - input_format_try_infer_dates - try infer dates from strings. - input_format_try_infer_datetimes - try infer datetimes from strings. - input_format_try_infer_integers - try infer Int64 instead of Float64. - input_format_json_try_infer_numbers_from_strings - try infer numbers from json strings in JSON formats. #39186 (Kruglov Pavel).
- An option to provide JSON formatted log output. The purpose is to allow easier ingestion and query in log analysis tools. #39277 (Mallik Hassan).
- Add function nowInBlock which allows getting the current time during long-running and continuous queries. Closes #39522. Notes: there are no functions now64InBlock neither todayInBlock. #39533 (Alexey Milovidov).
- Add ability to specify settings for an executable() table function. #39681 (Constantine Peresypkin).
- Implemented automatic conversion of database engine from Ordinary to Atomic. Create empty convert_ordinary_to_atomic file in flags directory and all Ordinary databases will be converted automatically on next server start. Resolves #39546. #39933 (Alexander Tokmakov).
- Support SELECT ... INTO OUTFILE '...' AND STDOUT. #37490. #39054 (SmitaRKulkarni).
- Add formats PrettyMonoBlock, PrettyNoEscapesMonoBlock, PrettyCompactNoEscapes, PrettyCompactNoEscapesMonoBlock, PrettySpaceNoEscapes, PrettySpaceMonoBlock, PrettySpaceNoEscapesMonoBlock. #39646 (Kruglov Pavel).

### ClickHouse release 22.9, 2022-09-22
- **Upgrade from 20.3 and older to 22.9 and newer should be done through an intermediate version if there are any ReplicatedMergeTree tables, otherwise server with the new version will not start. #40641 (Alexander Tokmakov).**
- **Remove the functions accurate_Cast and accurate_CastOrNull (they are different to accurateCast and accurateCastOrNull by underscore in the name and they are not affected by the value of cast_keep_nullable setting). These functions were undocumented, untested, unused, and unneeded. They appeared to be alive due to code generalization. #40682 (Alexey Milovidov).**
- **Add a test to ensure that every new table function will be documented. See #40649. Rename table function MeiliSearch to meilisearch. #40709 (Alexey Milovidov).**
- **Add a test to ensure that every new function will be documented. See #40649. The functions lemmatize, synonyms, stem were case-insensitive by mistake. Now they are case-sensitive. #40711 (Alexey Milovidov).**
- **For security and stability reasons, catboost models are no longer evaluated within the ClickHouse server. Instead, the evaluation is now done in the clickhouse-library-bridge, a separate process that loads the catboost library and communicates with the server process via HTTP. #40897 (Robert Schulze).**
- **Make interpretation of YAML configs to be more conventional. #41044 (Vitaly Baranov).**
- Support insert_quorum = 'auto' to use majority number. #39970 (Sachin).
- Add embedded dashboards to ClickHouse server. This is a demo project about how to achieve 90% results with 1% effort using ClickHouse features. #40461 (Alexey Milovidov).
- Added new settings constraint writability kind changeable_in_readonly. #40631 (Sergei Trifonov).
- Add support for INTERSECT DISTINCT and EXCEPT DISTINCT. #40792 (Duc Canh Le).
- Add new input/output format JSONObjectEachRow - Support import for formats JSON/JSONCompact/JSONColumnsWithMetadata. Add new setting input_format_json_validate_types_from_metadata that controls whether we should check if data types from metadata match data types from the header. - Add new setting input_format_json_validate_utf8, when it's enabled, all JSON formats will validate UTF-8 sequences. It will be disabled by default. Note that this setting doesn't influence output formats JSON/JSONCompact/JSONColumnsWithMetadata, they always validate utf8 sequences (this exception was made because of compatibility reasons). - Add new setting input_format_json_read_numbers_as_strings that allows to parse numbers in String column, the setting is disabled by default. - Add new setting output_format_json_quote_decimals that allows to output decimals in double quotes, disabled by default. - Allow to parse decimals in double quotes during data import. #40910 (Kruglov Pavel).
- Query parameters supported in DESCRIBE TABLE query. #40952 (Nikita Taranov).
- Add support to Parquet Time32/64 by converting it into DateTime64. Parquet time32/64 represents time elapsed since midnight, while DateTime32/64 represents an actual unix timestamp. Conversion simply offsets from 0. #41333 (Arthur Passos).
- Implement set operations on Apache Datasketches. #39919 (Fangyuan Deng). Note: there is no point of using Apache Datasketches, they are inferiour than ClickHouse and only make sense for integration with other systems.
- Allow recording errors to specified file while reading text formats (CSV, TSV). #40516 (zjial).

### ClickHouse release 22.10, 2022-10-25
- **Rename cache commands: show caches -> show filesystem caches, describe cache -> describe filesystem cache. #41508 (Kseniia Sumarokova).**
- **Remove support for the WITH TIMEOUT section for LIVE VIEW. This closes #40557. #42173 (Alexey Milovidov).**
- **Remove support for the {database} macro from the client's prompt. It was displayed incorrectly if the database was unspecified and it was not updated on USE statements. This closes #25891. #42508 (Alexey Milovidov).**
- Composable protocol configuration is added. Now different protocols can be set up with different listen hosts. Protocol wrappers such as PROXYv1 can be set up over any other protocols (TCP, TCP secure, MySQL, Postgres). #41198 (Yakov Olkhovskiy).
- Add S3 as a new type of the destination of backups. Support BACKUP to S3 with as-is path/data structure. #42333 (Vitaly Baranov), #42232 (Azat Khuzhin).
- Added functions (randUniform, randNormal, randLogNormal, randExponential, randChiSquared, randStudentT, randFisherF, randBernoulli, randBinomial, randNegativeBinomial, randPoisson) to generate random values according to the specified distributions. This closes #21834. #42411 (Nikita Mikhaylov).
- An improvement for ClickHouse Keeper: add support for uploading snapshots to S3. S3 information can be defined inside keeper_server.s3_snapshot. #41342 (Antonio Andelic).
- Added an aggregate function analysisOfVariance (anova) to perform a statistical test over several groups of normally distributed observations to find out whether all groups have the same mean or not. Original PR #37872. #42131 (Nikita Mikhaylov).
- Support limiting of temporary data stored on disk using settings max_temporary_data_on_disk_size_for_user/max_temporary_data_on_disk_size_for_query . #40893 (Vladimir C).
- Add setting format_json_object_each_row_column_for_object_name to write/parse object name as column value in JSONObjectEachRow format. #41703 (Kruglov Pavel).
- Add BLAKE3 hash-function to SQL. #33435 (BoloniniD).
- The function javaHash has been extended to integers. #41131 (JackyWoo).
- Add OpenTelemetry support to ON CLUSTER DDL (require distributed_ddl_entry_format_version to be set to 4). #41484 (Frank Chen).
- Added system table asynchronous_insert_log. It contains information about asynchronous inserts (including results of queries in fire-and-forget mode (with wait_for_async_insert=0)) for better introspection. #42040 (Anton Popov).
- Add support for methods lz4, bz2, snappy in HTTP's Accept-Encoding which is a non-standard extension to HTTP protocol. #42071 (Nikolay Degterinsky).
- Adds Morton Coding (ZCurve) encode/decode functions. #41753 (Constantine Peresypkin).
- Add support for SET setting_name = DEFAULT. #42187 (Filatenkov Artur).

### ClickHouse release 22.11, 2022-11-17
- **JSONExtract family of functions will now attempt to coerce to the requested type. #41502 (Márcio Martins).**
- Adds support for retries during INSERTs into ReplicatedMergeTree when a session with ClickHouse Keeper is lost. Apart from fault tolerance, it aims to provide better user experience, - avoid returning a user an error during insert if keeper is restarted (for example, due to upgrade). #42607 (Igor Nikonov).
- Add Hudi and DeltaLake table engines, read-only, only for tables on S3. #41054 (Daniil Rubin, Kseniia Sumarokova).
- Add table function hudi and deltaLake. #43080 (flynn).
- Support for composite time intervals. 1. Add, subtract and negate operations are now available on Intervals. In the case where the types of Intervals are different, they will be transformed into the Tuple of those types. 2. A tuple of intervals can be added to or subtracted from a Date/DateTime field. 3. Added parsing of Intervals with different types, for example: INTERVAL '1 HOUR 1 MINUTE 1 SECOND'. #42195 (Nikolay Degterinsky).
- Added ** glob support for recursive directory traversal of the filesystem and S3. Resolves #36316. #42376 (SmitaRKulkarni).
- Introduce s3_plain disk type for write-once-read-many operations. Implement ATTACH of MergeTree table for s3_plain disk. #42628 (Azat Khuzhin).
- Added applied row-level policies to system.query_log. #39819 (Vladimir Chebotaryov).
- Add four-letter command csnp for manually creating snapshots in ClickHouse Keeper. Additionally, lgif was added to get Raft information for a specific node (e.g. index of last created snapshot, last committed log index). #41766 (JackyWoo).
- Add function ascii like in Apache Spark: https://spark.apache.org/docs/latest/api/sql/#ascii. #42670 (李扬).
- Add function pmod which returns non-negative result based on modulo. #42755 (李扬).
- Add function formatReadableDecimalSize. #42774 (Alejandro).
- Add function randCanonical, which is similar to the rand function in Apache Spark or Impala. The function generates pseudo random results with independent and identically distributed uniformly distributed values in [0, 1). #43124 (李扬).
- Add function displayName, closes #36770. #37681 (hongbin).
- Add min_age_to_force_merge_on_partition_only setting to optimize old parts for the entire partition only. #42659 (Antonio Andelic).
- Add generic implementation for arbitrary structured named collections, access type and system.named_collections. #43147 (Kseniia Sumarokova).

