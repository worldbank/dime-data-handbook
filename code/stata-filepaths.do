GOOD:

    global myDocs    = "C:/Users/username/Documents"
    global myProject = "${myDocs}/MyProject"
    use "${myProject}/my-dataset.dta" , clear

BAD:

    RELATIVE PATHS:
    cd "C:/Users/username/Documents/MyProject"
    use MyDataset.dta

    STATIC PATHS:
    use "C:/Users/username/Documents/MyProject/MyDataset.dta"
