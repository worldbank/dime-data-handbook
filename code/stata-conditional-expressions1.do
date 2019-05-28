* These examples are GOOD
    replace gender_string = "Female" if (gender == 1)
    replace gender_string = "Male"   if (gender != 1)

* These examples are BAD
    replace gender_string = "Female" if gender == 1
    replace gender_string = "Male"   if (gender ~= 1)
