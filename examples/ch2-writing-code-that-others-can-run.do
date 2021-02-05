/*******************************************************************************
* 			Demand for "Safe Spaces": Avoiding Harassment and Stigma		   *
*   					  	   MASTER DO-FILE							   	   *
********************************************************************************
					PART 0:  User inputs
					PART 1:  Prepare folder paths
					PART 2:  Load necessary packages
					PART 3:  Run selected code
********************************************************************************
	PART 0: USER INPUTS															
********************************************************************************/

	ieboilstart, v(14.0)  matsize(10000)
	`r(version)'

//	Set folder paths -----------------------------------------------------------

	if inlist(c(username), "Luiza") {
		global github		"C:\Users\Documents\GitHub\rio-safe-space\Replication Package"
		global onedrive		"C:\Users\OneDrive - WBG\RJ - Vagao Rosa"
	}
	
// Select sections to run ------------------------------------------------------

	local  packages			0 // Install user-written commands used in the project
	local  cleaning			0 // Run data cleaning
	global encrypted		0 // Start from identified data
	local  construction		0 // Re-create analysis indicators
	local  mainresults		0 // Re-create analysis outputs

// Set control variables -------------------------------------------------------
{
	global star					star	(* .1 ** .05 *** .01) 
	global demographics 		d_lowed d_young d_single d_employed d_highses
	global interactionvars		pink_highcompliance mixed_highcompliance ///
								pink_lowcompliance mixed_lowcompliance
	global interactionvars_oc	pos_highcompliance zero_highcompliance ///
								pos_lowcompliance  zero_lowcompliance
	global wellbeing			CO_concern CO_feel_level CO_happy CO_sad ///
								CO_tense CO_relaxed CO_frustrated CO_satisfied ///
								CO_feel_compare
	
	* Balance variables (Table 1)
	global balancevars1			d_employed age_year educ_year ride_frequency ///
								home_rate_allcrime home_rate_violent home_rate_theft ///
								grope_pink_cont grope_mixed_cont ///
								comments_pink_cont comments_mixed_cont
	global balancevars2			usual_car_cont nocomp_30_cont nocomp_65_cont ///
								fullcomp_30_cont fullcomp_65_cont

	* Other adjustment margins (Table A7)
	global adjustind 			CI_wait_time_min d_against_traffic CO_switch ///
								RI_spot CI_time_AM CI_time_PM
}

// Plot settings ---------------------------------------------------------------
{
	set scheme s2color
	
	global grlabsize 		4
	global col_mixedcar		`" "18 148 144" "' // teal
	global col_womencar		purple //`" "102 51 153" "'
	global col_aux_bold		gs6
	global col_aux_light	gs12
	global col_highlight	cranberry
	global col_box			gs15	
	global paper_plotops	
	global plot_options		graphregion(color(white)) ///
							bgcolor(white) ///
							ylab(, glcolor(${col_box})) ///
							xlab(, noticks)
	global lab_womencar		Reserved space
	global lab_mixedcar		Public space
}
/*******************************************************************************
					PART 1:  Prepare folder paths
*******************************************************************************/

	* Confidential folders
	global  encrypt				"${onedrive}/data/raw-identified"
	global  encode				"${onedrive}/dofiles/ado"

	* Do files
	global	do					"${github}/dofiles"
	global	do_analysis			"${do}/analysis"
	global 	do_tables			"${do_analysis}/paper/tables"
	global 	do_graphs			"${do_analysis}/paper/graphs"

	* Data sets
	global	data				"${github}/data"
	global	dt_final			"${data}/final"
	global 	dt_raw				"${data}/raw"
	global	dt_int				"${data}/intermediate"

	* Documentation
	global	doc					"${github}/documentation"
	global 	doc_rider			"${doc}/rider-audits"
	global 	doc_platform		"${doc}/platform-survey"
	
	* Outputs
	global	out_git				"${github}/outputs"
	global 	out_tables			"${out_git}/tables"
	global 	out_graphs			"${out_git}/graphs"

/*******************************************************************************
					PART 2:  Load necessary packages
********************************************************************************/
{
	* Load custom commands
	local ados : dir "${do}/ado" files "*.ado"

	foreach ado in `ados' {
		do 		"${do}/ado/`ado'"
	}

	* Install packages
	if `packages' {
		foreach package in ietoolkit iefieldkit unique estout coefplot {
			capture which `package'
            if _rc == 111	ssc install `package'
		}
	}
}
********************************************************************************
*					   PART 3: Run selected code     						   *
********************************************************************************

	if `cleaning' 		do "${do}/rider-audits/MASTER_rider_audits_data_prep.do"
	if `construction' {
		do "${do}/rider-audits/pooled/7_construct.do" 	
		do "${do}/rider-audits/pooled/8_reconstruct_p3_assignment.do"
	}
	if `mainresults' 	do "${do_analysis}/paper/MASTER_paper_results.do"
  
/*******************************************************************************
	Congratulations, you've made it to the end of the do files!
*******************************************************************************/