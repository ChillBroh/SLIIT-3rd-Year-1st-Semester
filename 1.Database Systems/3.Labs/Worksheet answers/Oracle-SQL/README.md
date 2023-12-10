# Oracle-SQL

[![1-BFTWWQO8gd-Rb6ah-N0-Gdbp-A.png](https://i.postimg.cc/Y9dgZrYk/1-BFTWWQO8gd-Rb6ah-N0-Gdbp-A.png)](https://postimg.cc/34DdDHtb)

Oracle SQL Developer is an Integrated development environment for working with SQL in Oracle databases.

### Year 3 semester 1 DS module Worksheets

- [x] Worksheets 01 -> done ☑️
- [x] Worksheets 02 -> done ☑️
- [x] Worksheets 03 -> done ☑️

## Documentation
You can find the online documentation of the Oracle Database under [docs.oracle.com/en/database/](http://docs.oracle.com/en/database/)

## LiveSQL
Some of the examples that you see within this repository can be executed in the free web-based tool: [LiveSQL.oracle.com](https://livesql.oracle.com).

LiveSQL is also an excellent resource for getting started with Oracle Database.

## Dev Gym
If you would like to challenge yourself, you can take quizzes, workouts and classes at [DevGym.oracle.com](https://devgym.oracle.com)

#### Basic SQL syntax

We are here using basic SQL syntax to show how our DB works.<br>

```r
CREATE TABLE students 
  ( 
     contact_id     NUMBER(10) NOT NULL, 
     last_name      VARCHAR2(50) NOT NULL, 
     first_name     VARCHAR2(50) NOT NULL, 
     address        VARCHAR2(50), 
     city           VARCHAR2(50), 
     uni_assignment VARCHAR2(50), 
     CONSTRAINT students_pk PRIMARY KEY (contact_id) 
  ); 
```

[![isaac-arnault-oracle.png](https://i.postimg.cc/4xDshmyF/isaac-arnault-oracle.png)](https://postimg.cc/Hr9fqWQQ)


You can create and provision tables in Oracle DB using PL/SQL syntax for more advanced needs.<br>

If you enjoyed this gist, feel free to fork and share it! Thanks.