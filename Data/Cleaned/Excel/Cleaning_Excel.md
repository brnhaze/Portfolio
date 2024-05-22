# Clean and Explore Data

## Create Table
<p align="center">
  <img src="Create Table.jpg" alt="Description of the image">
</p>



## Remove Duplicates

### Method 1: Duplicates Feature
1. Select Data or Highlight Entire Data Set
2. Data > Data Tools > Remove Duplicates

### Method 2: Advanced Filter
Data > sort & Filter > Advanced

### Method 3: =UNIQUE(table)
N/A (only availble in Office365

### Method 4: Power Query
N/A (Current excel does not have feature available)

## Removing Empty/Blank Cells
1. Ctrl G > Specials or Ctrl G > Alt S or F5 > Go to Specials or Alt S

Skipped Step as it will change my table

Overlapping sections

## Removing Incorrect Data

### Filters
Data > Filters

### Conditional Formatting

#### =IF(ISERROR)

#### Other

=IF(ISNUMBER)
=IF(ISTEXT)
=IF(ISBLANK())

### Data Validation

<p align="center">
  <img src="data validation 1.jpg" alt="Description of image 1" style="display:inline-block; margin-right:10px;">
  <img src="data validation 2.jpg" image2-url" alt="Description of image 2" style="display:inline-block;">
</p>


## Remove [ ] Beginning and End of Cells with Characters
Visual Basic for Applications (VBA)

Macro - Alt F11
Developer > Visual Basic
