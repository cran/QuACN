zagreb1 <- function(g,deg=NULL){
  require("graph")
  if(class(g)[1]!="graphNEL"){
    stop("'g' must be a 'graphNEL' object")
  }
  if(is.null(deg)){
    deg <- graph::degree(g)
  }
  sum(deg)
}
