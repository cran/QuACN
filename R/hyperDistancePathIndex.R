hyperDistancePathIndex <- function(g, dist=NULL, wien=NULL){
  require("combinat")
  require("graph")
  if(class(g)[1]!="graphNEL"){
    stop("'g' must be a 'graphNEL' object")
  }
  if(is.null(dist)){
    dist <- distanceMatrix(g)
  }
  if(is.null(wien)){
    wien <- wiener(g)
  }
  wien + sum(nCm(dist,2))/2
}
