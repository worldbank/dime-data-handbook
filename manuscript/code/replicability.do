// Set the version
ieboilstart , v(13.1)
`r(version)'

// Load the auto dataset and sort uniquely
sysuse auto.dta , clear
  isid make, sort

// Set the seed (range: 100000 - 999999)
set seed 287608 // By random.org at 2019-02-17 23:06:36 UTC

// Demonstrate stability under the three rules
  gen check1 = rnormal()
  gen check2 = rnormal()

  set seed 287608
  gen check3 = rnormal()

  graph matrix ///
    check1 check2 check3 ///
  , half
