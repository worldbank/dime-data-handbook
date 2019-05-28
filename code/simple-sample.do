/*
    Simple reproducible sampling 
*/

* Set up reproducbilitiy
    ieboilstart , v(12)     // Version
    `r(version)'            // Version
    sysuse auto.dta, clear  // Load data
    isid make, sort         // Sort
    set seed 215597         // Timestamp: 2019-04-26 17:51:02 UTC

* Take a sample of 20%
    preserve
        sample 20
        tempfile sample
        save    `sample' , replace
    restore

* Merge and complete
    merge 1:1 make using `sample'
    recode _merge (3 = 1 "Sampled") (* = 0 "Not Sampled") , gen(sample)
    label var sample "Sampled"
    drop _merge

* Check
    tab sample
