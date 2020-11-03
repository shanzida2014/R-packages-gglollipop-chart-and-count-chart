-- This file includes two new R packages which were created with R studio.
-- One is gglollipop chart and another is ggcountplot. 
-- The packages were created to give two functions to users. 
-- Two functions were taken from The R Graph Gallery (https://www.r-graph-gallery.com/)
-- The Bupa Liver Disorder data sets were taken from UCI Machine Learning repository (https://archive.ics.uci.edu/ml/datasets/liver+disorders)

# R-packages-ggcount-chart
###### Author:Shanzida Jahan Siddique 
###### Date :October 22,2018



## Correlation

ggcountplot plots help to examine how well correlated two variables are.

## Scatterplot

The most frequently used plot for data analysis is undoubtedly the scatterplot. Whenever you want to understand the nature of relationship between two variables, invariably the first choice is the scatterplot.
It can be drawn using geom_point(). Additionally, geom_smooth which draws a smoothing line (based on loess) by default, can be tweaked to draw the line of best fit by setting method='lm

JItter plot is another form ofscatter plot.But the problem with this plot is sometimes there are many overlapping points appearing as a single dot.

So how to handle this? There are few options. We can make a jitter plot with jitter_geom(). As the name suggests, the overlapping points are randomly jittered around its original position based on a threshold controlled by the width argument.

## Counts Chart

The second option to overcome the problem of data points overlap is to use what is called a counts chart. Whereever there is more points overlap, the size of the circle gets bigger.

## The Code

```
#' @name ggmygunction
#' @param x a vector of data
#' @param y another vector of data
#' @param countalpha modify color transparency
#' @example
#' ggmyfunction(iris,iris[,1],iris[,2])
#' @export
ggmyfunction<-function(data,x,y, countalpha=0.5) {
ggplot(data, aes(x,y)) + geom_count(alpha=countalpha)
# return(ggmyfunction)
}
```
## ggmyfunction  with example dataset iris

```{r message=FALSE,warning=FALSE}
library(ggcountplot)
ggmyfunction(iris,iris[,1],iris[,2])
```

## Actual Dataset (Bupa liver disorder)

```{r}
data("liver_disorder")
knitr::kable(liver_disorder)
```

## Graph on Liver Disorder dataset

```{r}
liv = liver_disorder
ggmyfunction(liv,x=liv$drinks,y=liv$alkphos)
```

## Summary

By using countchart we can overcome the problem associates with scatter plot.



# R-packages-gglollipop
###### Author:Shanzida Jahan Siddique 
###### Date:October 22,2018


## why lollipopchart
The lollipop chart is often claimed to be useful compared to a normal bar chart, if you are dealing with a large number of values and when the values are all high, such as in the 80-90% range (out of 100%). Then a large set of tall columns can be visually aggressive.

## The code:
```
#' customized lollipopchart function
#'
#' function takes a few argument and return a lollipopchart
#'
#' @name ggmyfunction_4
#' @param x a vector of data
#' @param y another vector of data
#' @param size indicate size
#' @param xend another vector of data
#' @param yend another vector of data
#' @example
#' ggmyfunction_4(iris,iris[,1],iris[,2])
#' @export
#'
ggmyfunction_4<-function(dat=data,x,y,size=size,xend,yend){theme_set(theme_bw())
ggplot(dat, aes(x=dat[[x]], y=dat[[y]])) +geom_point(size=3) +geom_segment(aes(x=x,xend=x,y=y,yend=y))
  #return(ggmyfunction_4)
}

```
##Load library
```{r message=FALSE,Warning=FALSE}
library(gglollipop)
```

## Actual Data
```{r}
data("bupa_liverdisorder")
knitr::kable(bupa_liverdisorder)
```


## Plot with Actual Data

```{r}
liv3=bupa_liverdisorder
ggmyfunction_4(liv3,x=liv3$drinks,y=liv3$alkphos,size =3,x=drinks,xend=drinks,y=alkphos,y=alkphos)
```

## Summary
we can use lollipop chart when we have large data.


