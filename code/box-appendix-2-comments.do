** Commenting multiple lines

/*
    This is a do-file with examples of comments in Stata. This
    type of comment is used to document all of the do-file or a large
    section of it
*/

** Commenting a single line

    * Standardize settings, explicitly set version, and clear memory
    * (This comment is used to document a task covering at maximum a few lines of code)
    ieboilstart, version(13.1)
    `r(version)'

** Inline comments

    * Open the dataset
    sysuse auto.dta // Built in dataset (This comment is used to document a single line)
