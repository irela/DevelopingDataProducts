---
title       : Project app
subtitle    : 
author      : 
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Nottingham Temperature Application

Explore monthly temperature in Nottingham


--- .class #slide1 

## Application

 This app presents a histogram of monthly average temperatures in Nottingham
 Users can choose temperature with a slider
 Calculates most typical month for a temperature
 Also shows most unlikely month for the temperature
 Chosen temperature and typical month shown on histogram image

--- .class #slide2 

## Data
 The app is based on Nottingham monthly average temperature data
 The temperatures are monthly averages from 1920-1939
 The data is provided by R data packages

--- .class #slide3

## Calculations

The app finds the most likely month for a given temperature in the following way (in this example temp = 38.5 F)

```r
library(UsingR)
data(nottem)
temperatures <- tapply(nottem, list(year = floor(time(nottem)), month = cycle(nottem)), c)
temp <- 38.5
 for (i in 1:12) {
        mse[i] <- mean((temperatures[,i]- temp)^2)
 }
which.min(mse)
```

```
## [1] 1
```

--- .class #slide4

## Further development

 Provide different locations
 Longer time series data
 Compare decades to another

--- .class #slide5
