--Create a tablespace with name 'quiz' and three datafiles. Each datafile of 15Mb.
create tablespace quiz
datafile 'chris.dbf' size 15M;
alter tablespace quiz
add datafile  'pres.dbf' size 15m;

alter tablespace quiz
add datafile  'manco.dbf' size 15m;

 --Create a profile with idle time of 20 minutes, the name of the profile should be 'student
CREATE PROFILE student LIMIT
IDLE_TIME 20
 --Create an user named "usuario_1" with password "usuario_1".
create user usuario1
identified by "usuario1"
default tablespace quiz
quota unlimited on quiz;

create user usuario2
identified by "usuario2"
default tablespace quiz
quota unlimited on quiz;

create role desarrollador;
--asignar rol al usuario
grant desarrollador to usuario1;
connect usuario1;




CREATE TABLE ATTACKS(
ID INTEGER,
URL VARCHAR2(2048),
IP_ADDRESS VARCHAR2(255),
NUMBER_OF_ATTACKS INTEGER,
TIME_OF_LAST_ATTACK TIMESTAMP)
