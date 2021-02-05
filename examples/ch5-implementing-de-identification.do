********************************************************************************
*							PART 4: Save data
********************************************************************************
			
	* Identified version
	isid id, sort
	compress
	
	save 			 "${encrypt}/Platform survey/platform_survey_raw.dta", replace
	iemetasave using "${dt_raw}/platform_survey_raw.txt", replace short
	
	* De-identify: remove confidential variables only
	iecodebook apply using "${doc_platform}/codebooks/raw_deidentify.xlsx", drop

	isid id, sort
	
	save 			 "${dt_raw}/platform_survey_raw_deidentified.dta", replace
	iemetasave using "${dt_raw}/platform_survey_raw_deidentified.txt", replace
		
***************************************************************** End of do-file