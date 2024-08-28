CREATE DATABASE UBER ;

USE UBER ;

CREATE TABLE DRIVER(
 dr_id INT PRIMARY KEY,
 drf_name VARCHAR(30),
 drl_name VARCHAR(30),
 age INT,
 fare INT,
 payment VARCHAR(20),
 no_of_ex INT,
 email VARCHAR(30),
 phone_no BIGINT,
 date_of_joining DATE
);

alter table driver drop column date_of_joining;

CREATE TABLE PASSENGER(
  p_id INT PRIMARY KEY,
  pf_name VARCHAR(40),
  pl_name VARCHAR (40),
  age INT,
  gender VARCHAR(20),
  pickup_location VARCHAR(40),
  destination VARCHAR(40),
  phone_no BIGINT,
  email VARCHAR(40),
  connection2 INT, 
  FOREIGN KEY (CONNECTION2) REFERENCES DRIVER(dr_id)
  );
  
  use uber;
  
  SELECT * FROM DRIVER
  JOIN PASSENGER 
  ON DRIVER.dr_id=PASSENGER.CONNECTION;
  
   SELECT * FROM DRIVER
   RIGHT  JOIN PASSENGER 
   ON DRIVER.dr_id=PASSENGER.CONNECTION;
  
   SELECT * FROM DRIVER
   LEFT JOIN PASSENGER 
   ON DRIVER.dr_id=PASSENGER.CONNECTION;
   
   SELECT * FROM DRIVER
   CROSS JOIN PASSENGER; 
  

 

