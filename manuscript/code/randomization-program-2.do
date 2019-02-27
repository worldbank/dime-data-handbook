// Setup
ieboilstart , v(13.1)
`r(version)'

// Load the auto dataset for analysis
sysuse auto.dta , clear

// Reproducibility
set seed 107738 // Timestamp: 2019-02-25 23:34:33 UTC
isid make, sort

// Call the program
my_randomization
ta treatment

// Show randomization variation with [ritest]
ritest treatment _b[treatment]        ///
  , samplingprogram(my_randomization) ///
    kdensityplot                      ///
  : reg price treatment
