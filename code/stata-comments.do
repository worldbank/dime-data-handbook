/*
    This is an do-file with examples of comments in Stata. This
    type of comment is used to document all of the do-file or a large
    section of it
*/

* Standardize settings (This comment is used to document a task
* covering at maximum a few lines of code)
    ieboilstart, version(13.1)
    `r(version)'

* Open up the data set
    sysuse auto.dta // Built in data set (This comment is used to document a single line)
