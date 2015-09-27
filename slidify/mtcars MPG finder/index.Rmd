---
title       : MPG Finder
subtitle    : Use weight and cylinders to find mpgs
author      : David Blane
job         : Professional Gamer
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Intro

Our awesome new app will calculate the MPGs of a car given the weight and number of cylinders.

Example. 2.9 (lb/1000) and 6 cylinders is 20.57

--- 

## How it works

We use a selection radio buttons to choose the cylinders and a number text input for the weight. When you choose a number that we have data for, it produces a result on the right column.

--- 

## The data we use

We use a data set called mtcars which is available as part of the rstudio core. 

Here is the summary: "The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models)."

## r expression

Here is a sample of the r code used.

mpg <- function(x,y) {        
        data <- mtcars      
        tmp <- data[data$cyl == x   , ]
        tmp <- data[data$cyl == x & data$wt <= y, ]
        out <- mean(tmp$mpg)
        return (out)
}

---
## Conclusion

This app is so cool it will save thehuman race from extinction without trying. 

Cheers yourself.


