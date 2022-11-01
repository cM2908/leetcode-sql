# leetcode-sql <br/>

<b>Repository Contains :</b><br/>

(1) 120+ Leetcode SQL Question Solutions<br/>
(2) PostgreSQL Dump File (leetcodedb.sql)<br/>

<b>Note : </b>
You cannot just copy-paste and run the content of dump file into "psql promt in terminal" or "query tool of pgadmin", because dump file contains 
COPY commands not INSERTS)

<b>How to Import dump file using command line terminal?</b><br/>

(1) Open terminal & open psql utility
```
user@my-machine:~$ psql
```
(2) Create Database in PostgreSQL (To import the dump file, database should be created priorly)<br/>
```
CREATE DATABASE sample_db;
```
(3) Quit the psql promt
```
mydb=# \q
```
(4) From terminal, Load dump file into the newly created database using below command
```
psql sample_db < leetcodedb.sql
```

<b>Note : </b><br/>

(1) Table names are suffixed with question number.<br/>
(2) New solutions will get added I solve them.<br/>
