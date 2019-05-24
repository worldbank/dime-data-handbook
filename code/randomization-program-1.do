// Define a randomization program
cap prog drop my_randomization
    prog def  my_randomization

// Syntax with open options for [ritest]
    syntax , [*]
    cap drop treatment

// Group 2/5 in treatment and 3/5 in control
    xtile group = runiform() , n(5)
    recode group (1/2=0 "Control") (3/5=1 "Treatment") , gen(treatment)
    drop group

// Cleanup
    lab var treatment "Treatment Arm"

end
