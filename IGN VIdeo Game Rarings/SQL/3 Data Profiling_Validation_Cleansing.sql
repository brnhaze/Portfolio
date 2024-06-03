------------------------------------------------------------ Data Profiling, Validation, Cleansing ----------------------------------------------
SELECT * FROM games
-- title, score, score_phrase, platform, genre, release_year, release_month, release_day

-- Identify Schema
	SELECT * FROM information_schema.tables WHERE table_schema = 'public'
	
-- Determine datatypes, null types, null values, unique values
	SELECT column_name, data_type, is_nullable
		FROM information_schema.columns
		WHERE table_name = 'games'
		
-- Determine Null values
	SELECT score FROM games WHERE score IS NULL -- 0
	SELECT release_year FROM games WHERE release_year IS NULL -- 0
	SELECT release_month FROM games WHERE release_month IS NULL -- 0
	SELECT release_day FROM games WHERE release_day IS NULL -- 0
	SELECT score_phrase FROM games WHERE score_phrase IS NULL -- 0
	SELECT platform FROM games WHERE platform IS NULL -- 0
	SELECT title FROM games WHERE title IS NULL -- 0
	
	SELECT genre FROM games WHERE genre IS NULL -- 36/18625
	SELECT * FROM games WHERE genre IS NULL
	
-- Determine Unique Values
	SELECT COUNT(DISTINCT score) FROM games -- 93
	
	SELECT COUNT(release_year) FROM games -- 18625
	
	SELECT COUNT(release_month) FROM games -- 18625
	
	SELECT COUNT(release_day) FROM games -- 18625
	
	SELECT COUNT(score_phrase) FROM games -- 18625
	SELECT score_phrase, COUNT(score_phrase) FROM games GROUP BY score_phrase
	-- SELECT DISTINCT(score_phrase), COUNT(score_phrase) FROM games GROUP BY score_phrase
	
	SELECT COUNT(platform) FROM games -- 18625
	SELECT platform, COUNT(platform) FROM games GROUP BY platform
	-- SELECT DISTINCT(platform), COUNT(platform) FROM games GROUP BY platform
	
	SELECT COUNT(genre) FROM games -- 18589
	SELECT genre, COUNT(genre) FROM games GROUP BY genre
	SELECT genre, COUNT(genre) FROM games GROUP BY genre HAVING COUNT(genre) > 1 -- Duplicate Values
	
	SELECT COUNT(title) FROM games -- 18625
	SELECT title, COUNT(title) FROM games GROUP BY title
	SELECT title, COUNT(title) FROM games GROUP BY title HAVING COUNT(title) > 1 -- Duplicate Values
	SELECT * FROM games WHERE title = 'Fallout 4'
	
-- Check Data Distribution (Min/Max, Str Len)
	SELECT * FROM games
	
	SELECT title, MAX(LENGTH(title)) AS max_str, MIN(LENGTH(title)) AS min_str FROM games WHERE title IS NOT NULL GROUP BY title -- 
	
	SELECT score, MAX(LENGTH(score::TEXT)) AS max_str, MIN(LENGTH(score::TEXT)) AS min_str FROM games WHERE score IS NOT NULL GROUP BY score
	
	SELECT score, MAX(LENGTH(score::TEXT)) AS max_str, MIN(LENGTH(score::TEXT)) AS min_str
	FROM games WHERE score IS NOT NULL GROUP BY score
	HAVING MAX(LENGTH(score::TEXT)) > 3 OR MIN(LENGTH(score::TEXT)) < 1
	
	
	SELECT score_phrase, MAX(LENGTH(score_phrase)) AS max_str, MIN(LENGTH(score_phrase)) AS min_str FROM games WHERE score_phrase IS NOT NULL GROUP BY score_phrase -- 
	SELECT platform, MAX(LENGTH(platform)) AS max_str, MIN(LENGTH(platform)) AS min_str FROM games WHERE platform IS NOT NULL GROUP BY platform -- 
	SELECT genre, MAX(LENGTH(genre)) AS max_str, MIN(LENGTH(genre)) AS min_str FROM games WHERE genre IS NOT NULL GROUP BY genre
	SELECT release_year, MAX(LENGTH(release_year::TEXT)) AS max_str, MIN(LENGTH(release_year::TEXT)) AS min_str FROM games WHERE release_year IS NOT NULL GROUP BY release_year -- 
	SELECT release_month, MAX(LENGTH(release_month::TEXT)) AS max_str, MIN(LENGTH(release_month::TEXT)) AS min_str FROM games WHERE release_month IS NOT NULL GROUP BY release_month -- 
	SELECT release_day, MAX(LENGTH(release_day::TEXT)) AS max_str, MIN(LENGTH(release_day::TEXT)) AS min_str FROM games WHERE release_day IS NOT NULL GROUP BY release_day -- 
	
-- Date Consistency
	SELECT * FROM games
	-- no Dates, no need for to_date or EXTRACT

-- Integer Consistency
	SELECT MIN(release_year), MAX(release_year) FROM games
	SELECT MIN(release_month), MAX(release_month) FROM games
	SELECT MIN(release_day), MAX(release_day) FROM games
	SELECT MIN(score), MAX(score) FROM games
	
	SELECT release_year FROM games WHERE release_year::TEXT !~ '[0-9]'
	SELECT release_month FROM games WHERE release_month::TEXT !~ '[0-9]'
	SELECT release_day FROM games WHERE release_day::TEXT !~ '[0-9]'

-- String Consistency & Pattern Matching
	SELECT title FROM games WHERE title !~ '[a-zA-Z,.0-9]'
	SELECT score_phrase FROM games WHERE score_phrase !~ '[a-zA-Z,.0-9]'
	SELECT platform FROM games WHERE platform !~ '[a-zA-Z,.0-9]'
	SELECT genre FROM games WHERE genre !~ '[a-zA-Z,.0-9]'

-- Check Enumerated Values (no need: repetitive)
	SELECT * FROM games
	
	SELECT DISTINCT(score_phrase) FROM games
	
	SELECT score_phrase, COUNT(*) AS count FROM games
	WHERE score_phrase NOT IN ('Mediocre', 'Great', 'Bad', 'Masterpiece', 'Disaster', 'Painful', 'Amazing', 'Awful', 'Unbearable', 'Okay', 'Good') GROUP BY score_phrase
	
-- Summary Queries
	SELECT score, COUNT(*), AVG(score), STDDEV(score) FROM games GROUP BY score

-- Missing/Incorrect Data

	SELECT score FROM games WHERE score::TEXT !~ '[0-9]'
	
	SELECT release_year FROM games WHERE release_year::TEXT !~ '^\d{4}$'
	
	SELECT release_month FROM games WHERE release_month::TEXT !~ '^\d{1,2}$'
	
	SELECT release_day FROM games WHERE release_day::TEXT !~ '^\d{1,2}$'

-- title, score, score_phrase, platform, genre, release_year, release_month, release_day