// Import to Stata format ======================================================

	import delimited using "${encrypt}/Baseline/07112016/Contributions 07112016", ///
		delim (",") ///
		bindquotes(strict) ///
		varnames(1) ///
		clear  
	
	* There are two duplicated values for obs_uid, each with two submissions.
	* All four entries are demographic survey from the same user, who seems to 
	* have submitted the data twice, each time creating two entries. 
	* Possibly a connectivity issue
	ieduplicates obs_uid using "${doc_rider}/baseline-study/raw-duplicates.xlsx", ///
		uniquevars(v1) ///
		keepvars(created submitted started)

	* Save in Stata format
	isid user_uuid obs_uid, sort
	
	compress
	dropmiss, force
			
	save 			 "${encrypt}/baseline_raw.dta", replace
	iemetasave using "${dt_raw}/baseline_raw.txt",  replace short