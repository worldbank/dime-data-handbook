* There was a problem with the line option for one of the stations.
* This fixes it:
* --------------------------------------------------------------------

  merge 1:1 obs_uuid                                               ///
    using "${doc_rider}/compliance-pilot/station_corrections.dta", ///
    update replace                                                 ///
    keepusing(user_station)                                        ///
    assert(master match_update)                                    ///
    nogen
