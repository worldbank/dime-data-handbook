* Set up reproducbilitiy - VERSIONING, SORTTING and SEEDING
    ieboilstart , v(13.1)    // Version
    `r(version)'             // Version
    sysuse bpwide.dta, clear // Load data
    isid patient, sort       // Sort
    set seed 215597          // Seed - drawn using http://bit.ly/stata-random

* Generate a random number and use it to sort the observation. Then
* the order the observations are sorted in is random.
    gen sample_rand = rnormal() // Generate a random number
    sort sample_rand            // Sort based on the random number

* Use the sort order to sample 20% (0.20) of the observations. _N in
* Stata is the number of observations in the active data set , and _n
* is the row number for each observation. The bpwide.dta has 120
* observations, 120*0.20 = 24, so (_n <= _N * 0.20) is 1 for observations
* with a row number equal to or less than 24, and 0 for all other
* observations. Since the sort order is randomized this mean that we
* have randomly assigned 20% of the sample.
    gen sample = (_n <= _N * 0.20)

* Restore the original sort order
    isid patient, sort

* Check your result
    tab sample
