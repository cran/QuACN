globalClusteringCoeff <- function(g, loc=NULL){
  require("graph")
  # check if g is a graphNEL object
  if(class(g)[1]!="graphNEL"){
    stop("'g' must be a 'graphNEL' object")
  }
  if(is.null(loc)){ 
    loc <- localClusteringCoeff(g)
  }
  #lcc <- (2*length(edges(g)))/(deg*(deg-1))
  return(sum(loc/numNodes(g)))
}
