/*******************************************************************************
    Clean up and save
*******************************************************************************/

    iecodebook apply using "${doc_rider}/baseline-study/codebooks/ride.xlsx", drop
    order  user_uuid session RI_pa - RI_police_present CI_top_car RI_look_pink ///
           RI_look_mixed RI_crowd_rate RI_men_present
  
    * Optimize memory and save data
    compress
    save "${dt_int}/baseline_ride.dta", replace
