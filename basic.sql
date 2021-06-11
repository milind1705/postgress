Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]:
Password for user postgres:
psql (13.3)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# select version();
                          version
------------------------------------------------------------
 PostgreSQL 13.3, compiled by Visual C++ build 1914, 64-bit
(1 row)


postgres=# /l
postgres-# \l
                                           List of databases
   Name    |  Owner   | Encoding |       Collate        |        Ctype         |   Access privileges
-----------+----------+----------+----------------------+----------------------+-----------------------
 postgres  | postgres | UTF8     | Malay_Singapore.1252 | Malay_Singapore.1252 |
 template0 | postgres | UTF8     | Malay_Singapore.1252 | Malay_Singapore.1252 | =c/postgres          +
           |          |          |                      |                      | postgres=CTc/postgres
 template1 | postgres | UTF8     | Malay_Singapore.1252 | Malay_Singapore.1252 | =c/postgres          +
           |          |          |                      |                      | postgres=CTc/postgres
(3 rows)


postgres-# create database sql_demo
postgres-# create database sql_demo;
ERROR:  syntax error at or near "/"
LINE 1: /l
        ^
postgres=# create database sql_demo;
Cancel request sent
Cancel request sent
Cancel request sent
Cancel request sent
ERROR:  canceling statement due to user request
postgres=# create database sql_demo;
CREATE DATABASE
postgres=# \c sql_demo
You are now connected to database "sql_demo" as user "postgres".
sql_demo=# select 7*8;
 ?column?
----------
       56
(1 row)


sql_demo=# select 25/5;
 ?column?
----------
        5
(1 row)


sql_demo=# select 25+13+(78*3);
 ?column?
----------
      272
(1 row)


sql_demo=# create table movies(movie_id int, movie_name varchar(40), movie_genre varchar(30), imdb_ratings real);
CREATE TABLE
sql_demo=#

select * from movies
insert into movies (movie_id, movie_name, movie_genre, imdb_ratings)
values(103, '3 idiots', 'romance', 9.8), (104, 'Gajni', 'action, love', '6.5'),
(105, 'super 30', 'education',9.9);
update movies
set movie_name= 'Gang of Wasepur'
where movie_id = '102'

delete from movies
where movie_id = 103

select * from Movies
where imdb_ratings > 5

select * from movies
where imdb_ratings between 4 and 8;

select * from movies
where movie_genre = 'education'

select movie_name, movie_genre from movies
where imdb_ratings > 5.