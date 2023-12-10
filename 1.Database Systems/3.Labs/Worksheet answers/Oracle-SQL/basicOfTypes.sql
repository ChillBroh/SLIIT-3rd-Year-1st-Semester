/*How to create a Oracal database type
We dont need to give any PK or FK when creating a object
*/

CREATE TYPE dept_type /

CREATE TYPE employee_Type AS OBJECT (
	empno CHAR(6),
	firstName VARCHAR(12),
	lastName VARCHAR(15),
	workDept REF dept_type,
	sex CHAR(1),
	birthDate DATE,
	salary NUMBER(8,2)
) /

CREATE TYPE dept_type AS OBJECT (
	dep_No CHAR(3),
	depName VARCHAR(12),
	mgrNo REF employee_Type,
	adnrDept REF dept_type
)/

/*How to create a Oracal database TABLE*/
CREATE TABLE Employee_Table OF employee_Type (

)/

/*How to create a Oracal database VArray Type*/

CREATE TYPE exchanges_varray AS VARRAY(3) OF VARCHAR(40) /

/*How to create a Oracal database Object with vArray*/
CREATE TYPE stock_Type AS OBJECT (
	companyName CHAR(7),
	currentPrice NUMBER(6,2),
	exchanges exchanges_varray,
	lastDivident NUMBER(4,2),
	eps NUMBER(4,2),
)

/*How to create a Oracal database nested table from object type, we need a object type, 
if we want to create a nested table*/
CREATE TYPE Employee_Table_type AS TABLE OF employee_Type (

)/

/* Create a table of object*/
CREATE TABLE student of People()/


/* Create a table of object and that content if needs to be within NESTED table*/
CREATE TABLE student OF people(
 CONSTRAINT student_PK PRIMARY KEY(stID)
)
NESTED TABLE students_details STORE AS student_Details_Tab
/

/*column expand with another table column*/
ALTER TABLE student_Details_Tab
ADD SCOPE FOR (companyName) IS stock

/* Inserting data */
INSERT INTO stock VALUES(stock_Type("BHP",10.50,exchanges_varray('Sydney','New York'),1.50,3.20)) /

 