set sqlprompt "&&_USER@&&_CONNECT_IDENTIFIER> "
define _editor=vi
set lines 140 pages 10000 long 1000000 trims on verify off tab off
set termout off
alter session set nls_date_format='dd-Mon-yyyy hh24:mi:ss';
set termout on
