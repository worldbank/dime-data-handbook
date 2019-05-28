* These examples are GOOD:
    replace gender_string = "Female" if (gender == 1)
    replace gender_string = "Male"   if (gender != 1)

* These examples works but are BAD:
    replace gender_string = "Female" if gender == 1
    replace gender_string = "Male"   if (gender ~= 1)
