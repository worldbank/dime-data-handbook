* This is BAD
    * Create dummy for being employed
    generate employed = 1
    replace employed = 0 if (_merge == 2)
    label variable employed "Person exists in employment data"
    label define yesno 1 "Yes" 0 "No"
    label value employed yesno

* This is GOOD
    * Create dummy for being employed
    generate       employed = 1
    replace        employed = 0 if (_merge == 2)
    label variable employed "Person exists in employment data"
    label define            yesno 1 "Yes" 0 "No"
    label value    employed yesno
