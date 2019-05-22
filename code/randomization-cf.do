// Make one randomization
sysuse bpwide.dta , clear
  isid patient, sort
  version 13.1
  set seed 796683 // Timestamp: 2019-02-26 22:14:17 UTC

  sample 100

  // Save for comparison
  tempfile sample
    save  `sample' , replace

// Identical randomization
sysuse bpwide.dta , clear
  isid patient, sort
  version 13.1
  set seed 796683 // Timestamp: 2019-02-26 22:14:17 UTC

  sample 100
  cf _all using `sample'

// Do something wrong
sysuse bpwide.dta , clear
  sort bp*
  version 13.1
  set seed 796683 // Timestamp: 2019-02-26 22:14:17 UTC

  sample 100
  cf _all using `sample'
