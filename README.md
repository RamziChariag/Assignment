# Assignment
Python: an algorithm that separates a paragraph into words and puts them into alphabetical order
Stata: In order to figure out which better explains life expectency, I ran two OLS regressions. Data was taken from database: World Development Indicators on december 16th 2020. 
This work is easily reproduceable. the year 2017 was chosen, but the same can be done using data from any other year in the dataset. 
steps: 
1. Separate Life expectancy from GDP, as they are in the same table
2. Chose a year, and extract the data for that year for life expectancy, Immunization rate (against measles) and GDP. 
3. Merge all three into one single dataset
4. Run two OLS regressions and export both results and graphs

ps: a loop.do file was added just to include a loop in stata, and it is not present in the master do file, nor does it affect the rest of the work in any way.
