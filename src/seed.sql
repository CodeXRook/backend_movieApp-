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

 CREATE TABLE ratings (
     id SERIAL PRIMARY KEY,
     stars INT NULL,
     movie_ INT REFERENCES movies(id)
 );

 CREATE TABLE comments(
     id SERIAL PRIMARY KEY,
     text VARCHAR NOT NULL,
     movie_id INT REFERENCES movies(id) NOT NULL
 );

INSERT INTO movies (id, title, genre_id) VALUES
(' ', ' ', ' ');

INSERT INTO genres ( id, name) VALUES
(' ',' ');

INSERT INTO ratings ( id, stars, movie_id) VALUES
(' ', ' ', ' ');




