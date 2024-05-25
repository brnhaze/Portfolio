-- story_by

	SELECT story_by FROM movies

	UPDATE movies
	SET story_by = REPLACE(story_by, '[Michael O''Herlihy]', 'Michael O''Herlihy')
	WHERE story_by = '[Michael O''Herlihy]';

	UPDATE movies
	SET story_by = REPLACE(story_by, '[Gavin O''Connor]', 'Gavin O''Connor')
	WHERE story_by = '[Gavin O''Connor]';

	UPDATE movies
	SET story_by = REPLACE(story_by, '[Matthew O''Callaghan]', 'Matthew O''Callaghan')
	WHERE story_by = '[Matthew O''Callaghan]';

	UPDATE movies
	SET story_by = REPLACE(story_by, '[Remo D''Souza]', 'Remo D''Souza')
	WHERE story_by = '[Remo D''Souza]';

	UPDATE movies
	SET story_by = REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(story_by, ', [', ', '),   -- Replace ', [' with ', '
	'], ', ', '),                          -- Replace '], ' with ', '
	'[', ''),                                  -- Replace '[' with ''
	']', ''),                                     -- Replace ']' with ''
	'\n', '');                                      -- Remove newline characters

	SELECT story_by FROM movies

-- based_on -------------------------------------------------------------------------------------------------------------------------
	SELECT based_on FROM movies
	
	UPDATE movies
	SET based_on = REPLACE(based_on, '[Michael O''Herlihy]', 'Michael O''Herlihy')
	WHERE based_on = '[Michael O''Herlihy]';

	UPDATE movies
	SET based_on = REPLACE(based_on, '[Gavin O''Connor]', 'Gavin O''Connor')
	WHERE based_on = '[Gavin O''Connor]';

	UPDATE movies
	SET based_on = REPLACE(based_on, '[Matthew O''Callaghan]', 'Matthew O''Callaghan')
	WHERE based_on = '[Matthew O''Callaghan]';

	UPDATE movies
	SET based_on = REPLACE(based_on, '[Remo D''Souza]', 'Remo D''Souza')
	WHERE based_on = '[Remo D''Souza]';

	UPDATE movies
	SET based_on = REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(based_on, ', [', ', '),   -- Replace ', [' with ', '
	'], ', ', '),                          -- Replace '], ' with ', '
	'[', ''),                                  -- Replace '[' with ''
	']', ''),                                     -- Replace ']' with ''
	'\n', '');                                      -- Remove newline characters
	
	SELECT based_on FROM movies
		
-- produced_by -------------------------------------------------------------------------------------------------------------------------
	SELECT produced_by FROM movies
	
	UPDATE movies
	SET produced_by = REPLACE(produced_by, '[Michael O''Herlihy]', 'Michael O''Herlihy')
	WHERE produced_by = '[Michael O''Herlihy]';

	UPDATE movies
	SET produced_by = REPLACE(produced_by, '[Gavin O''Connor]', 'Gavin O''Connor')
	WHERE produced_by = '[Gavin O''Connor]';

	UPDATE movies
	SET produced_by = REPLACE(produced_by, '[Matthew O''Callaghan]', 'Matthew O''Callaghan')
	WHERE produced_by = '[Matthew O''Callaghan]';

	UPDATE movies
	SET produced_by = REPLACE(produced_by, '[Remo D''Souza]', 'Remo D''Souza')
	WHERE produced_by = '[Remo D''Souza]';

	UPDATE movies
	SET produced_by = REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(produced_by, ', [', ', '),   -- Replace ', [' with ', '
	'], ', ', '),                          -- Replace '], ' with ', '
	'[', ''),                                  -- Replace '[' with ''
	']', ''),                                     -- Replace ']' with ''
	'\n', '');                                      -- Remove newline characters

	SELECT produced_by FROM movies

