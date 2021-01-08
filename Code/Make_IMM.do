*import raw data
import delimited "Data\Raw\IMM.csv", varnames(1) encoding(UTF-8) numericcols(5 6 7 8 9 10 11 12 13 14 15 16) clear
*drop empty years
drop yr2020 yr2019

*drop all except 2017
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

label variable yr2017 "Immunization Rate"
rename (yr2017) (IMM)
*drop non-countries
drop in 193/238

drop seriesname seriescode countryname
save "Data/derived/IMM.csv", replace