normalizedEdgeComplexity <- function(g,ita=NULL){
  require("graph")
  if(class(g)[1]!="graphNEL"){
    stop("'g' must be a 'graphNEL' object")
  }
  if(is.null(ita)){
    ita <-  totalAdjacency(g)
    }
  return(ita/(numNodes(g)^2))
}
