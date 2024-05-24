-- Retrieve & List Tables
SELECT *
FROM information_schema.tables
WHERE table_schema = 'public'

SELECT * FROM movies

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