-- starring -------------------------------------------------------------------------------------------------------------------------
	
	SELECT starring FROM movies
	
	UPDATE movies
	SET starring = REPLACE(starring, '[Michael O''Herlihy]', 'Michael O''Herlihy')
	WHERE starring = '[Michael O''Herlihy]';

	UPDATE movies
	SET starring = REPLACE(starring, '[Gavin O''Connor]', 'Gavin O''Connor')
	WHERE starring = '[Gavin O''Connor]';

	UPDATE movies
	SET starring = REPLACE(starring, '[Matthew O''Callaghan]', 'Matthew O''Callaghan')
	WHERE starring = '[Matthew O''Callaghan]';

	UPDATE movies
	SET starring = REPLACE(starring, '[Remo D''Souza]', 'Remo D''Souza')
	WHERE starring = '[Remo D''Souza]';

	UPDATE movies
	SET starring = REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(starring, ', [', ', '),   -- Replace ', [' with ', '
	'], ', ', '),                          -- Replace '], ' with ', '
	'[', ''),                                  -- Replace '[' with ''
	']', ''),                                     -- Replace ']' with ''
	'\n', '');                                      -- Remove newline characters

	SELECT starring FROM movies

-- music_by -------------------------------------------------------------------------------------------------------------------------
	
	SELECT music_by FROM movies

	UPDATE movies
	SET music_by = REPLACE(music_by, '[Michael O''Herlihy]', 'Michael O''Herlihy')
	WHERE music_by = '[Michael O''Herlihy]';

	UPDATE movies
	SET music_by = REPLACE(music_by, '[Gavin O''Connor]', 'Gavin O''Connor')
	WHERE music_by = '[Gavin O''Connor]';

	UPDATE movies
	SET music_by = REPLACE(music_by, '[Matthew O''Callaghan]', 'Matthew O''Callaghan')
	WHERE music_by = '[Matthew O''Callaghan]';

	UPDATE movies
	SET music_by = REPLACE(music_by, '[Remo D''Souza]', 'Remo D''Souza')
	WHERE music_by = '[Remo D''Souza]';

	UPDATE movies
	SET music_by = REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(music_by, ', [', ', '),   -- Replace ', [' with ', '
	'], ', ', '),                          -- Replace '], ' with ', '
	'[', ''),                                  -- Replace '[' with ''
	']', ''),                                     -- Replace ']' with ''
	'\n', '');                                      -- Remove newline characters

	SELECT music_by FROM movies
	
-- production_company -------------------------------------------------------------------------------------------------------------------------
	
	SELECT production_company FROM movies
	
	UPDATE movies
	SET production_company = REPLACE(production_company, '[Michael O''Herlihy]', 'Michael O''Herlihy')
	WHERE production_company = '[Michael O''Herlihy]';

	UPDATE movies
	SET production_company = REPLACE(production_company, '[Gavin O''Connor]', 'Gavin O''Connor')
	WHERE production_company = '[Gavin O''Connor]';

	UPDATE movies
	SET production_company = REPLACE(production_company, '[Matthew O''Callaghan]', 'Matthew O''Callaghan')
	WHERE production_company = '[Matthew O''Callaghan]';

	UPDATE movies
	SET production_company = REPLACE(production_company, '[Remo D''Souza]', 'Remo D''Souza')
	WHERE production_company = '[Remo D''Souza]';

	UPDATE movies
	SET production_company = REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(production_company, ', [', ', '),   -- Replace ', [' with ', '
	'], ', ', '),                          -- Replace '], ' with ', '
	'[', ''),                                  -- Replace '[' with ''
	']', ''),                                     -- Replace ']' with ''
	'\n', '');                                      -- Remove newline characters

	SELECT production_company FROM movies
		
-- distributed_by -------------------------------------------------------------------------------------------------------------------------
	
	SELECT distributed_by FROM movies
	
	UPDATE movies
	SET distributed_by = REPLACE(distributed_by, '[Michael O''Herlihy]', 'Michael O''Herlihy')
	WHERE distributed_by = '[Michael O''Herlihy]';

	UPDATE movies
	SET distributed_by = REPLACE(distributed_by, '[Gavin O''Connor]', 'Gavin O''Connor')
	WHERE distributed_by = '[Gavin O''Connor]';

	UPDATE movies
	SET distributed_by = REPLACE(distributed_by, '[Matthew O''Callaghan]', 'Matthew O''Callaghan')
	WHERE distributed_by = '[Matthew O''Callaghan]';

	UPDATE movies
	SET distributed_by = REPLACE(distributed_by, '[Remo D''Souza]', 'Remo D''Souza')
	WHERE distributed_by = '[Remo D''Souza]';

	UPDATE movies
	SET distributed_by = REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(distributed_by, ', [', ', '),   -- Replace ', [' with ', '
	'], ', ', '),                          -- Replace '], ' with ', '
	'[', ''),                                  -- Replace '[' with ''
	']', ''),                                     -- Replace ']' with ''
	'\n', '');                                      -- Remove newline characters

	SELECT distributed_by FROM movies
	
