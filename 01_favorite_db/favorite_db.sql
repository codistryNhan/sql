--Create a new Database called favorite_db within MySQL Workbench
--and use the database for the remainder of this activity.
CREATE DATABASE favorite_db;

USE favorite_db;

--Create a table called favorite_foods and add the following to it...
--Create the column "food" which can take in a 50 character string and cannot be NULL
--Create the column "score" which can take in an integer
CREATE TABLE favorite_foods (
	food VARCHAR(50) NOT NULL,
  score INT
);

--For the table favorite_songs and add the following to it...
--Create the column "song" which can take in a 100 character string and cannot be NULL
--Create the column "artist" which can take in a 50 character string
--Create the column "score" which can take in an integer
CREATE TABLE favorite_songs (
	song VARCHAR(100) NOT NULL,
  artist VARCHAR(50),
  score INT
);

-- the table favorite_movies and add the following to it...
--Create the column "film" which can take in a string and cannot be NULL
--Create the column "five_times" which can take in a boolean
--create the column "score" which can take in an integer
CREATE TABLE favorite_movies (
	film TEXT NOT NULL,
  five_times BOOLEAN DEFAULT false,
  score INT
);

--Add at least three rows of data to each table.
USE favorite_db;
SELECT * FROM favorite_foods;

INSERT INTO favorite_foods(food, score)
VALUES
("Poki", 10),
("Fried Chicken", 10),
("Pho", 8);

SELECT * FROM favorite_movies;

INSERT INTO favorite_movies(film, five_times, score)
VALUES
("Pirates of the Caribbean", true, 10),
("Robocop", true, 10),
("The Matrix", true, 10);

SELECT * FROM favorite_songs;

INSERT INTO favorite_songs(song, artist, score)
VALUES
("Fractures", "Illenium", 8),
("Death Star", "Oddysseus", 10),
("Drew Barrymore","Bryce Vine", 10);
