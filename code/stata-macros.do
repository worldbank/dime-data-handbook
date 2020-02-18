GOOD:

    global     myGlobal = "A string global"
    display "${myGlobal}"

BAD:

    global my_Global = "A string global" // Do not mix naming styles
    display "$myGlobal"                  // Always use ${} for globals