-- release_dates -------------------------------------------------------------------------------------------------------------------------
	
	SELECT release_dates FROM movies
		
-- running_time -------------------------------------------------------------------------------------------------------------------------
	
	SELECT running_time FROM movies
		
-- country -------------------------------------------------------------------------------------------------------------------------
	
	SELECT country FROM movies

	UPDATE movies
	SET country = REPLACE(country, '[Michael O''Herlihy]', 'Michael O''Herlihy')
	WHERE country = '[Michael O''Herlihy]';

	UPDATE movies
	SET country = REPLACE(country, '[Gavin O''Connor]', 'Gavin O''Connor')
	WHERE country = '[Gavin O''Connor]';

	UPDATE movies
	SET country = REPLACE(country, '[Matthew O''Callaghan]', 'Matthew O''Callaghan')
	WHERE country = '[Matthew O''Callaghan]';

	UPDATE movies
	SET country = REPLACE(country, '[Remo D''Souza]', 'Remo D''Souza')
	WHERE country = '[Remo D''Souza]';

	UPDATE movies
	SET country = REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(country, ', [', ', '),   -- Replace ', [' with ', '
	'], ', ', '),                          -- Replace '], ' with ', '
	'[', ''),                                  -- Replace '[' with ''
	']', ''),                                     -- Replace ']' with ''
	'\n', '');                                      -- Remove newline characters
	
	SELECT country FROM movies
	
-- language -------------------------------------------------------------------------------------------------------------------------
	
	SELECT language FROM movies
	
	UPDATE movies
	SET language = REPLACE(language, '[Michael O''Herlihy]', 'Michael O''Herlihy')
	WHERE language = '[Michael O''Herlihy]';

	UPDATE movies
	SET language = REPLACE(language, '[Gavin O''Connor]', 'Gavin O''Connor')
	WHERE language = '[Gavin O''Connor]';

	UPDATE movies
	SET language = REPLACE(language, '[Matthew O''Callaghan]', 'Matthew O''Callaghan')
	WHERE language = '[Matthew O''Callaghan]';

	UPDATE movies
	SET language = REPLACE(language, '[Remo D''Souza]', 'Remo D''Souza')
	WHERE language = '[Remo D''Souza]';

	UPDATE movies
	SET language = REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(language, ', [', ', '),   -- Replace ', [' with ', '
	'], ', ', '),                          -- Replace '], ' with ', '
	'[', ''),                                  -- Replace '[' with ''
	']', ''),                                     -- Replace ']' with ''
	'\n', '');                                      -- Remove newline characters
	
	SELECT language FROM movies
	
-- budget -------------------------------------------------------------------------------------------------------------------------
	
	SELECT budget FROM movies
	
-- box_office -------------------------------------------------------------------------------------------------------------------------
	
	SELECT box_office FROM movies
	
-- narrated_by -------------------------------------------------------------------------------------------------------------------------
	
	SELECT narrated_by FROM movies
	
	UPDATE movies
	SET narrated_by = REPLACE(narrated_by, '[Michael O''Herlihy]', 'Michael O''Herlihy')
	WHERE narrated_by = '[Michael O''Herlihy]';

	UPDATE movies
	SET narrated_by = REPLACE(narrated_by, '[Gavin O''Connor]', 'Gavin O''Connor')
	WHERE narrated_by = '[Gavin O''Connor]';

	UPDATE movies
	SET narrated_by = REPLACE(narrated_by, '[Matthew O''Callaghan]', 'Matthew O''Callaghan')
	WHERE narrated_by = '[Matthew O''Callaghan]';

	UPDATE movies
	SET narrated_by = REPLACE(narrated_by, '[Remo D''Souza]', 'Remo D''Souza')
	WHERE narrated_by = '[Remo D''Souza]';

	UPDATE movies
	SET narrated_by = REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(narrated_by, ', [', ', '),   -- Replace ', [' with ', '
	'], ', ', '),                          -- Replace '], ' with ', '
	'[', ''),                                  -- Replace '[' with ''
	']', ''),                                     -- Replace ']' with ''
	'\n', '');                                      -- Remove newline characters
	
	SELECT narrated_by FROM movies
	
