* Reproducible setup: data, isid, version, seed
    sysuse auto.dta , clear
    isid make, sort
    version 13.1
    set seed 107738 // Timestamp: 2019-02-25 23:34:33 UTC

* Call the program
    my_randomization
    tab treatment

* Show randomization variation with [ritest]
    ritest treatment _b[treatment] ///
      , samplingprogram(my_randomization) kdensityplot ///
      : reg price treatment
