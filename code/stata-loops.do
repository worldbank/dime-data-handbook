* This is BAD
    foreach i in potato cassava maize {
    }

* These are GOOD
    foreach crop in potato cassava maize {
    }

    * or

    local crops potato cassava maize
    * Loop over crops
    foreach crop of local crops {
        * Loop over plot number
        forvalues plot_num = 1/10 {
        }
    }
