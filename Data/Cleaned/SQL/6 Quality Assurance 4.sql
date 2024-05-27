-- NULL & Delete Columns
SELECT * FROM movies

-- movie_name
SELECT COALESCE(movie_name), COUNT(DISTINCT movie_name) FROM movies GROUP BY movie_name ORDER BY movie_name DESC
SELECT movie_name FROM movies WHERE movie_name IS NULL

-- directed_by
SELECT COALESCE(directed_by), COUNT(DISTINCT directed_by) FROM movies GROUP BY directed_by ORDER BY directed_by DESC
SELECT directed_by FROM movies WHERE directed_by IS NULL

-- story_by: DELETE column
SELECT COALESCE(story_by), COUNT(DISTINCT story_by) FROM movies GROUP BY story_by ORDER BY story_by DESC
SELECT story_by FROM movies WHERE story_by IS NULL -- 356
SELECT story_by, COUNT(*) FROM movies GROUP BY story_by

	-- DELETE
	
	ALTER TABLE movies
	DROP COLUMN story_by

-- based_on
SELECT COALESCE(based_on), COUNT(DISTINCT based_on) FROM movies GROUP BY based_on ORDER BY based_on DESC
SELECT based_on FROM movies WHERE based_on IS NULL -- 235

	-- DELETE
	
	ALTER TABLE movies
	DROP COLUMN based_on

-- produced_by
SELECT COALESCE(produced_by), COUNT(DISTINCT produced_by) FROM movies GROUP BY produced_by ORDER BY produced_by DESC
SELECT produced_by FROM movies WHERE produced_by IS NULL -- 8

-- starring
SELECT COALESCE(starring), COUNT(DISTINCT starring) FROM movies GROUP BY starring ORDER BY starring DESC
SELECT starring FROM movies WHERE starring IS NULL -- 32

-- music_by
SELECT COALESCE(music_by), COUNT(DISTINCT music_by) FROM movies GROUP BY music_by ORDER BY music_by DESC
SELECT music_by FROM movies WHERE music_by IS NULL -- 7

-- production_company
SELECT COALESCE(production_company), COUNT(DISTINCT production_company) FROM movies GROUP BY production_company ORDER BY production_company DESC
SELECT production_company FROM movies WHERE production_company IS NULL -- 321

	-- DELETE
	
	ALTER TABLE movies
	DROP COLUMN production_company

-- distributed_by
SELECT COALESCE(distributed_by), COUNT(DISTINCT distributed_by) FROM movies GROUP BY distributed_by ORDER BY distributed_by DESC
SELECT distributed_by FROM movies WHERE distributed_by IS NULL -- 0

-- release_dates
SELECT COALESCE(release_dates), COUNT(DISTINCT release_dates) FROM movies GROUP BY release_dates ORDER BY release_dates DESC
SELECT release_dates FROM movies WHERE release_dates IS NULL -- 328

	-- DELETE
	
	ALTER TABLE movies
	DROP COLUMN release_dates

-- running_time
SELECT COALESCE(running_time), COUNT(DISTINCT running_time) FROM movies GROUP BY running_time ORDER BY running_time  DESC
SELECT running_time FROM movies WHERE running_time IS NULL -- 10

-- country
SELECT COALESCE(country), COUNT(DISTINCT country) FROM movies GROUP BY country ORDER BY country DESC
SELECT country FROM movies WHERE country IS NULL -- 71

	SELECT country, countries FROM movies
	
	UPDATE movies
	SET country = countries
	WHERE country IS NULL
	
	-- DELETE countries
	
	ALTER TABLE movies
	DROP COLUMN countries

