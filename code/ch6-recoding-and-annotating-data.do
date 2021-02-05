	
	* Encode crowd rate
	encode 	ride_crowd_rate, gen(RI_crowd_rate)
	
	* Reconcile different names for compliance variable
	replace ride_men_present = approx_percent_men if missing(ride_men_present)

	* Encode compliance variable
	encode 	ride_men_present, gen(RI_men_present) 
	
	* Did you look in the cars before you made your choice?
	* Turn into dummy from string
	foreach var in sv_choice_pink sv_choice_regular {
		gen `var'_ = (`var' == "Sim") if (!missing(`var') & `var' != "NA")
	}	
	