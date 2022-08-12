# Hospital Readmissions Predictor: Project Overview
  ## Hospital Data
  
* Created a tool that displays associations with hospital readmission rates
* The census dataset “acs2015countydata.csv” (Muonneutrino, 2019), was used in combination with the medical dataset for this analysis, see attached. Both datasets are scoped nationally for the year 2015. City and state attributes are common in both datasets and were used in the join condition. The census data attributes that are used in my analysis consist of:
  *	Asian Alone - Numeric
  * Black Alone - Numeric
  *	Hispanic or Latino Alone - Numeric
  *	Native Hawaiian Alone - Numeric
  * White Alone - Numeric

### Tool Justification
  *	Postgres database was used to store the medical data. 
  *	PGAdmin4 was used to run queries against the database. 
  *	Tableau’s custom SQL feature was used to select a subset of the data.  Tableau was also used to link the SQL and the CSV data sources and to display visualizations       of data relationships


### Visualizations 
![alt text](https://github.com/smithjs135/D211-Advanced-Data-Acquisition/blob/main/StoryPoint4.png "Readmission by County")
![alt text](https://github.com/smithjs135/D211-Advanced-Data-Acquisition/blob/main/StoryPoint5.png "Ethnicity vs. Initial Days")
![alt text](https://github.com/smithjs135/D211-Advanced-Data-Acquisition/blob/main/StoryPoint6.png "Services")

### Interactive Controls
The “Readmissions by County” story point consists of a map chart along with the top 10 ranking of readmissions per county.  By clicking an item in the county ranking chart, will change the section criteria on the map chart.  Further, the map chart allows filtering by county, state, and readmission (yes or no). 

The “Services” story point contains the Services vs. Readmissions tree map and a table of displaying similar information. There are several interactive controls that stakeholders would find useful.  Clicking on a specific portion of the tree map will focus the display of the table on the same aspect.  The opposite is true as will.  Clicking on a specific portion of the table will display complementary information in the tree map.  This tab also contains slide filters for various demographics, such as for Hispanic, White, Pacific, Native, Child Poverty, Black, and Asians. 

### Accessible by the Color Blind
The “County Readmissions”, Services, and Initial days with Demographics tabs all use color coding that is accessible by the color blind.  In addition, the County Readmissions chart and services tree map uses size to indicated readmission density.   

### Limitations
Census data may not always be accurate due to error in model-based estimates and non-truthful responses (United States Census Bureau,10/08/2021). On a similar note, the accuracy of the medical data is unverified as well. 
