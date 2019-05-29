* This is GOOD
    graph hbar ///
        invil if (priv == 1) ///
      , over(statename, sort(1) descending) blabel(bar, format(%9.0f)) ///
        ylab(0 "0%" 25 "25%" 50 "50%" 75 "75%" 100 "100%") ///
        ytit("Share of private primary care visits made in own village")

* This is BAD
    #delimit ;
    graph hbar
        invil if (priv == 1)
      , over(statename, sort(1) descending) blabel(bar, format(%9.0f))
        ylab(0 "0%" 25 "25%" 50 "50%" 75 "75%" 100 "100%")
        ytit("Share of private primary care visits made in own village");
    #delimit cr
