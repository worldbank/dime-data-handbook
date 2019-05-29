* Define a local and a global using the same name convention
    local  myLocal  "A string local"
    global myGlobal "A string global"

* Reference the local and the global macros
    display "`myLocal'"
    display "${myGlobal}"

* Escape character. If backslashes are used just before a local
* or a global then two backslashes must be used
    local myFolderLocal  "Documents"
    local myFolderGlobal "Documents"

* These are BAD
    display "C:\Users\username\`myFolderLocal'"
    display "C:\Users\username\${myFolderGlobal}"

* These are GOOD
    display "C:\Users\username\\`myFolderLocal'"
    display "C:\Users\username\\${myFolderGlobal}"
