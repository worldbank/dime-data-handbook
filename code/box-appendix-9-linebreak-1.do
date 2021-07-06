    graph hbar invil      /// Proportion in village
         if (priv == 1)   /// Private facilities only
       , over(statename, sort(1) descending)    /// Order states by values
         blabel(bar, format(%9.0f))             /// Label the bars
         ylab(0 "0%" 25 "25%" 50 "50%" 75 "75%" 100 "100%") ///
         ytit("Share of private primary care visits made in own village")
