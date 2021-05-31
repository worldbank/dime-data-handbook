GOOD:

    if (`sampleSize' <= 100) {
        * do something
    }
    else {
        * do something else
    }

BAD:

    if (`sampleSize' <= 100) {
        * do something
    }
    if (`sampleSize' > 100) {
        * do something else
    }
