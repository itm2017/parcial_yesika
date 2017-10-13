
CREATE TABLESPACE CURSOS
DATAFILE 
'C:\oraclexe\app\oracle\oradata\XE\courses1.dbf' size 50M,
'C:\oraclexe\app\oracle\oradata\XE\courses2.dbf' size 50M;

CREATE PROFILE admin LIMIT
SESSIONS_PER_USER 2 
IDLE_TIME 15 
failed_login_attempts 3;

CREATE USER itm2017
IDENTIFIED bY "123"
DEFAULT TABLESPACE CURSOS;

ALTER USER itm2017 PROFILE MANAGER;
GRANT CREATE SESSION TO itm2017;


GRANT DBA TO itm2017;




