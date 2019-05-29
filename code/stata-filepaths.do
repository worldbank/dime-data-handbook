* Dynamic, absolute file paths

    * Dynamic (and absolute) - GOOD
    global myDocs    "C:/Users/username/Documents"
    global myProject "${myDocs}/MyProject"
    use "${myProject}/MyDataset.dta"

* Relative and absolute file paths

    * Relative - BAD
    cd "C:/Users/username/Documents/MyProject"
    use MyDataset.dta

    * Absolute but not dynamic - BAD
    use "C:/Users/username/Documents/MyProject/MyDataset.dta"
