# Quality Assurance

## Files
[Uncleaned: Disney_movies.csv]()
[Cleaned: movies.csv]()

## .sql files
[Create dB and tables]()
[Upload Files]()
[Quality Assurance]()
[Quality Assurance 2]()
[Quality Assurance 3]()
[Quality Assurance 4]()

## Process

### Creating Table

<div align="center">
  <img src="1 create table.jpg" alt="Create Table" width="300"/>
</div>

### Upload File using GUI
Delimiter issues

<div align="center">
  <img src="2 delimiter issues.jpg" alt="Example Image" width="300"/>
</div>

Resolved by manually deleting single or double quotations within .csv file prior to importing.

### Data Profiling

#### Identify schema of database and tables; determine data types, null values, unique values; analyze query results and document data quality issues

<div align="center">
  <img src="3 data profiling.jpg" alt="Example Image" width="300"/>
</div>


<div align="center">
  <img src="4 data profiling.jpg" alt="Example Image" width="300"/>
</div>


<div align="center">
  <img src="5 data profiling.jpg" alt="Example Image" width="300"/>
</div>

<div align="center">
  <img src="6 data profiling.jpg" alt="Example Image" width="300"/>
</div>

<div align="center">
  <img src="7 data profiling.jpg" alt="Example Image" width="300"/>
</div>


#### Count Unique Values

COUNT(DISTINCT)

<div align="center">
  <img src="8 data profiling.jpg" alt="Example Image" width="300"/>
</div>

<div align="center">
  <img src="9 data profiling.jpg" alt="Example Image" width="300"/>
</div>

COALESCE

<div align="center">
  <img src="10 data profiling.jpg" alt="Example Image" width="300"/>
</div>

<div align="center">
  <img src="11 data profiling.jpg" alt="Example Image" width="300"/>
</div>

### Data Validation

Check for missing values, duplicate data, data outside of expected ranges

#### Duplicate Data

<div align="center">
  <img src="13 data validation.jpg" alt="Example Image" width="300"/>
</div>

#### Missing Data

<div align="center">
  <img src="14 data validation.jpg" alt="Example Image" width="300"/>
</div>

### Data Cleansing

Identify data quality issues such as missing or inconsistent data

<div align="center">
  <img src="15 data cleansing.jpg" alt="Example Image" width="300"/>
</div>

Replace "million" and "billion' with 000000 and 000000000 values

<div align="center">
  <img src="16 data cleaning.jpg" alt="Example Image" width="300"/>
</div>
