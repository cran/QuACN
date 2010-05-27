localClusteringCoeff <- function(g, deg=NULL){
  require("graph")
  # check if g is a graphNEL object
  if(class(g)[1]!="graphNEL"){
    stop("'g' must be a 'graphNEL' object")
  }
  if(is.null(deg)){ 
    deg <- graph::degree(g)
  }
  #lcc <- (2*length(edges(g)))/(deg*(deg-1))
  lcc <- igraph::transitivity(igraph.from.graphNEL(g), type='local') 
  names(lcc) <- nodes(g)
  lcc[is.na(lcc)] <- 0

  return(lcc)
}
