********************************************************************************
*   Set control variables
********************************************************************************/

  global star               star (* .1 ** .05 *** .01)
  global demographics       d_lowed d_young d_single d_employed d_highses
  global interactionvars    pink_highcompliance mixed_highcompliance         ///
                            pink_lowcompliance mixed_lowcompliance
  global interactionvars_oc pos_highcompliance zero_highcompliance           ///
                            pos_lowcompliance zero_lowcompliance
  global wellbeing          CO_concern CO_feel_level CO_happy CO_sad         ///
                            CO_tense CO_relaxed CO_frustrated CO_satisfied   ///
                            CO_feel_compare

  * Balance variables (Table 1)
  global balancevars1       d_employed age_year educ_year ride_frequency     ///
                            home_rate_allcrime home_rate_violent             ///
                            home_rate_theft grope_pink_cont grope_mixed_cont ///
                            comments_pink_cont comments_mixed_cont
  global balancevars2       usual_car_cont nocomp_30_cont nocomp_65_cont     ///
                            fullcomp_30_cont fullcomp_65_cont

  * Other adjustment margins (Table A7)
  global adjustind          CI_wait_time_min d_against_traffic CO_switch     ///
                            RI_spot CI_time_AM CI_time_PM
