// Use [randtreat] in randomization program ----------------
cap prog drop my_randomization
    prog def  my_randomization

// Syntax with open options for [ritest]
    syntax , [*]
    cap drop treatment
    cap drop strata

// Create strata indicator
    egen strata = group(sex agegrp) , label
    label var strata "Strata Group"

// Group 1/5 in control and each treatment
    randtreat,             ///
       generate(treatment) /// New variable name
       multiple(6)         /// 6 arms
       strata(strata)      /// 6 strata
       misfits(global)     /// Randomized altogether

// Cleanup
    lab var treatment "Treatment Arm"
    lab def treatment 0 "Control" 1 "Treatment 1" 2 "Treatment 2" ///
         3 "Treatment 3" 4 "Treatment 4" 5 "Treatment 5" , replace
    lab val treatment treatment
end // ----------------------------------------------------

// Reproducible setup: data, isid, version, seed
    sysuse bpwide.dta , clear
    isid patient, sort
    version 13.1
    set seed 796683 // Timestamp: 2019-02-26 22:14:17 UTC

// Randomize
   my_randomization
   tab treatment strata
