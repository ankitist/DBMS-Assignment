
SQL*Plus: Release 21.0.0.0.0 - Production on Mon Jan 19 15:01:20 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Mon Jan 19 2026 14:34:09 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> CREATE TABLE Student (
  2      RollNo INT,
  3      Name VARCHAR2(50),
  4      Dept VARCHAR2(20),
  5      Age INT,
  6      Phone VARCHAR2(15)
  7  );
CREATE TABLE Student (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object


SQL> DROPE TABLE student;
SP2-0734: unknown command beginning "DROPE TABL..." - rest of line ignored.
SQL> CREATE TABLE Student (
  2      RollNo INT,
  3      Name VARCHAR2(50),
  4      Dept VARCHAR2(20),
  5      Age INT,
  6      Phone VARCHAR2(15)
  7  );
CREATE TABLE Student (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object


SQL> CREATE TABLE students( Rollno INT, name VARCHAR(20), Dept VARCHAR(50),Age INT, Phone VARCHAR(20));

Table created.

SQL> CREATE TABLE Course(CourseID INT,CourseName VARCHAR(50),Credits INT);

Table created.

SQL> ALTER table student add city Varchar(50);

Table altered.

SQL> Table student;
SP2-0734: unknown command beginning "Table stud..." - rest of line ignored.
SQL> desc student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(3)
 NAME                                               VARCHAR2(20)
 CITY                                               VARCHAR2(50)

SQL> alter table student add Semester Varchar(30);

Table altered.

SQL> alter table rename Phone to MobileNO
  2
SQL> ALTER table rename column Phone to MobileNO;
ALTER table rename column Phone to MobileNO
            *
ERROR at line 1:
ORA-00903: invalid table name


SQL> alter table student rename Phone to MobileNO;
alter table student rename Phone to MobileNO
                           *
ERROR at line 1:
ORA-14155: missing PARTITION, PARTITIONS, SUBPARTITION, or SUBPARTITIONS
keyword


SQL> alter table student rename column Phone to MobileNo;
alter table student rename column Phone to MobileNo
                                  *
ERROR at line 1:
ORA-00904: "PHONE": invalid identifier


SQL> alter table students rename column Phone to MobileNo;

Table altered.

SQL> drop Course;
drop Course
     *
ERROR at line 1:
ORA-00950: invalid DROP option


SQL> drop table Course;

Table dropped.

SQL> Insert into students values(1, 'Ankit','AI', 21, '9747474747', 'Rohtas'
  2
SQL> SQL> Insert into students values(1, 'Ankit','AI', 21, '9747474747', 'Rohtas');
SP2-0734: unknown command beginning "SQL> Inser..." - rest of line ignored.
SQL> desc table students;
Usage: DESCRIBE [schema.]object[@db_link]
SQL> desc students;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(20)
 DEPT                                               VARCHAR2(50)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(20)

SQL> Insert into students values(1, 'Ankit','AI', 21, '9747474747');

1 row created.

SQL> Insert into students values(2, 'Abhi','AI', 21, '9747474432');

1 row created.

SQL> Insert into students values(3, 'Abhit','AI', 21, '9747474436');

1 row created.

SQL> Insert into students values(3, 'Abhin','AI', 21, '9747474492');

1 row created.

SQL> Insert into students values(4, 'Abhir','AI', 21, '9747474335');

1 row created.

SQL> Insert into students values(5, 'Abhij','AI', 21, '9747474456');

1 row created.

SQL> seletct * from students;
SP2-0734: unknown command beginning "seletct * ..." - rest of line ignored.
SQL> select * from student;

no rows selected

SQL> select ** from student;
select ** from student
        *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected


SQL> select * from students;

    ROLLNO NAME
---------- --------------------
DEPT                                                      AGE
-------------------------------------------------- ----------
MOBILENO
--------------------
         1 Ankit
AI                                                         21
9747474747

         2 Abhi
AI                                                         21
9747474432

    ROLLNO NAME
---------- --------------------
DEPT                                                      AGE
-------------------------------------------------- ----------
MOBILENO
--------------------

         3 Abhit
AI                                                         21
9747474436

         3 Abhin
AI                                                         21

    ROLLNO NAME
---------- --------------------
DEPT                                                      AGE
-------------------------------------------------- ----------
MOBILENO
--------------------
9747474492

         4 Abhir
AI                                                         21
9747474335

         5 Abhij

    ROLLNO NAME
---------- --------------------
DEPT                                                      AGE
-------------------------------------------------- ----------
MOBILENO
--------------------
AI                                                         21
9747474456


6 rows selected.

SQL> select 1,Ankit from students;
select 1,Ankit from students
         *
ERROR at line 1:
ORA-00904: "ANKIT": invalid identifier


SQL> select RollNo, Name from students;

    ROLLNO NAME
---------- --------------------
         1 Ankit
         2 Abhi
         3 Abhit
         3 Abhin
         4 Abhir
         5 Abhij

6 rows selected.

SQL> select * from students where Dept= 'AI';

    ROLLNO NAME
---------- --------------------
DEPT                                                      AGE
-------------------------------------------------- ----------
MOBILENO
--------------------
         1 Ankit
AI                                                         21
9747474747

         2 Abhi
AI                                                         21
9747474432

    ROLLNO NAME
---------- --------------------
DEPT                                                      AGE
-------------------------------------------------- ----------
MOBILENO
--------------------

         3 Abhit
AI                                                         21
9747474436

         3 Abhin
AI                                                         21

    ROLLNO NAME
---------- --------------------
DEPT                                                      AGE
-------------------------------------------------- ----------
MOBILENO
--------------------
9747474492

         4 Abhir
AI                                                         21
9747474335

         5 Abhij

    ROLLNO NAME
---------- --------------------
DEPT                                                      AGE
-------------------------------------------------- ----------
MOBILENO
--------------------
AI                                                         21
9747474456


6 rows selected.

SQL> select * from students where Age>20;

    ROLLNO NAME
---------- --------------------
DEPT                                                      AGE
-------------------------------------------------- ----------
MOBILENO
--------------------
         1 Ankit
AI                                                         21
9747474747

         2 Abhi
AI                                                         21
9747474432

    ROLLNO NAME
---------- --------------------
DEPT                                                      AGE
-------------------------------------------------- ----------
MOBILENO
--------------------

         3 Abhit
AI                                                         21
9747474436

         3 Abhin
AI                                                         21

    ROLLNO NAME
---------- --------------------
DEPT                                                      AGE
-------------------------------------------------- ----------
MOBILENO
--------------------
9747474492

         4 Abhir
AI                                                         21
9747474335

         5 Abhij

    ROLLNO NAME
---------- --------------------
DEPT                                                      AGE
-------------------------------------------------- ----------
MOBILENO
--------------------
AI                                                         21
9747474456


6 rows selected.

SQL> update student set Dept= 'Ece' where RollNo=2;
update student set Dept= 'Ece' where RollNo=2
                   *
ERROR at line 1:
ORA-00904: "DEPT": invalid identifier


SQL> update students set Dept= 'Ece' where RollNo=2;

1 row updated.

SQL> update students set name= 'Abhij' where name= 'Abhijit';

0 rows updated.

SQL> update students set name= 'Abhijeet' where name= 'Abhij';

1 row updated.

SQL> update students set Age= Age+1;

6 rows updated.

SQL> delete from students where RollNo=4;

1 row deleted.

SQL> POOL C:\CollegeDB_backup.txt
SP2-0734: unknown command beginning "POOL C:\Co..." - rest of line ignored.
SQL> SELECT * FROM Student;

no rows selected

SQL> SPOOL OFF
not spooling currently
SQL> host cd
C:\app\ankit\product\21c\dbhomeXE\bin

SQL> save Assignment1.sql
Created file Assignment1.sql
SQL>
