* Use [randtreat] in randomization program ----------------
cap prog drop my_randomization
    prog def  my_randomization

* Syntax with open options for [ritest]
    syntax , [*]
    cap drop treatment
    cap drop cluster

* Create cluster indicator
    egen cluster = group(sex agegrp) , label
    label var cluster "Cluster Group"

* Save data set with all observations
    tempfile ctreat
    save  `ctreat' , replace

* Keep only one from each cluster for randomization
    bysort cluster : keep if _n == 1

* Group 1/2 in control and treatment in new variable treatment
    randtreat, generate(treatment) multiple(2)

* Keep only treatment assignment and merge back to all observations
	keep cluster treatment
    merge 1:m cluster using `ctreat' , nogen

* Cleanup
    lab var treatment "Treatment Arm"
    lab def treatment 0 "Control" 1 "Treatment" , replace
    lab val treatment treatment
end // ----------------------------------------------------

* Reproducible setup: data, isid, version, seed
    sysuse bpwide.dta , clear
    isid patient, sort
    version 13.1
    set seed 796683 // Timestamp: 2019-02-26 22:14:17 UTC

* Randomize
    my_randomization
    tab cluster treatment
