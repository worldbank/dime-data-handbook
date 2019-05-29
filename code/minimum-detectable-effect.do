* Simulate power for different treatment effect sizes
   clear
   set matsize 5000
   cap mat drop results
   set seed 852526 // Timestamp: 2019-02-26 23:18:42 UTC

* Loop over treatment effect sizes (te)
* of 0 to 0.5 standard deviations
* in increments of 0.05 SDs
    qui forval te = 0(0.05)0.5 {
        forval i = 1/100 {      // Loop 100 times
            clear               // New simulation
            set obs 1000        // Set sample size to 1000

            * Randomly assign treatment
            * Here you could call a randomization program instead:
            gen t = (rnormal() > 0)

            * Simulate assumed effect sizes
            gen e = rnormal()       // Include a normal error term
            gen y = 1 + `te'*t + e  // Set functional form for DGP

            * Does regression detect an effect in this assignment?
            reg y t

            * Store the result
            mat a = r(table)                // Reg results
            mat a = a[....,1]               // t parameters
            mat results = nullmat(results) \ a' , [`te'] // First run and accumulate
        } // End iteration loop
    } // End incrementing effect size

* Load stored results into data
    clear
    svmat results , n(col)

* Analyze all the regressions we ran against power 80%
    gen sig = (pvalue <= 0.05) // Flag significant runs

* Proportion of significant results in each effect size group (80% power)
    graph bar sig , over(c10) yline(0.8)
