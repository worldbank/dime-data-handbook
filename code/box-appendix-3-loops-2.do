    * Loop over crops
    local crops potato cassava maize
    foreach crop of local crops {
        * Loop over plot number
        forvalues plot_num = 1/10 {
            * do something to `crop' in `plot_num'
        } // End plot loop
    } // End crop loop
