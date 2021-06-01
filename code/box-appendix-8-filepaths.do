** GOOD: Absolute and dynamic paths

    global myDocs    = "C:/Users/username/Documents"
    global myProject = "${myDocs}/MyProject"
    use "${myProject}/my-dataset.dta", clear

** BAD: Relative paths

    cd "C:/Users/username/Documents/MyProject"
    use MyDataset.dta

** BAD: Static paths
	
    use "C:/Users/username/Documents/MyProject/MyDataset.dta"
