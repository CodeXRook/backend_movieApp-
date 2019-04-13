DROP DATABASE IF EXISTS movie_app;
 CREATE DATABASE movie_app;

 \c movie_app;

 CREATE TABLE movies (
     id SERIAL PRIMARY KEY,
     stars INT NULL,
     genres_id INT UNIQUE NOT NULL,
     img_url VARCHAR NOT NULL
 );

 CREATE TABLE genres(
     id INT REFERENCES genres(id) NOT NULL,
     name VARCHAR NOT NULL
 );

 CREATE TABLE ratings (
     id SERIAL PRIMARY KEY,
     stars INT NULL,
     movies_ INT REFERENCES movies(id)
 );

 CREATE TABLE comments(
     id SERIAL PRIMARY KEY,
     text VARCHAR NOT NULL,
     movies_id INT REFERENCES movies(id) NOT NULL
 );

INSERT INTO movies (id, title, genres_id) VALUES
(34, 'The Matrix', 'Action');

INSERT INTO genres ( id, name) VALUES
(12,'Action');

INSERT INTO ratings ( id, stars, movies_id) VALUES
( 2, 5, 34);

INSERT INTO comments( id, text, movies_id) VALUES
( 5,'BEST MOVIE EVER', 34);



