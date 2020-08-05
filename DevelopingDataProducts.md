Developing Data Products - Shiny Project
========================================================
author: Chris Harrity
date: 8/4/20
autosize: true

The Future: Overcoming Mild Inconvenience
========================================================

It's a bit cumbersome to calculate significance tests for a bunch of proportions in R. Turn your proportions into a list of numbers, turn it into a 2x2 matrix, and *then* pass it to chisq.test or fisher.test. 

Friends, we can do better.

Behold!
========================================================




```
Warning message:
package 'knitr' was built under R version 3.5.3 


processing file: DevelopingDataProducts.Rpres
Quitting from lines 18-41 (DevelopingDataProducts.Rpres) 
Error: package or namespace load failed for 'shiny' in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]):
 namespace 'htmltools' 0.4.0 is being loaded, but >= 0.4.0.9003 is required
In addition: Warning message:
package 'shiny' was built under R version 4.1.0 
Execution halted
```
