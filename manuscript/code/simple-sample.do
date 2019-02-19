// Load the auto dataset
sysuse auto.dta , clear
su price
  local theMean = `r(mean)'       // True population mean

// Sample 20 units 1000 times and store the mean of [price]
cap mat drop results              // Make matrix free
qui forvalues i = 1/1000 {
preserve
  sample 20 , count               // Remove count for 20%
  su price                        // Calculate sample mean
  mat results = nullmat(results) /// Allow first run
    \ [`r(mean)']                 // Append each estimate
restore
}

// Load the results into memory and graph the distribution
clear
  mat colnames results = "price_mean"
  svmat results , n(col)
  kdensity price_mean , norm xline(`theMean')