-- cinematography -------------------------------------------------------------------------------------------------------------------------

	SELECT cinematography FROM movies

	UPDATE movies
	SET cinematography = REPLACE(cinematography, '[Michael O''Herlihy]', 'Michael O''Herlihy')
	WHERE cinematography = '[Michael O''Herlihy]';

	UPDATE movies
	SET cinematography = REPLACE(cinematography, '[Gavin O''Connor]', 'Gavin O''Connor')
	WHERE cinematography = '[Gavin O''Connor]';

	UPDATE movies
	SET cinematography = REPLACE(cinematography, '[Matthew O''Callaghan]', 'Matthew O''Callaghan')
	WHERE cinematography = '[Matthew O''Callaghan]';

	UPDATE movies
	SET cinematography = REPLACE(cinematography, '[Remo D''Souza]', 'Remo D''Souza')
	WHERE cinematography = '[Remo D''Souza]';

	UPDATE movies
	SET cinematography = REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(cinematography, ', [', ', '),   -- Replace ', [' with ', '
	'], ', ', '),                          -- Replace '], ' with ', '
	'[', ''),                                  -- Replace '[' with ''
	']', ''),                                     -- Replace ']' with ''
	'\n', '');                                      -- Remove newline characters
	
	SELECT cinematography FROM movies
	
-- release_date -------------------------------------------------------------------------------------------------------------------------

	SELECT release_date FROM movies
	
-- written_by -------------------------------------------------------------------------------------------------------------------------

	SELECT written_by FROM movies

	UPDATE movies
	SET written_by = REPLACE(written_by, '[Michael O''Herlihy]', 'Michael O''Herlihy')
	WHERE written_by = '[Michael O''Herlihy]';

	UPDATE movies
	SET written_by = REPLACE(written_by, '[Gavin O''Connor]', 'Gavin O''Connor')
	WHERE written_by = '[Gavin O''Connor]';

	UPDATE movies
	SET written_by = REPLACE(written_by, '[Matthew O''Callaghan]', 'Matthew O''Callaghan')
	WHERE written_by = '[Matthew O''Callaghan]';

	UPDATE movies
	SET written_by = REPLACE(written_by, '[Remo D''Souza]', 'Remo D''Souza')
	WHERE written_by = '[Remo D''Souza]';

	UPDATE movies
	SET written_by = REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(written_by, ', [', ', '),   -- Replace ', [' with ', '
	'], ', ', '),                          -- Replace '], ' with ', '
	'[', ''),                                  -- Replace '[' with ''
	']', ''),                                     -- Replace ']' with ''
	'\n', '');                                      -- Remove newline characters
	
	SELECT written_by FROM movies
	
-- edited_by -------------------------------------------------------------------------------------------------------------------------
	
	SELECT edited_by FROM movies

	UPDATE movies
	SET edited_by = REPLACE(edited_by, '[Michael O''Herlihy]', 'Michael O''Herlihy')
	WHERE edited_by = '[Michael O''Herlihy]';

	UPDATE movies
	SET edited_by = REPLACE(edited_by, '[Gavin O''Connor]', 'Gavin O''Connor')
	WHERE edited_by = '[Gavin O''Connor]';

	UPDATE movies
	SET edited_by = REPLACE(edited_by, '[Matthew O''Callaghan]', 'Matthew O''Callaghan')
	WHERE edited_by = '[Matthew O''Callaghan]';

	UPDATE movies
	SET edited_by = REPLACE(edited_by, '[Remo D''Souza]', 'Remo D''Souza')
	WHERE edited_by = '[Remo D''Souza]';

	UPDATE movies
	SET edited_by = REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(edited_by, ', [', ', '),   -- Replace ', [' with ', '
	'], ', ', '),                          -- Replace '], ' with ', '
	'[', ''),                                  -- Replace '[' with ''
	']', ''),                                     -- Replace ']' with ''
	'\n', '');                                      -- Remove newline characters
	
	SELECT edited_by FROM movies

