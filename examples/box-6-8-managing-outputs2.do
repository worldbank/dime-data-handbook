* Appendix tables ==================================================================

    ********************************************************************************
    *   Table A1: Sample size description                                          *
    *------------------------------------------------------------------------------*
    *   REQUIRES: ${dt_final}/pooled_rider_audit_constructed.dta                   *
    *             ${dt_final}/platform_survey_constructed.dta                      *
    *   CREATES:  ${out_tables}/sample_table.tex                                   *
    ********************************************************************************

    do "${do_tables}/sample_table.do"

    ********************************************************************************
    *   Table A3: Correlation between platform observations data and rider reports *
    *------------------------------------------------------------------------------*
    *   REQUIRES: ${dt_final}/pooled_rider_audit_constructed.dta                   *
    *   CREATES:  ${out_tables}/mappingridercorr.tex                               *
    ********************************************************************************

    do "${do_tables}/mappingridercorr.do"

    ********************************************************************************
    *   Table A4: Response to platform survey and IAT                              *
    *------------------------------------------------------------------------------*
    *   REQUIRES: ${dt_final}/platform_survey_constructed.dta                      *
    *   CREATES:  ${out_tables}/response.tex                                       *
    ********************************************************************************

    do "${do_tables}/response.do"
