* If the data set has ID varibles create a local and test
* if they are fully and uniquely identifying the variables.
local idvars household_ID houeshold_member year
isid `idvars'

* Sort and order on the idvars (or any oder variables if
* there are no ID variables)
sort  `idvars'
order `idvars' // Make sure the idvars are the leftmost vars when browsing

* Drop intermediate varaibles no longer needed

* Optimize disk sspace
compress

* Save data settings
save "${myProject}/myDataFile.dta" // The folder global is typically set in master do-file
