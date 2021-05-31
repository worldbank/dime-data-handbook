* Set up reproducible randomization - VERSIONING, SORTING and SEEDING
  ieboilstart, v(13.1)     // Version
  `r(version)'             // Version
  sysuse bpwide.dta, clear // Load data
  isid patient, sort       // Sort
  set seed 654697          // Seed - drawn using https://bit.ly/stata-random

* Generate a random number and use it to sort the observation.
* Then the order the observations are sorted in is random.
  gen treatment_rand = rnormal() // Generate a random number
  sort treatment_rand            // Sort based on the random number

* See simple-sample.do example for an explanation of "(_n <= _N * X)".
* The code below randomly selects one third of the observations into group 0,
* one third into group 1 and one third into group 2.
* Typically 0 represents the control group
* and 1 and 2 represents the two treatment arms
  generate treatment = 0                       // Set all observations to 0 (control)
  replace  treatment = 1 if (_n <= _N * (2/3)) // Set only the first two thirds to 1
  replace  treatment = 2 if (_n <= _N * (1/3)) // Set only the first third to 2

* Restore the original sort order
  isid patient, sort

* Check your result
  tab treatment
