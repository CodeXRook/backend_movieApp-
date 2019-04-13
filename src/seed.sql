DROP DATABASE IF EXISTS movie_app;
 CREATE DATABASE movie_app;

 \c movie_app;

 CREATE TABLE movies (
     id SERIAL PRIMARY KEY,
     stars INT NULL,
 )




