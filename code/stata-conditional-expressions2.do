   local samplesize = _N // Get the number of observations in dataset

* These example are GOOD:
    if (`samplesize' <= 100) {
    }
    else {
    }

* This example is BAD:
    if (`samplesize' <= 100) {
    }
    if (`samplesize' > 100) {
    }
