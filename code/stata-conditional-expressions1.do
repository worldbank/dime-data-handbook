GOOD:

    replace gender_string = "Woman" if (gender == 1)
    replace gender_string = "Man"   if ((gender != 1) & !missing(gender))

BAD:

    replace gender_string = "Woman" if gender == 1
    replace gender_string = "Man"   if (gender ~= 1)
