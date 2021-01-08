*install outreg2
ssc install outreg2

use "Data/derived/LE_GDP_IMM.csv", clear
*LE_GDP regression
regress LE GDP
*export table
cd "Output"
outreg2 using LE_GDP_2017.doc,replace
*generate & export graph 
scatter LE GDP
graph export LE_GDP_2017.png,replace
cd ..

*LE_IMM regression 
regress LE IMM
*export table
cd "Output"
outreg2 using LE_IMM_2017.doc,replace
*generate & export graph 
scatter LE IMM
graph export LE_IMM_2017.png,replace
cd ..
