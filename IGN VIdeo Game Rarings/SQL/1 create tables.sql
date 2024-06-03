-- Create Table

CREATE TABLE games (
	title CHARACTER VARYING,
	score FLOAT,
	score_phrase CHARACTER VARYING,
	platform CHARACTER VARYING,
	genre TEXT,
	release_year INT,
	release_month INT,
	release_day INT
);

SELECT * FROM games;