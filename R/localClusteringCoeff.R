localClusteringCoeff <- function(g, deg=NULL){
  require("graph")
  # check if g is a graphNEL object
  if(class(g)[1]!="graphNEL"){
    stop("'g' must be a 'graphNEL' object")
  }
  if(is.null(deg)){ 
    deg <- graph::degree(g)
  }
  lcc <- (2*numEdges(g))/(deg*(deg-1))
  names(lcc) <- nodes(g)
  return(lcc)
}
