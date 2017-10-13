--------------------------------------------------------
-- Archivo creado  - viernes-octubre-13-2017   
--------------------------------------------------------
DROP TABLE "ANSWERS" cascade constraints;
DROP TABLE "ATTENDANCE" cascade constraints;
DROP TABLE "COURSES" cascade constraints;
DROP TABLE "PRUEBA" cascade constraints;
DROP TABLE "STUDENTS" cascade constraints;
--------------------------------------------------------
--  DDL for Table ANSWERS
--------------------------------------------------------

  CREATE TABLE "ANSWERS" 
   (	"ID" NUMBER(*,0), 
	"NUMBER_OF_QUESTION" VARCHAR2(30), 
	"ANSWER" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table ATTENDANCE
--------------------------------------------------------

  CREATE TABLE "ATTENDANCE" 
   (	"ID" NUMBER(*,0), 
	"STUDENT_ID" VARCHAR2(30), 
	"COURSE_ID" VARCHAR2(30), 
	"ATTENDANCE_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table COURSES
--------------------------------------------------------

  CREATE TABLE "COURSES" 
   (	"ID" NUMBER(*,0), 
	"NAME" VARCHAR2(30), 
	"CODE" VARCHAR2(15), 
	"DATE_START" DATE, 
	"DATE_END" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table PRUEBA
--------------------------------------------------------

  CREATE TABLE "PRUEBA" 
   (	"ID" NUMBER(*,0), 
	"STUDENT_ID" NUMBER(*,0), 
	"COURSE_ID" NUMBER(*,0), 
	"ATTENDANCE_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table STUDENTS
--------------------------------------------------------

  CREATE TABLE "STUDENTS" 
   (	"ID" NUMBER(*,0), 
	"FIRST_NAME" VARCHAR2(30), 
	"LAST_NAME" VARCHAR2(30), 
	"DATE_OF_BIRTH" DATE, 
	"ADDRESS" VARCHAR2(30)
   ) ;
REM INSERTING into ANSWERS
SET DEFINE OFF;
REM INSERTING into ATTENDANCE
SET DEFINE OFF;
REM INSERTING into COURSES
SET DEFINE OFF;
REM INSERTING into PRUEBA
SET DEFINE OFF;
REM INSERTING into STUDENTS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_ID_ATTENDANCE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ID_ATTENDANCE" ON "PRUEBA" ("ID") 
  ;
--------------------------------------------------------
--  Constraints for Table PRUEBA
--------------------------------------------------------

  ALTER TABLE "PRUEBA" ADD CONSTRAINT "PK_ID_ATTENDANCE" PRIMARY KEY ("ID") ENABLE;
