*make LE
use "Data/derived/LE_GDP.csv", clear
drop if seriesname=="GDP per capita (current US$)"
drop seriesname seriescode countryname
label variable yr2017 "Life Expectancy"
rename (yr2017) (LE)
save "Data/derived/LE.csv", replace

*Make GDP
use "Data/derived/LE_GDP.csv", clear
drop if seriesname=="Life expectancy at birth, total (years)"
drop seriesname seriescode countryname
label variable yr2017 "GDP per capita"
rename (yr2017) (GDP)
save "Data/derived/GDP.csv", replace