-- lanuage
SELECT COALESCE(language), COUNT(DISTINCT language) FROM movies GROUP BY language ORDER BY language DESC
SELECT language FROM movies WHERE language IS NULL -- 23

	SELECT country, language FROM movies WHERE language IS NULL
	
	UPDATE movies
	SET language = 
    CASE 
        WHEN language IS NULL AND country = 'United States' OR country = 'United Kingdom' THEN 'English'
		WHEN language is NULL AND country = 'United StatesUnited Kingdom, United StatesUnited Kingdom' THEN 'English'
        WHEN language IS NULL AND country = 'Argentina' OR country = 'Spain' THEN 'Spanish'
		WHEN language is NULL AND country = 'ArgentinaSpainItaly' THEN 'Spanish'
		ELSE language
    END
	WHERE language IS NULL;
	
	UPDATE movies
	SET language =
	CASE
		WHEN language is NULL AND country = 'United StatesFranceUnited Kingdom' THEN 'English, French'
		WHEN language is NULL AND country ='United KingdomUnited States' THEN 'English'
		WHEN language is NULL AND country = 'China' THEN 'Chinese'
		WHEN language is NULL AND country = 'Russia' THEN 'Russian'
		WHEN language is NULL AND country = 'United StatesMexico' THEN 'English, Spanish'
		WHEN language is NULL AND country = 'NorwaySwedenUnited States' THEN 'Norwegian, Swedish, English'
		WHEN language is NULL AND country = 'United StatesChinaFrance' THEN 'English, Chinese, French'
		WHEN language is NULL AND country = 'United KingdomUnited States' THEN 'English'
	END
	WHERE language IS NULL;
	
	SELECT country, countries, language FROM movies WHERE language IS NULL
	
	UPDATE movies
	SET language =
	CASE
		WHEN language is NULL AND country = 'FranceUnited States' THEN 'French, English'
		WHEN language is NULL AND country = 'IndiaUnited States' THEN 'Hindi, English'
		WHEN language is NULL AND country = 'United StatesGreece' THEN 'English, Greek'
	END
	WHERE language IS NULL;
	
	SELECT * FROM movies WHERE language is NULL

-- budget
SELECT COALESCE(budget), COUNT(DISTINCT budget) FROM movies GROUP BY budget ORDER BY budget DESC
SELECT budget FROM movies WHERE budget IS NULL -- 211

	SELECT budget, box_office FROM movies
	
	-- DELETE
	
	ALTER TABLE movies
	DROP COLUMN budget

-- box_office
SELECT COALESCE(box_office), COUNT(DISTINCT box_office) FROM movies GROUP BY box_office ORDER BY box_office DESC
	SELECT box_office FROM movies WHERE box_office IS NULL -- 128

	-- DELETE
	
	ALTER TABLE movies
	DROP COLUMN box_office

-- narrated_by
SELECT COALESCE(narrated_by), COUNT(DISTINCT narrated_by) FROM movies GROUP BY narrated_by ORDER BY narrated_by DESC
SELECT narrated_by FROM movies WHERE narrated_by IS NULL -- 466

	-- DELETE
	
	ALTER TABLE movies
	DROP COLUMN narrated_by

-- cinematography
SELECT COALESCE(cinematography), COUNT(DISTINCT cinematography) FROM movies GROUP BY cinematography ORDER BY cinematography DESC
SELECT DISTINCT(cinematography), COUNT(DISTINCT cinematography) FROM movies GROUP BY cinematography
SELECT cinematography FROM movies WHERE cinematography IS NULL -- 126

	SELECT cinematography, written_by, edited_by, screenplay_by, produced_by, story_by, directed_by FROM movies
	
	-- DELETE
	
	ALTER TABLE movies
	DROP COLUMN cinematography

-- release_date
SELECT COALESCE(release_date), COUNT(DISTINCT release_date) FROM movies GROUP BY release_date ORDER BY release_date DESC
SELECT release_date FROM movies WHERE release_date IS NULL -- 200

	-- DELETE
	
	ALTER TABLE movies
	DROP COLUMN release_date

-- written_by
SELECT COALESCE(written_by), COUNT(DISTINCT written_by) FROM movies GROUP BY written_by ORDER BY written_by DESC
SELECT written_by FROM movies WHERE written_by IS NULL -- 301

	-- DELETE
	
	ALTER TABLE movies
	DROP COLUMN written_by

-- edited_by
SELECT COALESCE(edited_by), COUNT(DISTINCT edited_by) FROM movies GROUP BY edited_by ORDER BY edited_by DESC
SELECT edited_by FROM movies WHERE edited_by IS NULL -- 42

-- screenplay_by
SELECT COALESCE(screenplay_by), COUNT(DISTINCT screenplay_by) FROM movies GROUP BY screenplay_by ORDER BY screenplay_by DESC
SELECT screenplay_by FROM movies WHERE screenplay_by IS NULL -- 263

	-- DELETE
	
	ALTER TABLE movies
	DROP COLUMN screenplay_by

-- countries
SELECT COALESCE(countries), COUNT(DISTINCT countries) FROM movies GROUP BY countries ORDER BY countries DESC
SELECT countries FROM movies WHERE countries IS NULL -- 458

	-- DELETE if not Deleted
	
	ALTER TABLE movies
	DROP COLUMN countries

-- production_companies
SELECT COALESCE(production_companies), COUNT(DISTINCT production_companies) FROM movies GROUP BY production_companies ORDER BY production_companies DESC
SELECT production_companies FROM movies WHERE production_companies IS NULL -- 269

	-- DELETE
	
	ALTER TABLE movies
	DROP COLUMN production_companies
