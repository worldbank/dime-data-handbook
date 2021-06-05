/*******************************************************************************
*   Merge demographic survey                                                   *
*******************************************************************************/

    merge m:1  user_uuid  using "${dt_int}/compliance_pilot_demographic.dta"

    * 3 users have rides data, but no demo
    unique user_uuid if _merge == 1
    assert r(unique) == 3

    * 49 users have demo data, but no rides: these are dropped
    unique user_uuid if _merge == 2
    assert r(unique) == 49
    drop if _merge == 2

    * 185 users have ride & demo data
    unique user_uuid if _merge == 3
    assert r(unique) == 185
