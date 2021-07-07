/*******************************************************************************
*   Merge ride tasks                                                           *
*******************************************************************************/

    use  "${dt_int}/compliance_pilot_ci.dta", clear
    merge 1:1  session  using "${dt_int}/compliance_pilot_ride.dta", assert(3) nogen
    merge 1:1  session  using "${dt_int}/compliance_pilot_co.dta"  , assert(3) nogen
