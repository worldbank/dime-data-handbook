// Setup
ieboilstart , v(13.1)
`r(version)'

// Define a randomization program -------------------------
cap prog drop my_randomization
    prog def  my_randomization

  // Syntax for [ritest]
  syntax , resampvar(string asis) [*]
    cap drop `resampvar'

 // Group 2/5 in treatment and 3/5 in control
 gen random = runiform(0,1)
   xtile group = random , n(5)
   recode group         ///
    (1/2=0 "Control")   ///
    (3/5=1 "Treatment") ///
    , gen(`resampvar')

   // Cleanup
   drop random group
end

// Load the auto dataset for analysis -------------------
sysuse auto.dta , clear

// Reproducibility
set seed 107738 // Timestamp: 2019-02-25 23:34:33 UTC
isid make, sort

// Call the program
my_randomization , resampvar(treatment)
ta treatment
