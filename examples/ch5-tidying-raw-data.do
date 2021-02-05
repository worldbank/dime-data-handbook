/*******************************************************************************
    Load data set and keep ride variables
*******************************************************************************/

  use "${dt_raw}/baseline_raw_deidentified.dta", clear

  * Keep  only entries that refer to ride task
  keep if inlist(spectranslated, "Regular Car", "Women Only Car")

  * Sort observations
  isid user_uuid session, sort

  * Keep only questions answered during this task
  * (all others will be missing for these observations)
  dropmiss, force
