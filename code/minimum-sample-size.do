* Power for varying sample size & a fixed treatment effect
    clear
    set matsize 5000
    cap mat drop results
    set seed 510402 // Timestamp: 2019-02-26 23:19:00 UTC

* Loop over sample sizes (ss) 100 to 1000, increments of 100
    qui forval ss = 100(100)1000 {
        forval i = 1/100 {    // 100 iterations per each
            clear
            set obs `ss'      // Simulation with new sample size

            * Randomly assign treatment
            * Here you could call a randomization program instead
            gen t = (rnormal() > 0)

            * Simulate assumed effect size: here 0.2SD
            gen e = rnormal()     // Normal error term
            gen y = 1 + 0.2*t + e // Functional form for DGP

            * Does regression detect an effect in this assignment?
            reg y t

            * Store the result
            mat a = r(table)                // Reg results
            mat a = a[....,1]               // t parameters
            mat results = nullmat(results) \ a' , [`ss'] // First run and accumulate
        } // End iteration loop
    } // End incrementing sample size

* Load stored results into data
    clear
    svmat results , n(col)

* Analyze all the regressions we ran against power 80%
    gen sig = (pvalue <= 0.05) // Flag significant runs

* Proportion of significant results in each effect size group (80% power)
    graph bar sig , over(c10) yline(0.8)
