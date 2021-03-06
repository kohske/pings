pings
=====

pings for all %.% user 
## Installation
You need to install dependents before installing pingr.

```r
install.packages("devtools")
install.packages("dplyr")

library(devtools)
install_github("rasmusab/pingr")

install_github("dichika/pings")
```

Note: Windows users need [Rtools](http://www.murdoch-sutherland.com/Rtools/) and [devtools](http://CRAN.R-project.org/package=devtools) to install this way.

## Example
```r
library(pings)
pings(iris %.%
       group_by(Species) %.%
       summarise(count=n()) %.%
        tally()
      )
```

## Usage
pings(x, interval = 0.25, countp = 2, endp = 8)

## Arguments

### x
dplyr code

### interval
Time interval between sound.

### countp
Count "%.%" sound. You can choose 1-9.

### endp
Finish sound. You can choose 1-9.
