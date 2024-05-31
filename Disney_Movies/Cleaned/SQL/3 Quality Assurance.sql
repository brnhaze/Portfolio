-- Retrieve & List Tables
SELECT *
FROM information_schema.tables
WHERE table_schema = 'public';

SELECT * FROM movies;

------------------------------------------------------------

-- Remove the characters [' and '] -- Failed
	-- Attempt 1:
		UPDATE movies
		SET
			title = REGEXP_REPLACE(title, '^\\[\\'' , ''),
			title = REGEXP_REPLACE(title, '\\'\\]$', ''),
			description = REGEXP_REPLACE(description, '^\\[\\'' , ''),
			description = REGEXP_REPLACE(description, '\\'\\]$', ''),
			genre = REGEXP_REPLACE(genre, '^\\[\\'' , ''),
			genre = REGEXP_REPLACE(genre, '\\'\\]$', '');

	-- Attempt 2:
		UPDATE movies -- 
		SET
			directed_by = REGEXP_REPLACE(directed_by, '^\\[\\'' , ''),
			directed_by = REGEXP_REPLACE(directed_by, '\\'\\]$', '');

	-- Attempt 3:
		UPDATE movies
		SET
			directed_by = REGEXP_REPLACE(directed_by, '^\\\\[\\\\'' , ''),
			directed_by = REGEXP_REPLACE(directed_by, '\\\\'\\]$', '');
			
	-- Resoluton: Imported Excel "Clean" .csv file
		-- resolution shows benefits of learning more than one platform 

----------------------------------------------

-- Determine datatypes, null values, and unique values

-- Retrieve information about columns in table (column name, data type, if allows NULL values)
	SELECT column_name, data_type, is_nullable
	FROM information_schema.columns;

-- Return column name, data type, if allows NULL values for all columns in "movies" table
	SELECT column_name, data_type, is_nullable
	FROM information_schema.columns
	WHERE table_name = 'movies';
	-- Good to verify if NULL values exist as above command may not work

-----------------------------------------------------

-- Datatypes

	SELECT * FROM movies;

	-- id: INTEGER
		SELECT id FROM movies;
		SELECT MIN(id), MAX(id) FROM movies
	
	-- movie_name: character varying (letters, numbers, symbols)
		SELECT movie_name FROM movies;
		
		SELECT movie_name, COUNT(*) FROM movies GROUP BY movie_name HAVING COUNT(*) > 1
		SELECT DISTINCT(movie_name), COUNT(*) FROM movies GROUP BY movie_name
		
		SELECT DISTINCT(movie_name), COUNT(*) FROM movies WHERE movie_name !~ '[a-zA-Z,.]' GROUP BY movie_name
		
		SELECT DISTINCT(movie_name) FROM movies WHERE movie_name LIKE '%''%' OR movie_name LIKE '%"%'
	
	-- directed_by: character varying
		SELECT directed_by FROM  movies;
		
		-- Determine if values do not contain letter, ',' and '.'
			SELECT directed_by -- 24 values returned ('[]', '[1]', '\n')
			FROM movies
			WHERE directed_by ~ '[^a-zA-Z,. \\'']';
			
			SELECT directed_by FROM movies WHERE directed_by LIKE '%[%]'; -- 11 values
			
			SELECT directed_by FROM movies WHERE directed_by !~ '[a-zA-Z,.]';
			SELECT directed_by FROM movies WHERE directed_by ~ '[0-9]';
			
			UPDATE movies
			SET directed_by = REGEXP_REPLACE(directed_by, '[0-9]', '', 'g')
			WHERE directed_by ~ '[0-9]';
			
			SELECT directed_by FROM movies WHERE directed_by ~ '[0-9]';
			
			SELECT DISTINCT(movie_name) FROM movies WHERE movie_name LIKE '%''%' OR movie_name LIKE '%"%'
			
			---
			
			SELECT directed_by FROM movies WHERE directed_by = '[Michael O''Herlihy]';
			
			UPDATE movies
				SET directed_by = REPLACE(directed_by, '[Michael O''Herlihy]', 'Michael O''Herlihy')
				WHERE directed_by = '[Michael O''Herlihy]';
				
			SELECT directed_by FROM movies WHERE directed_by = '[Michael O''Herlihy]'; -- 0 values
			
			SELECT DISTINCT(directed_by) FROM movies WHERE directed_by LIKE '%''%' OR directed_by LIKE '%"%'
			
			---

			SELECT directed_by FROM movies WHERE directed_by LIKE '%[%]' -- 8 values;
			
			UPDATE movies
				SET directed_by = REPLACE(directed_by, '[Gavin O''Connor]', 'Gavin O''Connor')
				WHERE directed_by = '[Gavin O''Connor]';
				
			SELECT directed_by FROM movies WHERE directed_by LIKE '%[%]'; -- 7 values;
			
			UPDATE movies
				SET directed_by = REPLACE(directed_by, '[Matthew O''Callaghan]', 'Matthew O''Callaghan')
				WHERE directed_by = '[Matthew O''Callaghan]';
				
			SELECT directed_by FROM movies WHERE directed_by LIKE '%[%]'; -- 6 values
			
			UPDATE movies
				SET directed_by = REPLACE(directed_by, '[Remo D''Souza]', 'Remo D''Souza')
				WHERE directed_by = '[Remo D''Souza]';
				
			SELECT directed_by FROM movies WHERE directed_by LIKE '%[%]'; -- 5 values
			
			--- Script failed; continued individually
			
			CREATE OR REPLACE FUNCTION remove_square_brackets(input_text TEXT)
			RETURNS TEXT AS
			$$
			BEGIN
				RETURN REGEXP_REPLACE(input_text, '\\[[^\\]]*\\]', '', 'g');
			END;
			$$ LANGUAGE plpgsql;

			SELECT remove_square_brackets(directed_by) AS cleaned_directed_by
			FROM movies;
			
			---
			
			SELECT directed_by FROM movies WHERE directed_by LIKE '%[%]'; -- 5 values
			
			UPDATE movies
			SET directed_by = REPLACE(
				REPLACE(
					REPLACE(
						REPLACE(
							REPLACE(directed_by, ', [', ', '),   -- Replace ', [' with ', '
						'], ', ', '),                          -- Replace '], ' with ', '
					'[', ''),                                  -- Replace '[' with ''
				']', ''),                                     -- Replace ']' with ''
			'\n', '');                                      -- Remove newline characters
			
			---
			
		-- Change Datatype to TEXT
		
		ALTER TABLE movies
		ALTER COLUMN directed_by TYPE TEXT;
		
		SELECT directed_by FROM movies;
	
------------------------------------------------------------- SEE "4 Quality Assurnace 2" ------------------------------------------
	-- Avoided creating a script because each column may have different issues to explore and resolve
	-- Re-used the above queries
	
-------------------------------------------------------------------------------------------------------------------------------------
	
	-- story_by: Datatype: character varying, 
		SELECT story_by FROM  movies; -- 525 records, 
		SELECT story_by, COUNT(*) FROM  movies GROUP BY story_by
		SELEcT story_by, COUNT(DISTINCT story_by) FROM movies GROUP BY story_by -- 162 Determine Unique Values
		
-- 		UPDATE movies
-- 		SET story_by = TRIM(TRAILING FROM story_by)
		
		SELECT story_by FROM  movies WHERE story_by IS NULL; -- 356 NULL values
		
		SELECT story_by FROM  movies WHERE story_by !~ '[a-zA-Z]'
		SELECT story_by FROM  movies WHERE story_by ~ '[0-9]'
		
		UPDATE movies
		SET story_by = REGEXP_REPLACE(story_by, '[0-9]', '', 'g')
		WHERE story_by ~ '[0-9]';
		
		-- CHANGE to TEXT
		ALTER TABLE movies
		ALTER COLUMN story_by TYPE TEXT
		
		SELECT story_by FROM  movies
		
		SELECT DISTINCT(story_by) FROM movies WHERE story_by LIKE '%''%' OR story_by LIKE '%"%'
		SELECT story_by FROM movies WHERE story_by LIKE '%Low%'
		-- 'Lowell S. Hawley', Michael O'Herlihy
		UPDATE movies
			SET story_by = TRIM(BOTH '''' FROM story_by)
			WHERE story_by LIKE '%''%';
		SELECT DISTINCT story_by FROM movies WHERE story_by LIKE '%''%' OR story_by LIKE '%"%';
		UPDATE movies
			SET story_by = REPLACE(story_by, 'Hawley''', 'Hawley')
			WHERE story_by LIKE '%Hawley''%';
	
	-- based_on
		SELECT based_on FROM movies;
		SELECT based_on FROM movies WHERE based_on IS NULL; -- 235
		SELECT based_on FROM movies WHERE based_on !~ '[a-zA-Z.,]'
		SELECT based_on FROM movies WHERE based_on ~ '[a-zA-Z]'
		SELECT based_on, COUNT(DISTINCT based_on)FROM movies GROUP BY based_on -- 260
		
		SELECT based_on FROM movies WHERE based_on ~ '[0-9]'; -- 16
		
		UPDATE movies
			SET based_on = REGEXP_REPLACE(based_on, '[0-9]', '', 'g')
			WHERE based_on ~ '[0-9]';
			
		SELECT based_on FROM movies WHERE based_on ~ '[0-9]'; -- 0
		
		-- Change datatype to TEXT
		ALTER TABLE movies
		ALTER COLUMN based_on TYPE TEXT
		
		SELECT DISTINCT(based_on) FROM movies WHERE based_on LIKE '%''%' OR based_on LIKE '%"%'
		-- result showed too many single quotes and apostrephe's
		
		UPDATE movies -- did not work, try individuially
			SET based_on = REGEXP_REPLACE(based_on, '([^a-zA-Z])''|''([^a-zA-Z])', '\1\2', 'g')
			WHERE based_on LIKE '%''%';
		
		SELECT DISTINCT based_on FROM movies WHERE based_on LIKE '%''%' OR based_on LIKE '%"%';
		'A Wrinkle in Time, Madeleine L'Engle
		'Characters created, Irene Mecchi, Jonathan Roberts, Linda Woolverton, The Lion King's Timon & Pumbaa
		'Disney, Dumbo, Joe Grant, Dick Huemer, Disney's Dumboby Otto EnglanderJoe GrantDick HuemerDumbo, the Flying Elephantby Helen AbersonHarold Pearl
		'Disney, The Lion King, Irene Mecchi, Jonathan Roberts, Linda Woolverton, Disney's The Lion Kingby Irene MecchiJonathan Roberts Linda Woolverton
		'Hannah Montana, Michael Poryes, Rich Correll, Barry O'Brien
		
		UPDATE movies
		SET based_on = 'A Wrinkle in Time, Madeleine L''Engle'
		WHERE based_on = '''A Wrinkle in Time, Madeleine L''Engle';

		UPDATE movies
		SET based_on = 'Characters created, Irene Mecchi, Jonathan Roberts, Linda Woolverton, The Lion King''s Timon & Pumbaa'
		WHERE based_on = '''Characters created, Irene Mecchi, Jonathan Roberts, Linda Woolverton, The Lion King''s Timon & Pumbaa';

		UPDATE movies
		SET based_on = 'Disney, Dumbo, Joe Grant, Dick Huemer, Disney''s Dumbo by Otto Englander Joe Grant Dick Huemer Dumbo, the Flying Elephant by Helen Aberson Harold Pearl'
		WHERE based_on = '''Disney, Dumbo, Joe Grant, Dick Huemer, Disney''s Dumbo by Otto Englander Joe Grant Dick Huemer Dumbo, the Flying Elephant by Helen Aberson Harold Pearl';

		UPDATE movies
		SET based_on = 'Disney, The Lion King, Irene Mecchi, Jonathan Roberts, Linda Woolverton, Disney''s The Lion King by Irene Mecchi Jonathan Roberts Linda Woolverton'
		WHERE based_on = '''Disney, The Lion King, Irene Mecchi, Jonathan Roberts, Linda Woolverton, Disney''s The Lion King by Irene Mecchi Jonathan Roberts Linda Woolverton';

		UPDATE movies
		SET based_on = 'Hannah Montana, Michael Poryes, Rich Correll, Barry O''Brien'
		WHERE based_on = '''Hannah Montana, Michael Poryes, Rich Correll, Barry O''Brien';

		SELECT DISTINCT based_on FROM movies WHERE based_on LIKE '%''%' OR based_on LIKE '%"%';
		
		UPDATE movies
		SET based_on = 'Disney, Dumbo, Joe Grant, Dick Huemer, Disney''s Dumboby Otto EnglanderJoe GrantDick HuemerDumbo, the Flying Elephantby Helen AbersonHarold Pearl'
		WHERE based_on = 'Disney, Dumbo, Joe Grant, Dick Huemer, Disney''s Dumboby Otto EnglanderJoe GrantDick HuemerDumbo, the Flying Elephantby Helen AbersonHarold Pearl';

		UPDATE movies
		SET based_on = 'Disney, The Lion King, Irene Mecchi, Jonathan Roberts, Linda Woolverton, Disney''s The Lion Kingby Irene MecchiJonathan Roberts Linda Woolverton'
		WHERE based_on = 'Disney, The Lion King, Irene Mecchi, Jonathan Roberts, Linda Woolverton, Disney''s The Lion Kingby Irene MecchiJonathan Roberts Linda Woolverton';

		SELECT DISTINCT based_on FROM movies WHERE based_on LIKE '%''%' OR based_on LIKE '%"%';
		
	-- produced_by
		SELECT produced_by FROM  movies;
		SELECT produced_by, COUNT(DISTINCT produced_by)FROM movies GROUP BY produced_by -- 321
		
		SELECT produced_by FROM movies WHERE produced_by IS NULL; -- 8
		SELECT produced_by FROM movies WHERE produced_by !~ '[a-zA-Z.,]'
		SELECT produced_by FROM movies WHERE produced_by ~ '[a-zA-Z]' -- 517
		
		SELECT produced_by FROM movies WHERE produced_by ~ '[0-9]'; -- 7
		
		UPDATE movies
			SET produced_by = REGEXP_REPLACE(produced_by, '[0-9]', '', 'g')
			WHERE produced_by ~ '[0-9]';
			
		SELECT produced_by FROM movies WHERE produced_by ~ '[0-9]'; -- 0
		
		ALTER TABLE movies
		ALTER COLUMN produced_by TYPE TEXT
		
		SELECT DISTINCT produced_by FROM movies WHERE produced_by LIKE '%''%' OR produced_by LIKE '%"%';

		UPDATE movies
		SET produced_by = 'Mark Ciardi, ''Ross Greenburg, Justis Greene, Greg O''Connor'
		WHERE produced_by = 'Mark Ciardi' OR produced_by = 'Ross Greenburg' OR produced_by = 'Justis Greene' OR produced_by = 'Greg O''Connor';
		
	-- starring
		SELECT starring FROM movies;
		
		SELECT starring FROM movies WHERE starring IS NULL; -- 32
		SELECT starring FROM movies WHERE starring !~ '[a-zA-Z.,]'
		SELECT starring FROM movies WHERE starring ~ '[a-zA-Z]' -- 493
		
		SELECT starring FROM movies WHERE starring ~ '[0-9]'; -- 1
		
		UPDATE movies
			SET starring = REGEXP_REPLACE(starring, '[0-9]', '', 'g')
			WHERE starring ~ '[0-9]';
			
		SELECT starring FROM movies WHERE starring ~ '[0-9]'; -- 0
		
		ALTER TABLE movies
		ALTER COLUMN starring TYPE TEXT
		
		SELECT DISTINCT starring FROM movies WHERE starring LIKE '%''%' OR starring LIKE '%"%'; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		-- 'Angela Lansbury', 'David Tomlinson', Cindy O'Callaghan
		-- 'David Oyelowo', Lupita Nyong'o
		-- 'Leah Lewis', 'Mamoudou Athie', 'Ronnie del Carmen', 'Wendi McLendon-Covey', Catherine O'Hara
		-- 'Tommy Kirk', 'Annette Funicello', 'Leon Ames', 'Frank Faylen', Arthur O'Connell
		-- Catherine O'Hara, 'Martin Short', 'Martin Landau', 'Charlie Tahan', 'Atticus Shaffer', 'Winona Ryder'
		-- Paige O'Hara, 'Robby Benson', 'Jerry Orbach', 'David Ogden Stiers', 'Angela Lansbury', 'Haley Joel Osment', 'Bernadette Peters', 'Tim Curry', 'Paul Reubens'
		-- Paige O'Hara, 'Robby Benson', 'Richard White', 'Jerry Orbach', 'David Ogden Stiers', 'Angela Lansbury', 'Rex Everhart', 'Jesse Corti'
		
		UPDATE movies
		SET starring = REPLACE(starring, '''', '') -- Remove single quotes
		WHERE starring LIKE '%''%' OR starring LIKE '%"%';

	-- music_by
		SELECT music_by FROM movies;
		
		SELECT music_by FROM movies WHERE music_by IS NULL; -- 7
		SELECT music_by FROM movies WHERE music_by !~ '[a-zA-Z.,]'
		SELECT music_by FROM movies WHERE music_by ~ '[a-zA-Z]' -- 518
		
		SELECT music_by FROM movies WHERE music_by ~ '[0-9]'; -- 16
		
		UPDATE movies
			SET music_by = REGEXP_REPLACE(music_by, '[0-9]', '', 'g')
			WHERE music_by ~ '[0-9]';
			
		SELECT music_by FROM movies WHERE music_by ~ '[0-9]'; -- 0
		
		ALTER TABLE movies
		ALTER COLUMN music_by TYPE TEXT
		
		SELECT DISTINCT music_by FROM movies WHERE music_by LIKE '%''%' OR music_by LIKE '%"%'
		
		UPDATE movies
		SET music_by = REPLACE(music_by, '''', '') -- Remove single quotes
		WHERE music_by LIKE '%''%' OR music_by LIKE '%"%';
	
	-- production_company
		SELECT production_company FROM movies;
		
		SELECT production_company FROM movies WHERE production_company IS NULL; -- 321 (best to delete due to missing values)
		SELECT production_company FROM movies WHERE production_company !~ '[a-zA-Z.,]'
		SELECT production_company FROM movies WHERE production_company ~ '[a-zA-Z]' -- 208
		
		SELECT production_company FROM movies WHERE production_company ~ '[0-9]'; -- 17
		
		UPDATE movies
			SET production_company = REGEXP_REPLACE(production_company, '[0-9]', '', 'g')
			WHERE production_company ~ '[0-9]';
			
		SELECT production_company FROM movies WHERE production_company ~ '[0-9]'; -- 0
		
		ALTER TABLE movies
		ALTER COLUMN production_company TYPE TEXT
		
	-- distributed_by
		SELECT distributed_by FROM movies;
		
		SELECT distributed_by FROM movies WHERE distributed_by IS NULL; -- 0
		SELECT distributed_by FROM movies WHERE distributed_by !~ '[a-zA-Z.,]'
		SELECT distributed_by FROM movies WHERE distributed_by ~ '[a-zA-Z]' -- 525
		
		SELECT distributed_by FROM movies WHERE distributed_by ~ '[0-9]'; -- 53
		
		UPDATE movies
			SET distributed_by = REGEXP_REPLACE(distributed_by, '[0-9]', '', 'g')
			WHERE distributed_by ~ '[0-9]';
			
		SELECT distributed_by FROM movies WHERE distributed_by ~ '[0-9]'; -- 0
		
		-- SELECT distributed_by FROM movies WHERE distributed_by ~ '[+]'
		
		ALTER TABLE movies
		ALTER COLUMN distributed_by TYPE TEXT
	
	-- release_dates
		SELECT release_dates FROM movies WHERE release_dates IS NULL -- 328 (delete due to too many missing values)
		SELECT release_dates FROM movies WHERE release_dates ~ '[a-zA-Z.,()]'
		
		UPDATE movies
			SET release_dates = REGEXP_REPLACE(release_dates, '[a-zA-Z.,()]', '', 'g')
			WHERE release_dates ~ '[a-zA-Z.,()]';
		
		SELECT release_dates FROM movies WHERE release_dates ~ '[0-9]'
		SELECT release_dates::TIME FROM movies
		
		-- ALTER TABLE movies
		-- ALTER COLUMN release_dates TYPE DATE
		
	-- running_time
		SELECT running_time FROM  movies;
		SELECT running_time FROM  movies WHERE running_time IS NULL -- 9
		SELECT running_time FROM movies WHERE running_time ~ '[a-zA-Z.,()]' -- 516
		SELECT running_time FROM movies WHERE running_time LIKE '%min%' -- 514 with letters 'min'
		
		SELECT running_time FROM movies WHERE running_time !~ '%min%' -- 516 without 'min'
		
		SELECT TRIM(BOTH FROM running_time) AS cleaned_running_time
		FROM movies
		WHERE running_time ~ '[0-9]';
		
		UPDATE movies
		SET running_time = TRIM(BOTH ' ' FROM running_time)
		WHERE running_time ~ '^[0-9]';

		SELECT running_time FROM movies
		
		UPDATE movies
		SET running_time = LEFT(running_time, POSITION('min' IN running_time) + 2)
		WHERE running_time LIKE '%min%';
		
		UPDATE movies
		SET running_time = REGEXP_REPLACE(running_time, '[^0-9]', '', 'g')
		WHERE running_time ~ '[^0-9]'
		
		SELECT running_time FROM movies WHERE running_time ~ '[a-zA-Z.,()]'
		
		SELECT running_time FROM movies WHERE running_time !~ '[0-9]'
		
		SELECT running_time, COUNT(*) FROM movies GROUP BY running_time -- NULL and 1 missing value
		
		UPDATE movies
		SET running_time = NULL
		WHERE running_time = '';

		ALTER TABLE movies
    	ALTER COLUMN running_time TYPE INTERVAL
   	 	USING running_time::interval;

	-- country !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		SELECT country FROM  movies;
		SELECT country, COUNT(*) FROM movies GROUP BY country
		
		SELECT country FROM movies WHERE country IS NULL; --  71
		SELECT country FROM movies WHERE country !~ '[a-zA-Z.,]'
		SELECT country FROM movies WHERE country ~ '[a-zA-Z]' -- 454
		
		SELECT country FROM movies WHERE country ~ '[0-9]'; -- 30
		
		UPDATE movies
			SET country = REGEXP_REPLACE(country, '[0-9]', '', 'g')
			WHERE country ~ '[0-9]';
			
		SELECT country FROM movies WHERE country ~ '[0-9]'; --
		
		SELECT country FROM movies WHERE country = 'United States, United States'
		
		UPDATE movies
			SET country = 'United States'
			WHERE country = 'United States, United States'
			
		ALTER TABLE movies
		ALTER COLUMN country TYPE TEXT
	
	-- language
		SELECT language FROM  movies;
		SELECT language, COUNT(*) FROM  movies GROUP BY language
			-- English1
			-- English4
			-- EnglishHindi
			
		UPDATE movies
		SET language = 'English'
		WHERE language = 'English1' OR language ='English4'
		
		UPDATE movies
		SET language = 'Hindi'
		WHERE language = 'EnglishHindi'
		
		ALTER TABLE movies
		ALTER COLUMN language TYPE TEXT
		
		SELECT * FROM movies
	
	-- budget
		SELECT budget FROM  movies;

		UPDATE movies
		SET budget = REGEXP_REPLACE(budget, '[^0-9,.]', '', 'g')
		WHERE budget ~ '[^0-9$,.]';
		
		SELECT budget, COUNT(*) FROM  movies GROUP BY budget
		
		UPDATE movies
		SET budget = SPLIT_PART(budget, ',', 1)
		WHERE budget LIKE '%,%';

		-- 211 Null values and decimal does not explain what the value is (assuming million or billion)

	-- box_office
		SELECT box_office FROM  movies
		SELECT box_office, COUNT(*) FROM  movies GROUP BY box_office
		
		SELECT box_office FROM movies WHERE box_office ~ '\[[0-9]+\]' -- 349
		UPDATE movies
			SET box_office = REGEXP_REPLACE(box_office, '\[[0-9]+\]', '', 'g')
			WHERE box_office ~ '\[[0-9]+\]';
			
		SELECT box_office FROM movies WHERE box_office LIKE '%million%'
		UPDATE movies
			SET box_office = REPLACE(box_office, 'million', '')
			WHERE box_office LIKE '%million%';
		
		UPDATE movies
			SET box_office = REGEXP_REPLACE(box_office, '([0-9])\.', '\1.000000', 'g')
			WHERE box_office ~ '[0-9]\.';
		
		UPDATE movies
			SET box_office = REGEXP_REPLACE(box_office, '([0-9]+)\s*billion', '\1' || '000000000', 'gi')
			WHERE box_office ~* '[0-9]+\s*billion';

		UPDATE movies
			SET box_office = REPLACE(box_office, '$', '')
			WHERE box_office LIKE '%$%';
			
		-- values were in different currencies
			-- SEE "5 Quality Assurance 3" for conversation using exchange reate stored in dB
			-- SELECT box_office FROM movies WHERE box_office = 30.00000051.00000073100000000030.00000051.000000731000000000 (issue; could not complete)
	
	-- narrated_by
		SELECT narrated_by FROM  movies; -- 525
		SELECT narrated_by FROM  movies WHERE narrated_by IS NULL -- 466
		SELECT narrated_by, COUNT(*) FROM  movies GROUP BY narrated_by
		
		SELECT narrated_by FROM  movies WHERE narrated_by ~ '[0-9]'
		
		UPDATE movies
			SET narrated_by = regexp_replace(narrated_by, '[0-9]', '', 'g')
			
		ALTER TABLE movies
		ALTER COLUMN narrated_by TYPE TEXT 
		
	-- cinematography
		SELECT cinematography FROM  movies;
		SELECT cinematography, COUNT(*) FROM movies GROUP BY cinematography
		
		SELECT cinematography FROM movies WHERE cinematography IS NULL; -- 126
		SELECT cinematography FROM movies WHERE cinematography !~ '[a-zA-Z.,]'
		SELECT cinematography FROM movies WHERE cinematography ~ '[a-zA-Z]' -- 399
		
		SELECT cinematography FROM movies WHERE cinematography ~ '[0-9]'; -- 9
		
		UPDATE movies
			SET cinematography = REGEXP_REPLACE(cinematography, '[0-9]', '', 'g')
			WHERE cinematography ~ '[0-9]';
			
		SELECT cinematography FROM movies WHERE cinematography ~ '[0-9]'; -- 0
		
		ALTER TABLE movies
		ALTER COLUMN cinematography TYPE TEXT
	
	-- release_date
		SELECT release_date FROM  movies;
		SELECT release_date FROM  movies WHERE release_date IS NULL - 200 (delete)
	
	-- written_by
		SELECT written_by FROM  movies;
		
		SELECT written_by, COUNT(*) FROM movies GROUP BY written_by
		
		SELECT written_by FROM movies WHERE written_by IS NULL; -- 301
		SELECT written_by FROM movies WHERE written_by !~ '[a-zA-Z.,]'
		SELECT written_by FROM movies WHERE written_by ~ '[a-zA-Z]' -- 224
		
		SELECT written_by FROM movies WHERE written_by ~ '[0-9]'; -- 5
		
		UPDATE movies
			SET written_by = REGEXP_REPLACE(written_by, '[0-9]', '', 'g')
			WHERE written_by ~ '[0-9]';
			
		SELECT written_by FROM movies WHERE written_by ~ '[0-9]'; -- 0
		
		ALTER TABLE movies
		ALTER COLUMN written_by TYPE TEXT
	
	-- edited_by
		SELECT edited_by FROM  movies;
		
		SELECT edited_by, COUNT(*) FROM movies GROUP BY edited_by
		
		SELECT edited_by FROM movies WHERE edited_by IS NULL; -- 42
		SELECT edited_by FROM movies WHERE edited_by !~ '[a-zA-Z.,]'
		SELECT edited_by FROM movies WHERE edited_by ~ '[a-zA-Z]' -- 2483
		
		SELECT edited_by FROM movies WHERE edited_by ~ '[0-9]'; -- 4
		
		UPDATE movies
			SET edited_by = REGEXP_REPLACE(edited_by, '[0-9]', '', 'g')
			WHERE edited_by ~ '[0-9]';
			
		SELECT edited_by FROM movies WHERE edited_by ~ '[0-9]'; -- 0
		
		ALTER TABLE movies
		ALTER COLUMN edited_by TYPE TEXT
	
	-- screenplay_by
		SELECT screenplay_by FROM  movies;
		
		SELECT screenplay_by, COUNT(*) FROM movies GROUP BY screenplay_by
		
		SELECT screenplay_by FROM movies WHERE screenplay_by IS NULL; -- 263
		SELECT screenplay_by FROM movies WHERE screenplay_by !~ '[a-zA-Z.,]'
		SELECT screenplay_by FROM movies WHERE screenplay_by ~ '[a-zA-Z]' -- 262
		
		SELECT screenplay_by FROM movies WHERE screenplay_by ~ '[0-9]'; -- 7
		
		UPDATE movies
			SET screenplay_by = REGEXP_REPLACE(screenplay_by, '[0-9]', '', 'g')
			WHERE screenplay_by ~ '[0-9]';
			
		SELECT screenplay_by FROM movies WHERE screenplay_by ~ '[0-9]'; -- 0
		
		ALTER TABLE movies
		ALTER COLUMN screenplay_by TYPE TEXT
	
	-- countries
		SELECT countries FROM  movies;
		
		SELECT countries, COUNT(*) FROM movies GROUP BY countries
		
		SELECT countries FROM movies WHERE countries IS NULL; -- 458
		SELECT countries FROM movies WHERE countries !~ '[a-zA-Z.,]'
		SELECT countries FROM movies WHERE countries ~ '[a-zA-Z]' -- 67
		
		SELECT countries FROM movies WHERE countries ~ '[0-9]'; -- 17
		
		UPDATE movies
			SET countries = REGEXP_REPLACE(countries, '[0-9]', '', 'g')
			WHERE countries ~ '[0-9]';
			
		SELECT countries FROM movies WHERE countries ~ '[0-9]'; -- 0
		
		ALTER TABLE movies
		ALTER COLUMN countries TYPE TEXT
	
	-- production_companies
		SELECT production_companies FROM  movies;
		
		SELECT production_companies, COUNT(*) FROM movies GROUP BY production_companies
		
		SELECT production_companies FROM movies WHERE production_companies IS NULL; -- 204
		SELECT production_companies FROM movies WHERE production_companies !~ '[a-zA-Z.,]'
		SELECT production_companies FROM movies WHERE production_companies ~ '[a-zA-Z]' -- 321
		
		SELECT production_companies FROM movies WHERE production_companies ~ '[0-9]'; -- 87
		
		UPDATE movies
			SET production_companies = REGEXP_REPLACE(countries, '[0-9]', '', 'g')
			WHERE production_companies ~ '[0-9]';
			
		SELECT production_companies FROM movies WHERE production_companies ~ '[0-9]'; -- 0
		
		ALTER TABLE movies
		ALTER COLUMN production_companies TYPE TEXT