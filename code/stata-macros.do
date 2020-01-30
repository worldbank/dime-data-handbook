GOOD:

    global myGlobal = "A string global"
    local  myLocal1  = length("${myGlobal}")
    local  myLocal2  = "\${myGlobal}"

    display "${myGlobal}"
    global myGlobal = "A different string"

    forvalues i = 1/2 {
        display "`myLocal`i''"
    }

BAD:

    global myglobal "A string global"
    local my_Local = length($myGlobal)
