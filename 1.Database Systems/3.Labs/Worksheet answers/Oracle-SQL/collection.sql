/*CREATE TYPE studentList AS VARRAY(5) OF VARCHAR(10);*/

/*CREATE TABLE studentDetails (
    ids NUMBER(5),
    fullName studentList,
   CONSTRAINT studentDetails_PK PRIMARY KEY(ids)
);*/

/*INSERT INTO studentDetails VALUES(2,studentList('Madhusha','Prasad'));*/

/*SELECT * FROM studentDetails;*/

SELECT ids,s.COLUMN_VALUE fullname from studentDetails st,TABLE(st.fullName) s;

/*SELECT FROM TABLE()*/

/*CREATE TYPE share_t AS OBJECT(
    shareID NUMBER(5),
    shareName VARCHAR(10)
);*/

/*CREATE TYPE shares_Type AS TABLE OF share_t;*/