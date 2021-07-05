    * Create dummy for being employed
    gen employed = 1
    replace employed = 0 if (_merge == 2)
    lab var employed "Person exists in employment data"
    lab def yesno 1 "Yes" 0 "No"
    lab val employed yesno
