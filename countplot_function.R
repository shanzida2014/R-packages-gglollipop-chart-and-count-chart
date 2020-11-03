#' customized countplot function
#'
#' function takes a few arguments and return a countplot
#'
#' @name ggmygunction
#' @param x a vector of data
#' @param y another vector of data
#' @param countalpha modify colour transparency
#' @example
#' ggmyfunction(iris,iris[,1],iris[,2])
#' @export
#'
ggmyfunction<-function(data,x,y, countalpha=0.5) {
ggplot(data, aes(x,y)) + geom_count(alpha=countalpha)
# return(ggmyfunction)
}
