*Clean and separate LE and GDP
do Code/Read_clean_LE_GDP.do
do Code/separate_LE_GDP.do

*generate IMM
do Code/Make_IMM.do

*merge all of them into one dataset
do Code/Merge.do

*run regression and export output
do Code/Regression_graph.do 