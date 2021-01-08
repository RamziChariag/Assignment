*merge all files into one
use "Data/derived/LE.csv", clear
merge 1:m countrycode using "Data/derived/GDP.csv"
drop _merge
merge 1:m countrycode using "Data/derived/IMM.csv"
drop _merge

drop if missing(LE)
drop if missing(GDP)
drop if missing(IMM)

save "Data/derived/LE_GDP_IMM.csv", replace