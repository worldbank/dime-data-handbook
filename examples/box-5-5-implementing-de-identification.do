/*******************************************************************************
    PART 4: Save data
*******************************************************************************/

  * Identified version - verify unique identifier, optimize storage, and save data
  isid id, sort
  compress
  save             "${encrypt}/Platform survey/platform_survey_raw.dta", replace
  iemetasave using "${dt_raw}/platform_survey_raw.txt", replace short

  * De-identify: remove confidential variables only
  iecodebook apply using "${doc_platform}/codebooks/raw_deidentify.xlsx", drop

  * De-identified version - verify unique identifier, optimize storage, and save data
  isid id, sort
  compress
  save             "${dt_raw}/platform_survey_raw_deidentified.dta", replace
  iemetasave using "${dt_raw}/platform_survey_raw_deidentified.txt", replace