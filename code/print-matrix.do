

// Use data
sysuse census.dta , clear

// Loop over variables
local indepvars death marriage divorce
local depvars pop poplt5 pop5_17 pop65p pop18p popurban

cap mat drop results results_STARS  // Gotta do this
qui foreach depvar in `depvars' {
  reg `depvar' `indepvars'          // Run regression
  mat a = r(table)                  // Store results
  mat a = a[....,1]'                // Get [death] only and transpose
  mat rownames a = "`depvar'"       // Proper label
  mat results = nullmat(results)    /// First run
    \ a // Stack up results
}

// Have a peek
matlist results

// Print this matrix nicely
outwrite results /// If only one name, matrix is assumed
  using "/path/to/file.xlsx" , replace
