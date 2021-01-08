*import data Data
import delimited "Data\Raw\LE_GDP.csv", varnames(1) encoding(UTF-8) numericcols(5 6 7 8 9 10 11 12 13 14 15 16) clear
*drop last two years
drop yr2020 yr2019
*drop non-countries: they are at the end of each table 
drop in 482/533
drop in 218/264
*drop all years except 2017
drop (yr1990)
drop (yr2000)
drop (yr2011)
drop (yr2012)
drop (yr2013)
drop (yr2014)
drop (yr2015)
drop (yr2016)
drop if missing(yr2017)
drop (yr2018)
*save new file
save "Data/derived/LE_GDP.csv", replace