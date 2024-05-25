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
	
	-- movie_name: character varying (letters, numbers, symbols)
		SELECT movie_name FROM movies;
	
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
			
			---
			
			SELECT directed_by FROM movies WHERE directed_by = '[Michael O''Herlihy]';
			
			UPDATE movies
				SET directed_by = REPLACE(directed_by, '[Michael O''Herlihy]', 'Michael O''Herlihy')
				WHERE directed_by = '[Michael O''Herlihy]';
				
			SELECT directed_by FROM movies WHERE directed_by = '[Michael O''Herlihy]'; -- 0 values
			
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
	
	-- based_on
		SELECT based_on FROM movies;
		SELECT based_on FROM movies WHERE based_on IS NULL; -- 235
		SELECT based_on FROM movies WHERE based_on !~ '[a-zA-Z.,]'
		SELECT based_on FROM movies WHERE based_on ~ '[a-zA-Z]'
		
		SELECT based_on FROM movies WHERE based_on ~ '[0-9]'; -- 16
		
		UPDATE movies
			SET based_on = REGEXP_REPLACE(based_on, '[0-9]', '', 'g')
			WHERE based_on ~ '[0-9]';
			
		SELECT based_on FROM movies WHERE based_on ~ '[0-9]'; -- 16
		
		-- Change datatype to TEXT
		ALTER TABLE movies
		ALTER COLUMN based_on TYPE TEXT
		
	-- produced_by
		SELECT produced_by FROM  movies;
		
	-- starring
		SELECT starring FROM movies;
		
	-- music_by
		SELECT music_by FROM movies;
	
	-- production_company
		SELECT production_company FROM movies;
		
	-- distributed_by
		SELECT distributed_by FROM movies;
	
	-- release_dates
		SELECT release_dates FROM movies;
		
	-- running_time
		SELECT running_time FROM  movies;
		
	-- country
		SELECT country FROM  movies;
	
	-- language
		SELECT language FROM  movies;
	
	-- budget
		SELECT budget FROM  movies;
	
	-- box_office
		SELECT box_office FROM  movies;
	
	-- narrated_by
		SELECT narrated_by FROM  movies;
	
	-- cinematography
		SELECT cinematography FROM  movies;
	
	-- release_date
		SELECT release_date FROM  movies;
	
	-- written_by
		SELECT written_by FROM  movies;
	
	-- edited_by
		SELECT edited_by FROM  movies;
	
	-- screenplay_by
		SELECT screenplay_by FROM  movies;
	
	-- countries
		SELECT countries FROM  movies;
	
	-- production_companies
		SELECT production_companies FROM  movies;