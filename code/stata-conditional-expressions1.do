GOOD:

    replace gender_string = "Female" if (gender == 1)
    replace gender_string = "Male"   if ((gender != 1) & !missing(gender))

BAD:

    replace gender_string = "Female" if gender == 1
    replace gender_string = "Male"   if (gender ~= 1)
