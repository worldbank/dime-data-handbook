/*******************************************************************************
*    Demand for "Safe Spaces": Avoiding Harassment and Stigma		           *
*    MASTER DO-FILE                                                        *
********************************************************************************
  PART 0:  User inputs
  PART 1:  Prepare folder paths
  PART 2:  Load necessary packages
  PART 3:  Run selected code
********************************************************************************
    PART 0: USER INPUTS
*******************************************************************************/

  ieboilstart, v(14.0)  matsize(10000)
  `r(version)'

//  Set folder paths -----------------------------------------------------------

  if inlist(c(username), "Luiza") {
    global github    "C:\Users\Documents\GitHub\rio-safe-space\Replication Package"
    global onedrive  "C:\Users\OneDrive - WBG\RJ - Vagao Rosa"
  }

// Select sections to run ------------------------------------------------------

  local  packages     0 // Install user-written commands used in the project
  local  cleaning     0 // Run data cleaning
  global encrypted    0 // Start from identified data
  local  construction 0 // Re-create analysis indicators
  local  mainresults  0 // Re-create analysis outputs

* Section omitted - see full code on https://github.com/worldbank/rio-safe-space

********************************************************************************
*    PART 1:  Prepare folder paths
********************************************************************************

  * Confidential folders
  global encrypt        "${onedrive}/data/raw-identified"
  global encode         "${onedrive}/dofiles/ado"

  * Do files
  global do             "${github}/dofiles"
  global do_analysis    "${do}/analysis"
  global do_tables      "${do_analysis}/paper/tables"
  global do_graphs      "${do_analysis}/paper/graphs"

  * Data sets
  global data           "${github}/data"
  global dt_final       "${data}/final"
  global dt_raw         "${data}/raw"
  global dt_int         "${data}/intermediate"

  * Documentation
  global doc            "${github}/documentation"
  global doc_rider      "${doc}/rider-audits"
  global doc_platform   "${doc}/platform-survey"

  * Outputs
  global out_git        "${github}/outputs"
  global out_tables     "${out_git}/tables"
  global out_graphs     "${out_git}/graphs"

* Section omitted - see full code on https://github.com/worldbank/rio-safe-space

********************************************************************************
*   PART 3: Run selected code     						   *
********************************************************************************

  if `cleaning'     do "${do}/rider-audits/MASTER_rider_audits_data_prep.do"
  if `construction' {
    do "${do}/rider-audits/pooled/7_construct.do"
    do "${do}/rider-audits/pooled/8_reconstruct_p3_assignment.do"
  }
  if `mainresults'  do "${do_analysis}/paper/MASTER_paper_results.do"
