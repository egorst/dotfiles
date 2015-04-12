set sqlprompt "&&_USER@&&_CONNECT_IDENTIFIER> "
define _editor=vi
set lines 160 pages 10000 long 1000000 trims on verify off tab off
set termout off
alter session set nls_date_format='dd-Mon-yyyy hh24:mi:ss';
set termout on

col username for a20
col event for a50
col program for a40
col file_name for a48
col machine for a40
col sample_time for a25
col tablespace_name for a30
col sql_id for a16
col first_seen for a22
col last_seen for a22
col statistic_name for a30
col name for a50
col client_identifier for a40
col client_id for a40
col table_name for a30
col index_name for a30
col column_name for a30

col status for a12
col set_ev for a50

col object_type for a30
col object_name for a30
col segment_type for a30
col segment_name for a30
col partition_name for a30
