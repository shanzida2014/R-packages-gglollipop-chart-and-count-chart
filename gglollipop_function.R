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
