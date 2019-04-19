-- create and select the database
DROP DATABASE IF EXISTS dmdb;
CREATE DATABASE dmdb;
USE dmdb;

-- create the Actor table
CREATE TABLE Actor (
  ID			INT      PRIMARY KEY  AUTO_INCREMENT,
  FirstName         VARCHAR(25)    NOT NULL     UNIQUE,
  LastName			VARCHAR(25)   NOT NULL,
  Gender			VARCHAR(6)  NOT NULL,
  Birthdate			DATE		NOT NUll
);

-- create the Movie table
CREATE TABLE Movie (
  ID			INT      PRIMARY KEY  AUTO_INCREMENT,
  Title         VARCHAR(100)    NOT NULL,
  Rating		VARCHAR(5)   	NOT NULL,
  Year			INT  			NOT NULL,
  Director		VARCHAR(100)	NOT NUll
);

-- create the Genre table
CREATE TABLE Genre (
  ID			INT      PRIMARY KEY  AUTO_INCREMENT,
  Name			VARCHAR(100)
);

-- create Credit table
CREATE TABLE Credit (
  ID			INT				PRIMARY KEY  AUTO_INCREMENT,
  MovieID		INT				NOT NULL,
  ActorID		INT				NOT NULL,
  ROLE			VARCHAR(50)		NOT NULL,
  FOREIGN KEY (MovieID) REFERENCES Movie (ID),
  FOREIGN KEY (ActorID) REFERENCES Actor (ID),
  CONSTRAINT act_mov	UNIQUE (ActorID, MovieID)
 );
 
 -- create MovieGenre table
CREATE TABLE MovieGenre (
  ID			INT				PRIMARY KEY  AUTO_INCREMENT,
  MovieID		INT				NOT NULL,
  GenreID		INT				NOT NULL,
  FOREIGN KEY (MovieID) REFERENCES Movie (ID),
  FOREIGN KEY (GenreID) REFERENCES Genre (ID)
 );
  
-- insert some rows into the Actor table
INSERT INTO Actor VALUES
(1, 'Samuel L', 'Jackson', 'Male', '1948-12-21'),
(2, 'Robert', 'Deniro', 'Male', '1943-08-17'),
(3, 'Chris', 'Hemsworth', 'Male', '1983-08-11'),
(4, 'Will', 'Ferrell', 'Male', '1967-07-16'),
(5, 'Leonardo', 'DiCaprio', 'Male', '1974-11-11'),
(6, 'Helena', 'Carter', 'Female', '1966-05-26')
;

-- insert some rows into the Movie table
INSERT INTO Movie VALUES
(1, 'Pulp Fiction', 'R', 1994, 'Quentin Tarantino'),
(2, 'Casino', 'R', 1995, 'Martin Scorsese'),
(3, 'The Avengers', 'PG-13', 2012, 'Joe Russo'),
(4, 'Step Brothers', 'R', 2008, 'Adam McKay'),
(5, 'Shutter Island', 'R', 2010, 'Martin Scorsese'),
(6, 'Alice in Wonderland', 'PG', 2010, 'Tim Burton')
;

-- insert some rows into the Genre Table
Insert into Genre Values
(1, 'Drama'),
(2, 'Action'),
(3, 'Fantasy'),
(4, 'Comedy'),
(5, 'Mystery')
;

-- insert some rows into the Credit Table
Insert into Credit Values
(1, 1, 1, 'Jules Winnfield'),
(2, 2, 2, 'Sam Rothstein'),
(3, 3, 3, 'Thor'),
(4, 4, 4, 'Brennan Huff'),
(5, 5, 5, 'Andrew Laeddis'),
(6, 6, 6, 'Red Queen')
;

-- insert some rows into the MovieGenre Table
insert into MovieGenre Values
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 4),
(5, 5, 5),
(6, 6, 3)
;


