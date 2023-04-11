/*
01 Create Account
Create accounts for C##HR schema
Run this as either SYS or SYSTEM.
*/


/*
Set the pluggable database if you're running this on Oracle v12 or later.
*/
-- ALTER SESSION SET CONTAINER = ORCLPDB1;

/*
Drop the C##HR account and all objects to reset.
Then, create the user and give it the permissions.
*/
DROP USER C##HR CASCADE;

CREATE USER C##HR IDENTIFIED BY hrpass;

ALTER USER C##HR DEFAULT TABLESPACE users QUOTA UNLIMITED ON users;

ALTER USER C##HR TEMPORARY TABLESPACE TEMP;

GRANT CONNECT TO C##HR;

GRANT CREATE SESSION, CREATE VIEW, CREATE TABLE, ALTER SESSION, CREATE SEQUENCE TO C##HR;
GRANT CREATE SYNONYM, CREATE DATABASE LINK, RESOURCE, UNLIMITED TABLESPACE TO C##HR;
