// Use [randtreat] in randomization program ----------------
cap prog drop my_randomization
    prog def  my_randomization

// Syntax with open options for [ritest]
    syntax , [*]
    cap drop treatment
    cap drop cluster

// Create cluster indicator
    egen cluster = group(sex agegrp) , label
    label var cluster "Cluster Group"

  // Keep only one from each cluster for randomization
  preserve
  egen ctag = tag(cluster)
    keep if ctag == 1
    drop ctag

    // Group 1/2 in control and treatment
    randtreat,            ///
      generate(treatment) /// New variable name
      multiple(2)          // Two arms

  // Apply assignment to entire cluster
  tempfile ctreat
    save  `ctreat' , replace
    restore
  merge m:1 cluster using `ctreat' , nogen

// Cleanup
    lab var treatment "Treatment Arm"
    lab def treatment 0 "Control" 1 "Treatment" , replace
    lab val treatment treatment
end // ----------------------------------------------------

// Reproducible setup: data, isid, version, seed
    sysuse bpwide.dta , clear
    isid patient, sort
    version 13.1
    set seed 796683 // Timestamp: 2019-02-26 22:14:17 UTC

// Randomize
    my_randomization
    tab cluster treatment
