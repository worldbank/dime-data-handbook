/*******************************************************************************
*      Demand for "Safe Spaces": Avoiding Harassment and Stigma                *
*      Construct analysis variables                                            *
********************************************************************************

  REQUIRES:  ${dt_final}/pooled_rider_audit_rides.dta
             ${dt_final}/pooled_rider_audit_exit.dta
             ${doc_rider}/pooled/codebooks/label-constructed-data.xlsx

  CREATES:   ${dt_final}/pooled_rider_audit_constructed_full.dta
             ${dt_final}/pooled_rider_audit_constructed.dta

  WRITEN BY: Luiza Andrade, Kate Vyborny, Astrid Zwager

  OVERVIEW:  1 Load and merge data
             2 Construct new variables
             3 Recode values
             4 Keep only variables used for analysis
             5 Save full data set
             6 Save paper sample

*******************************************************************************/