-- screenplay_by -------------------------------------------------------------------------------------------------------------------------

	SELECT screenplay_by FROM movies
	
	UPDATE movies
	SET screenplay_by = REPLACE(screenplay_by, '[Michael O''Herlihy]', 'Michael O''Herlihy')
	WHERE screenplay_by = '[Michael O''Herlihy]';

	UPDATE movies
	SET screenplay_by = REPLACE(screenplay_by, '[Gavin O''Connor]', 'Gavin O''Connor')
	WHERE screenplay_by = '[Gavin O''Connor]';

	UPDATE movies
	SET screenplay_by = REPLACE(screenplay_by, '[Matthew O''Callaghan]', 'Matthew O''Callaghan')
	WHERE screenplay_by = '[Matthew O''Callaghan]';

	UPDATE movies
	SET screenplay_by = REPLACE(screenplay_by, '[Remo D''Souza]', 'Remo D''Souza')
	WHERE screenplay_by = '[Remo D''Souza]';

	UPDATE movies
	SET screenplay_by = REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(screenplay_by, ', [', ', '),   -- Replace ', [' with ', '
	'], ', ', '),                          -- Replace '], ' with ', '
	'[', ''),                                  -- Replace '[' with ''
	']', ''),                                     -- Replace ']' with ''
	'\n', '');                                      -- Remove newline characters
	
	SELECT screenplay_by FROM movies
	
-- countries -------------------------------------------------------------------------------------------------------------------------
	
	SELECT countries FROM movies
	
	UPDATE movies
	SET countries = REPLACE(countries, '[Michael O''Herlihy]', 'Michael O''Herlihy')
	WHERE countries = '[Michael O''Herlihy]';

	UPDATE movies
	SET countries = REPLACE(countries, '[Gavin O''Connor]', 'Gavin O''Connor')
	WHERE countries = '[Gavin O''Connor]';

	UPDATE movies
	SET countries = REPLACE(countries, '[Matthew O''Callaghan]', 'Matthew O''Callaghan')
	WHERE countries = '[Matthew O''Callaghan]';

	UPDATE movies
	SET countries = REPLACE(countries, '[Remo D''Souza]', 'Remo D''Souza')
	WHERE countries = '[Remo D''Souza]';

	UPDATE movies
	SET countries = REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(countries, ', [', ', '),   -- Replace ', [' with ', '
	'], ', ', '),                          -- Replace '], ' with ', '
	'[', ''),                                  -- Replace '[' with ''
	']', ''),                                     -- Replace ']' with ''
	'\n', '');                                      -- Remove newline characters

	SELECT countries FROM movies

-- production_companies -------------------------------------------------------------------------------------------------------------------------

	SELECT production_companies FROM movies
	
	UPDATE movies
	SET production_companies = REPLACE(production_companies, '[Michael O''Herlihy]', 'Michael O''Herlihy')
	WHERE production_companies = '[Michael O''Herlihy]';

	UPDATE movies
	SET production_companies = REPLACE(production_companies, '[Gavin O''Connor]', 'Gavin O''Connor')
	WHERE production_companies = '[Gavin O''Connor]';

	UPDATE movies
	SET production_companies = REPLACE(production_companies, '[Matthew O''Callaghan]', 'Matthew O''Callaghan')
	WHERE production_companies = '[Matthew O''Callaghan]';

	UPDATE movies
	SET production_companies = REPLACE(production_companies, '[Remo D''Souza]', 'Remo D''Souza')
	WHERE production_companies = '[Remo D''Souza]';

	UPDATE movies
	SET production_companies = REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(production_companies, ', [', ', '),   -- Replace ', [' with ', '
	'], ', ', '),                          -- Replace '], ' with ', '
	'[', ''),                                  -- Replace '[' with ''
	']', ''),                                     -- Replace ']' with ''
	'\n', '');                                      -- Remove newline characters
	
	SELECT production_companies FROM movies