complexityIndexB <- function(g,dist=NULL,deg=NULL){
  require("graph")
  if(class(g)[1]!="graphNEL"){
    stop("'g' must be a 'graphNEL' object")
  }
  if(is.null(dist)){
    dist <- distanceMatrix(g)
  }
  if(is.null(deg)){
    deg <- graph::degree(g)
  }
  return(sum(deg/rowSums(dist)))
}
