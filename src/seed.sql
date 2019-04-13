DROP DATABASE IF EXISTS movie_app;
 CREATE DATABASE movie_app;

 \c movie_app;

 CREATE TABLE movies (
     id SERIAL PRIMARY KEY,
     stars INT NULL,
     genre_id INT UNIQUE NOT NULL,
     img_url VARCHAR NOT NULL
 );

 CREATE TABLE genres(
     id INT REFERENCES genre(id) NOT NULL,
     name VARCHAR NOT NULL
 );

 CREATE TABLE ratings ()




