* If the dataset has ID variables, test if they uniquely identifying the observations.

    local idvars household_ID household_member year
    isid `idvars'

* Sort and order on the idvars (or any other variables if there are no ID variables)

    sort  `idvars'
    order * , seq // Place all variables in alphanumeric order (optional but useful)
    order `idvars' , first // Make sure the idvars are the leftmost vars when browsing

* Drop intermediate variables no longer needed

* Optimize disk space

    compress

* Save data

    save    "${myProject}/myDataFile.dta" , replace // The folder global is set in master do-file
    saveold "${myProject}/myDataFile-13.dta" , replace v(13) // For others
