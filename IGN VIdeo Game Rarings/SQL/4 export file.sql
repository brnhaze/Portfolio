-- Export sql to .csv file for Python

	-- data was clean, no issues but will use COPY command and use this file for next stage as practice

	COPY games TO 'C:\Users\ashwi\Documents\Data Analytics\Portfolio\IGN VIdeo Game Rarings\SQL\sql_cleaned_games.csv ' WITH CSV DELIMITER ',';
	
	\copy games TO 'C:/Users/ashwi/Documents/DataAnalytics/Portfolio/IGNVideoGameRatings/SQL/sql_cleaned_games.csv' WITH CSV DELIMITER ',';
	
	COPY games TO 'C:/sql_cleaned_games.csv' WITH CSV DELIMITER ',';
	
	-- exported file through GUI