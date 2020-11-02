# R-packages-gglollipop-chart-and-count-chart

title: ggcountplot
author: shanzida Jahan Siddique
date: October 22, 2018
output: html_document

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Correlation

ggcountplot plots help to examine how well correlated two variables are.


## Scatterplot

The most frequently used plot for data analysis is undoubtedly the scatterplot. Whenever you want to understand the nature of relationship between two variables, invariably the first choice is the scatterplot.
It can be drawn using geom_point(). Additionally, geom_smooth which draws a smoothing line (based on loess) by default, can be tweaked to draw the line of best fit by setting method='lm

JItter plot is another form ofscatter plot.But the problem with this plot is sometimes there are many overlapping points appearing as a single dot.

So 
how to handle this? There are few options. We can make a jitter plot with jitter_geom(). As the name suggests, the overlapping points are randomly jittered around its original position based on a threshold controlled by the width argument.

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

