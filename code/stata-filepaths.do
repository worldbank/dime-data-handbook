* Absolute vs. relative file paths

    * Absolute - GOOD
    use "C:\Users\username\Docuemnts\MyProject\MyDataset.dta"

    * Relative - BAD
    cd "C:\Users\username\Docuemnts\MyProject\"
    use MyDataset.dta

* Dynamic vs. static file paths

    * Dynamic (and absolute) - GOOD
    global myDocs    "C:\Users\username\Docuemnts"
    global myProject "${myDocs}\MyProject"
    use "${myProject}\MyDataset.dta"

    * Static (and absolute) - BAD
    use "C:\Users\username\Docuemnts\MyProject\MyDataset.dta"
