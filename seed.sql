DROP DATABASE IF EXISTS movie_app;
 CREATE DATABASE movie_app;

 \c movie_app;

 CREATE TABLE movies (
 id SERIAL PRIMARY KEY NOT NULL,
 title VARCHAR NOT NULL,
 genre_id INT UNIQUE NOT NULL,
 img_url VARCHAR NOT NULL
 );

 CREATE TABLE genres(
     id INT REFERENCES movies(genre_id),
     name VARCHAR NOT NULL
 );

 CREATE TABLE ratings(
     id SERIAL PRIMARY KEY NOT NULL,
     stars INT NULL,
     movies_id INT REFERENCES movies(id)
 );

 CREATE TABLE comments(
     id SERIAL PRIMARY KEY,
     text VARCHAR NOT NULL,
     movies_id INT REFERENCES movies(id) NOT NULL
 );

INSERT INTO movies(id, title, stars, genres_id, img_url) VALUES
(34, 'The Matrix', 5,'Action', ' ');

INSERT INTO genres(id, name) VALUES
(12,'Action');

INSERT INTO ratings(id, stars, movies_id) VALUES
( 2, 5, 34);

INSERT INTO comments(id, text, movies_id) VALUES
( 5,'BEST MOVIE EVER', 34);




