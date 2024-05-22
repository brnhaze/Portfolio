# Clean and Explore Data

## Create Table
<p align="center">
  <img src="Create Table.jpg" alt="Description of the image">
</p>

## Remove Duplicates

### Method 1: Duplicates Feature
1. Select Data or Highlight Entire Data Set
2. Data > Data Tools > Remove Duplicates

<p align="center">
  <img src="Method 1 remove duplicates.jpg" alt="Description of the image">
</p>

### Method 2: Advanced Filter
Data > sort & Filter > Advanced

<p align="center">
  <img src="method 2 advanced filter.jpg" alt="Description of the image">
</p>

### Method 3: =UNIQUE(table)
N/A (only availble in Office365

### Method 4: Power Query
N/A (Current excel does not have feature available)

## Removing Empty/Blank Cells
1. Ctrl G > Specials or Ctrl G > Alt S or F5 > Go to Specials or Alt S

Skipped Step as it will change my table

Overlapping sections

<p align="center">
  <img src="Removing empty_blank cells.jpg" alt="Description of the image">
</p>

## Removing Incorrect Data

### Filters
Data > Filters

<p align="center">
  <img src="Filters.jpg" alt="Description of the image">
</p>

### Conditional Formatting

#### =IF(ISERROR)

<p align="center">
  <img src="is error 1.jpg" alt="Description of image 1" style="display:inline-block; margin-right:10px;">
  <img src="is error 2.jpg" alt="Description of image 2" style="display:inline-block;">
</p>

#### Other

=IF(ISNUMBER)
=IF(ISTEXT)
=IF(ISBLANK())

### Data Validation

<p align="center">
  <img src="data validation 1.jpg" alt="Description of the image">
</p>

## Remove [ ] Beginning and End of Cells with Characters
Visual Basic for Applications (VBA)

Macro - Alt F11
Developer > Visual Basic

<p align="center">
  <img src="module 0.jpg" alt="Description of the image">
</p>

<p align="center">
  <img src="module 1.jpg" alt="Description of the image">
</p>

<p align="center">
  <img src="module 3.jpg" alt="Description of the image">
</p>
