   local sampleSize = _N // Get the number of observations in dataset

* These example are GOOD
    if (`sampleSize' <= 100) {
    }
    else {
    }

* This example is BAD
    if (`sampleSize' <= 100) {
    }
    if (`sampleSize' > 100) {
    }
