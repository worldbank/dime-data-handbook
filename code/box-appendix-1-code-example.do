* Load the auto dataset
    sysuse auto.dta , clear

* Run a simple regression
    reg price mpg rep78 headroom , coefl

* Transpose and store the output
    matrix results = r(table)'

* Load the results into memory
    clear
    svmat results , n(col)
