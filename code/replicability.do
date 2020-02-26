* VERSIONING - Set the version
    ieboilstart , v(13.1)
    `r(version)'

* Load the auto data set (auto.dta is a test data set included in all Stata installations)
    sysuse auto.dta , clear

* SORTING - sort on the uniquely identifying variable "make"
    isid make, sort

* SEEDING - Seed picked using https://bit.ly/stata-random
    set seed 287608

* Demonstrate stability after VERSIONING, SORTING and SEEDING
    gen check1 = rnormal()  // Create random number
    gen check2 = rnormal()  // Create a second random number without resetting seed

    set seed 287608         // Reset the seed
    gen check3 = rnormal()  // Create a third random number after resetting seed

* Visualize randomization results. See how check1 and check3 are identical,
* but check2 is random relative check1 and check3
    graph matrix check1 check2 check3 , half
