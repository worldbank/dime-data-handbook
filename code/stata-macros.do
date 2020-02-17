GOOD:

    global myGlobal = "A string global"
    local  myLocal1 = length("${myGlobal}")
    local  myLocal2 = "${myGlobal}"

BAD:

    global myglobal "A string global"
    local my_Local = length($myGlobal)
