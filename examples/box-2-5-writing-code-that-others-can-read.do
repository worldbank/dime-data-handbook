********************************************************************************
*   PART 1:  Clean-up                                                         *
********************************************************************************

    * Drop lines that only work after 8 PM
	* no rides data is collected outside of rush hour
    drop if inlist(substr(linha,1,4),"SCZP","JRIP")

    * Drop circular honorio - not present in rides data
    drop if substr(linha,1,3) == "HON"

    * Adjust var formats - some missing observations are marked as "-",
    * which causes Stata to read the variable as a string, not a number
    foreach varAux of varlist boardings exits seatprob {
        replace `varAux' = subinstr(`varAux',"-","",.)  // remove dash character
        replace `varAux' = strtrim(`varAux')            // remove spaces
        destring (`varAux'), replace                    // now convertible into a number
    }

    * Drop null station/line combinations
    drop if exits == . & boardings == .
