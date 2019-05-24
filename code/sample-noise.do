// Reproducible setup: data, isid, version, seed
    sysuse auto.dta , clear
    isid make, sort
    version 13.1
    set seed 556292 // Timestamp: 2019-02-25 23:30:39 UTC

// Get true population parameter for price mean
    sum price
    local theMean = `r(mean)'

// Sample 20 units 1000 times and store the mean of [price]
    cap mat drop results              // Make matrix free
    qui forvalues i = 1/1000 {
        preserve
            sample 20 , count               // Remove count for 20%
            sum price                       // Calculate sample mean
            // Allow first run and append each estimate
            mat results = nullmat(results) \ [`r(mean)']
        restore
    }

// Load the results into memory and graph the distribution
    clear
    mat colnames results = "price_mean"
    svmat results , n(col)
    kdensity price_mean , norm xline(`theMean')
