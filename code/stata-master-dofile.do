/*******************************************************************************
*                           TEMPLATE MASTER DO-FILE                            *
********************************************************************************
*                                                                              *
*   PURPOSE:     Reproduce all data work, map inputs and outputs,              *
*                facilitate collaboration                                      *
*                                                                              *
*   OUTLINE:     PART 1:  Set standard settings and install packages           *
*                PART 2:  Prepare folder paths and define programs             *
*                PART 3:  Run do files                                         *
*                                                                              *
********************************************************************************
             PART 1:  Set standard settings and install packages
********************************************************************************/

    if (0) {
        ssc install ietoolkit,  replace
    }

    ieboilstart, v(15.1)
    `r(version)'

/*******************************************************************************
              PART 2:  Prepare folder paths and define programs
*******************************************************************************/

    * Research Assistant folder paths
    if "`c(username)'" == "ResearchAssistant" {
        global github      "C:/Users/RA/Documents/GitHub/d4di/DataWork"
        global dropbox     "C:/Users/RA/Dropbox/d4di/DataWork"
        global encrypted   "A:/DataWork/EncryptedData"  // Always mount to A disk!
    }


   * Baseline folder globals
   global bl_encrypt       "${encrypted}/Round Baseline Encrypted"
   global bl_dt            "${dropbox}/Baseline/DataSets"
   global bl_doc           "${dropbox}/Baseline/Documentation"
   global bl_do            "${github}/Baseline/Dofiles"
   global bl_out           "${github}/Baseline/Output"

/*******************************************************************************
                            PART 3: Run do files
*******************************************************************************/

/*------------------------------------------------------------------------------
  PART 3.1:  De-identify baseline data
--------------------------------------------------------------------------------
 REQUIRES:   ${bl_encrypt}/Raw Identified Data/D4DI_baseline_raw_identified.dta
 CREATES:    ${bl_dt}/Raw Deidentified/D4DI_baseline_raw_deidentified.dta
 IDS VAR:    hhid
------------------------------------------------------------------------------- */
    do "${bl_do}/Cleaning/deidentify.do"

/*------------------------------------------------------------------------------
  PART 3.2:  Clean baseline data
--------------------------------------------------------------------------------
  REQUIRES:   ${bl_dt}/Raw Deidentified/D4DI_baseline_raw_deidentified.dta
  CREATES:    ${bl_dt}/Final/D4DI_baseline_clean.dta
              ${bl_doc}/Codebook baseline.xlsx
  IDS VAR:    hhid
----------------------------------------------------------------------------- */
    do "${bl_do}/Cleaning/cleaning.do"

/*-----------------------------------------------------------------------------
 PART 3.3:  Construct income indicators
--------------------------------------------------------------------------------
  REQUIRES:   ${bl_dt}/Final/D4DI_baseline_clean.dta
  CREATES:    ${bl_out}/Raw/D4DI_baseline_income_distribution.png
              ${bl_dt}/Intermediate/D4DI_baseline_constructed_income.dta
  IDS VAR:    hhid
----------------------------------------------------------------------------- */
    do "${bl_do}/Construct/construct_income.do"
